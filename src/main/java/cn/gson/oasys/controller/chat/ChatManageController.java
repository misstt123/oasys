package cn.gson.oasys.controller.chat;


import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;

import cn.gson.oasys.common.formValid.BindingResultVOUtil;
import cn.gson.oasys.common.formValid.MapToList;
import cn.gson.oasys.common.formValid.ResultEnum;
import cn.gson.oasys.common.formValid.ResultVO;
import cn.gson.oasys.model.dao.discuss.CommentDao;
import cn.gson.oasys.model.dao.discuss.DiscussDao;
import cn.gson.oasys.model.dao.discuss.ReplyDao;
import cn.gson.oasys.model.dao.discuss.VoteTitleListDao;
import cn.gson.oasys.model.dao.discuss.VoteTitlesUserDao;
import cn.gson.oasys.model.dao.system.TypeDao;
import cn.gson.oasys.model.dao.user.UserDao;
import cn.gson.oasys.model.entity.discuss.Comment;
import cn.gson.oasys.model.entity.discuss.Discuss;
import cn.gson.oasys.model.entity.discuss.Reply;
import cn.gson.oasys.model.entity.discuss.VoteList;
import cn.gson.oasys.model.entity.discuss.VoteTitles;
import cn.gson.oasys.model.entity.system.SystemTypeList;
import cn.gson.oasys.model.entity.user.User;
import cn.gson.oasys.services.discuss.DiscussService;
import cn.gson.oasys.services.discuss.ReplyService;
import cn.gson.oasys.services.discuss.VoteService;

@Controller
@RequestMapping("/")
public class ChatManageController {
	
	@Autowired
	DiscussDao discussDao;
	@Autowired
	DiscussService disService;
	@Autowired
	UserDao uDao;
	@Autowired
	TypeDao typeDao;
	@Autowired
	ReplyDao replyDao;
	@Autowired
	ReplyService replyService;
	@Autowired
	CommentDao commentDao;
	@Autowired
	VoteService voteService;
	@Autowired
	VoteTitleListDao voteTitlesDao;
	@Autowired
	VoteTitlesUserDao voteUserDao;
	

	/**
	 * 讨论区超级管理员管理
	 * @return
	 */
	@RequestMapping("adminmanage")
	public String adminManage(@RequestParam(value="page",defaultValue="0") int page,HttpSession session,
			@SessionAttribute("userId") Long userId,Model model){
		Page<Discuss> page2=disService.paging(page, null, 1L,null,null,null);
		setPagintMess(model, page2,"/chattable","manage","超级管理员");
		session.removeAttribute("returnUrl");
		session.setAttribute("returnUrl", "adminmanage");
		return "chat/chatmanage";
	}
	
	/**
	 * 讨论区管理
	 * @return
	 */
	@RequestMapping("chatmanage")
	public String chatManage(@RequestParam(value="page",defaultValue="0") int page,
			@SessionAttribute("userId") Long userId,Model model,HttpSession session){
		Page<Discuss> page2=disService.pagingMe(page, null, userId,null,null,null);
		setPagintMess(model, page2,"/metable","manage","我的管理");
		model.addAttribute("me", "me");
		session.removeAttribute("returnUrl");
		session.setAttribute("returnUrl", "chatmanage");
		return "chat/chatmanage";
	}
	/**
	 * 讨论区列表
	 * @param page
	 * @param model
	 * @return
	 */
	@RequestMapping("chatlist")
	public String chatList(@RequestParam(value="page",defaultValue="0") int page,Model model,HttpSession session){
		Page<Discuss> page2=disService.paging(page, null, null,null,null,null);
		setPagintMess(model, page2,"/seetable",null,"讨论列表");
		session.removeAttribute("returnUrl");
		session.setAttribute("returnUrl", "chatlist");
		return "chat/chatmanage";
	}
	
	/**
	 * 删除讨论区
	 * 级联删除回复表和评论表中的相关信息
	 */
	@RequestMapping("deletediscuss")
	public String deletediscuss(HttpServletRequest req,@SessionAttribute("userId") Long userId){
		String name=req.getParameter("name");
		Long discussId=Long.parseLong(req.getParameter("discussId"));
		Integer page=Integer.parseInt(req.getParameter("page"));
		System.out.println("第几页："+page);
		Discuss discuss=discussDao.findOne(discussId);
		User user=uDao.findOne(userId);
		if(user.getSuperman()){
		}else{
			if(discuss.getUser().getUserId()==user.getUserId()){
			}else{
				System.out.println("权限不匹配，不能删除");
				return "redirect:/notlimit";
			}
		}
		System.out.println("删除一个讨论区");
		disService.deleteDiscuss(discussId);
		if("超级管理员".equals(name)){
			return "forward:/adminmanage?page="+page;
		}else if("我的管理".equals(name)){
			return "forward:/chatmanage?page="+page;
		}else if("讨论列表".equals(name)){
			return "forward:/chatlist?page="+page;
		}else{
		}
		return "";
	}

	private void setPagintMess(Model model, Page<Discuss> page2,String url,String manage,String name) {
		model.addAttribute("list",disService.packaging(page2.getContent()));
		model.addAttribute("page", page2);
		model.addAttribute("url", url);
		model.addAttribute("name", name);
		if(!StringUtils.isEmpty(manage)){
			model.addAttribute("manage", "manage");
		}
	}
	/**
	 * 超级管理员管理页面的controller，分页处理
	 * @return
	 */
	@RequestMapping("chattable")
	public String chatTable(@RequestParam(value="page",defaultValue="0") int page,
			@RequestParam(value="baseKey",required=false) String baseKey,
			@RequestParam(value="type",required=false) String type,
			@RequestParam(value="time",required=false) String time,
			@RequestParam(value="visitnum",required=false) String visitnum,
			@RequestParam(value="icon",required=false) String icon,
			@SessionAttribute("userId") Long userId,Model model){
		setSomething(baseKey, type, time, visitnum,  icon, model);
		Page<Discuss> page2=disService.paging(page, baseKey, 1L,type,time,visitnum);
		setPagintMess(model, page2,"/chattable","manage","超级管理员");
		return "chat/chattable";
	}
	
	/**
	 * 自己管理页面的controller，分页处理
	 * @return
	 */
	@RequestMapping("metable")
	public String meTable(@RequestParam(value="page",defaultValue="0") int page,
			@RequestParam(value="baseKey",required=false) String baseKey,
			@RequestParam(value="type",required=false) String type,
			@RequestParam(value="time",required=false) String time,
			@RequestParam(value="visitnum",required=false) String visitnum,
			@RequestParam(value="icon",required=false) String icon,
			@SessionAttribute("userId") Long userId,Model model){
		setSomething(baseKey, type, time, visitnum,  icon, model);
		Page<Discuss> page2=disService.pagingMe(page, baseKey, userId,type,time,visitnum);
		setPagintMess(model, page2,"/metable","manage","我的管理");
		return "chat/chattable";
	}
	
	/**
	 * 查看列表页面的controller，分页处理
	 * @return
	 */
	@RequestMapping("seetable")
	public String seeTable(@RequestParam(value="page",defaultValue="0") int page,
			@RequestParam(value="baseKey",required=false) String baseKey,
			@RequestParam(value="type",required=false) String type,
			@RequestParam(value="time",required=false) String time,
			@RequestParam(value="visitnum",required=false) String visitnum,
			@RequestParam(value="icon",required=false) String icon,
			@SessionAttribute("userId") Long userId,Model model){
		setSomething(baseKey, type, time, visitnum,  icon, model);
		//传过去的userid为null；
		Page<Discuss> page2=disService.paging(page, baseKey, null,type,time,visitnum);
		setPagintMess(model, page2,"/seetable",null,"讨论列表");
		return "chat/chattable";
	}
	
	//专门使用一个controller来转发到查看界面，在这个controller中加访问数加1，这样就不会再刷新当前界面使得访问数+1
	@RequestMapping("seediscuss")
	public String seeDiscuss(@RequestParam(value="id") Long id,@RequestParam(value="pageNumber") Integer pageNumber,HttpSession session){
		disService.addOneDiscuss(id);
		session.removeAttribute("id");
		session.setAttribute("id", id);
		session.setAttribute("pageNumber", pageNumber);
		return "redirect:/replymanage";
	}
	
	/**
	 * 查看讨论
	 * @return将要操作在界面有没有可✘掉的图标，需要有管理员权限；
	 */
	@RequestMapping("replymanage")
	public String replyManage(Model model,HttpSession session,
			@RequestParam(value="page",defaultValue="0") int page,
			@RequestParam(value="size",defaultValue="5") int size,
			@SessionAttribute("userId") Long userId){
		Long id=Long.parseLong(session.getAttribute("id")+"");
		User user=uDao.findOne(userId);
		Discuss discuss=discussDao.findOne(id);
		//用来处理vote相关的数据
		voteService.voteServiceHandle(model, user, discuss);
		if(user.getSuperman()){
			model.addAttribute("manage", "具有管理权限");
		}else{
			if(user.getUserId()==discuss.getUser().getUserId()){
				model.addAttribute("manage", "具有管理权限");
			}
		}
		disService.setDiscussMess(model, id,userId,page,size);
		return "chat/replaymanage";
	}

	
	/**
	 * 编写讨论区
	 * @param req
	 * @return
	 */
	@RequestMapping("writechat")
	public String writeChat(HttpServletRequest req,@SessionAttribute(value="userId")Long userId,Model model){
		HttpSession session=req.getSession();
		session.removeAttribute("id");
		if(!StringUtils.isEmpty(req.getParameter("id"))){
			//修改界面的显示
			Long disId=Long.parseLong(req.getParameter("id"));
			Discuss discuss=discussDao.findOne(disId);
			//回填投票的信息
			if(!Objects.isNull(discuss.getVoteList())){
				model.addAttribute("voteList", discuss.getVoteList());
				List<VoteTitles> voteTitles=voteTitlesDao.findByVoteList(discuss.getVoteList());
				model.addAttribute("voteTitles", voteTitles);
			}
			//回填投票标题的信息
			session.setAttribute("id", disId);
			model.addAttribute("discuss", discuss);
			model.addAttribute("typeName", typeDao.findOne(discuss.getTypeId()).getTypeName());
		}
		if(!StringUtils.isEmpty(req.getAttribute("success"))){
			model.addAttribute("success", "成功了");
		}
		User user=uDao.findOne(userId);
		List<SystemTypeList> typeList=typeDao.findByTypeModel("chat");
		model.addAttribute("typeList", typeList);
		model.addAttribute("user", user);
		return "chat/writechat";
	}
	
	/**
	 * 新增+修改
	 */
	@RequestMapping("adddiscuss")
	public String addDiscuss(HttpServletRequest req, @Valid Discuss menu,VoteList voteList,BindingResult br){
		
		HttpSession session=req.getSession();
		Long userId=Long.parseLong(session.getAttribute("userId")+"");
		User user=uDao.findOne(userId);
		System.out.println(menu);
		ResultVO res = BindingResultVOUtil.hasErrors(br);
		// 校验失败
		if (!ResultEnum.SUCCESS.getCode().equals(res.getCode())) {
			System.out.println("输入信息有误！");
		}else{
			//修改处理
			if(!StringUtils.isEmpty(session.getAttribute("id"))){
				Long disId=Long.parseLong(session.getAttribute("id")+"");
				Discuss discuss=discussDao.findOne(disId);
				//在此处判断一下是哪种类型，投票又不一样；
				if(discuss.getTypeId()==21){
					VoteList vote=discuss.getVoteList();
					vote.setEndTime(voteList.getEndTime());
					voteService.savaVoteList(vote);
					System.out.println(discuss);
				}
				discuss.setModifyTime(new Date());
				discuss.setTitle(menu.getTitle());
				discuss.setContent(menu.getContent());
				disService.save(discuss);
				req.setAttribute("success", "成功了");
				System.out.println("成功了");
				return "forward:/chatmanage";
			}else{
			    //新增处理
				Long typeId=Long.parseLong(req.getParameter("typeId"));
				if(menu.getTypeId()==21){
					String[] title2=req.getParameterValues("votetitle");
					String[] colors=req.getParameterValues("votecolor");
					System.out.println(voteList);
					Set<VoteTitles> voteTitles=new HashSet<>();
					//处理投票标题
					for (int i = 0; i < colors.length; i++) {
						VoteTitles voteTitle=new VoteTitles();
						voteTitle.setColor(colors[i]);
						voteTitle.setTitle(title2[i]);
						voteTitle.setVoteList(voteList);
						voteTitles.add(voteTitle);
					}
					voteList.setVoteTitles(voteTitles);		//将所有投票表格保存到投票对象中
//					voteService.savaVoteList(voteList);		//将投票信息保存到投票表中
					menu.setVoteList(voteList);				//将投票对象保存到讨论表中；
					System.out.println("要开始进行投票处理了");
				}
				menu.setVisitNum(0);
				menu.setUser(user);
				menu.setCreateTime(new Date());
				disService.save(menu);
				req.setAttribute("success", "成功了");
				System.out.println("成功了");
				return "forward:/chatmanage";
			}
		}
		return null;
	}

	private void setSomething(String baseKey, String type, String time, String visitnum,String icon,
			Model model) {
		if(!StringUtils.isEmpty(icon)){
			model.addAttribute("icon", icon);
			if(!StringUtils.isEmpty(type)){
				model.addAttribute("type", type);
				if("1".equals(type)){
					model.addAttribute("sort", "&type=1&icon="+icon);
				}else{
					model.addAttribute("sort", "&type=0&icon="+icon);
				}
			}
			if(!StringUtils.isEmpty(visitnum)){
				model.addAttribute("visitnum", visitnum);
				if("1".equals(visitnum)){
					model.addAttribute("sort", "&visitnum=1&icon="+icon);
				}else{
					model.addAttribute("sort", "&visitnum=0&icon="+icon);
				}
			}
			if(!StringUtils.isEmpty(time)){
				model.addAttribute("time", time);
				if("1".equals(time)){
					model.addAttribute("sort", "&time=1&icon="+icon);
				}else{
					model.addAttribute("sort", "&time=0&icon="+icon);
				}
			}
		}
		if(!StringUtils.isEmpty(baseKey)){
			model.addAttribute("baseKey", baseKey);
		}
	}
}
