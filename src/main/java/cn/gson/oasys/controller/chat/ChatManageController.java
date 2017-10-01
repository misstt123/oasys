package cn.gson.oasys.controller.chat;

import java.util.Date;
import java.util.List;
import java.util.Map;

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
import cn.gson.oasys.model.dao.discuss.DiscussDao;
import cn.gson.oasys.model.dao.system.TypeDao;
import cn.gson.oasys.model.dao.user.UserDao;
import cn.gson.oasys.model.entity.discuss.Discuss;
import cn.gson.oasys.model.entity.system.SystemTypeList;
import cn.gson.oasys.model.entity.user.User;
import cn.gson.oasys.services.discuss.DiscussService;

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
	

	/**
	 * 讨论区超级管理员管理
	 * @return
	 */
	@RequestMapping("adminmanage")
	public String adminManage(@RequestParam(value="page",defaultValue="0") int page,
			@SessionAttribute("userId") Long userId,Model model){
		Page<Discuss> page2=disService.paging(page, null, 1L,null,null,null);
		setPagintMess(model, page2,"/chattable","manage");
		model.addAttribute("name", "超级管理员");
		return "chat/chatmanage";
	}
	
	/**
	 * 讨论区管理
	 * @return
	 */
	@RequestMapping("chatmanage")
	public String chatManage(@RequestParam(value="page",defaultValue="0") int page,
			@SessionAttribute("userId") Long userId,Model model){
		Page<Discuss> page2=disService.pagingMe(page, null, userId,null,null,null);
		setPagintMess(model, page2,"/metable","manage");
		model.addAttribute("name", "我的管理");
		return "chat/chatmanage";
	}
	/**
	 * 讨论区列表
	 * @param page
	 * @param model
	 * @return
	 */
	@RequestMapping("chatlist")
	public String chatList(@RequestParam(value="page",defaultValue="0") int page,Model model){
		Page<Discuss> page2=disService.paging(page, null, null,null,null,null);
		setPagintMess(model, page2,"/seetable",null);
		model.addAttribute("name", "讨论列表");
		return "chat/chatmanage";
	}
	
	private void setPagintMess(Model model, Page<Discuss> page2,String url,String manage) {
		model.addAttribute("list",disService.packaging(page2.getContent()));
		model.addAttribute("page", page2);
		model.addAttribute("url", url);
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
		setPagintMess(model, page2,"/chattable","manage");
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
		setPagintMess(model, page2,"/metable","manage");
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
		setPagintMess(model, page2,"/seetable",null);
		return "chat/chattable";
	}
	
	/**
	 * 查看讨论
	 * @return
	 */
	@RequestMapping("replymanage")
	public String replyManage(Model model,@RequestParam(value="id") Long id){
		Discuss discuss=disService.seeDiscuss(id);
		model.addAttribute("discuss", discuss);
		model.addAttribute("user", discuss.getUser());
		return "chat/replaymanage";
	}
	
	/**
	 * 编写讨论区
	 * @param req
	 * @return
	 */
	@RequestMapping("writechat")
	public String writeChat(HttpServletRequest req,@SessionAttribute(value="userId")Long userId,Model model){
		User user=uDao.findOne(userId);
		List<SystemTypeList> typeList=typeDao.findByTypeModel("chat");
		model.addAttribute("typeList", typeList);
		model.addAttribute("user", user);
		return "chat/writechat";
	}
	
	/**
	 * 新增
	 */
	@RequestMapping("adddiscuss")
	public String addDiscuss(HttpServletRequest req,@Valid Discuss menu,BindingResult br,@RequestParam("file")MultipartFile file){
		HttpSession session=req.getSession();
		Long userId=Long.parseLong(session.getAttribute("userId")+"");
		User user=uDao.findOne(userId);
		Long typeId=Long.parseLong(req.getParameter("typeId"));
		System.out.println(menu);
		ResultVO res = BindingResultVOUtil.hasErrors(br);
		// 校验失败
		if (!ResultEnum.SUCCESS.getCode().equals(res.getCode())) {
			List<Object> list = new MapToList<>().mapToList(res.getData());
			// 代码调试阶段，下面是错误的相关信息；
			System.out.println("list错误的实体类信息：" + menu);
			System.out.println("list错误详情:" + list);
			System.out.println("list错误第一条:" + list.get(0));
			System.out.println("啊啊啊错误的信息——：" + list.get(0).toString());
			// 下面的info信息是打印出详细的信息
		}else{
			menu.setVisitNum(0);
			menu.setUser(user);
			menu.setCreateTime(new Date());
			disService.save(menu);
			req.setAttribute("success", "成功了");
			System.out.println("成功了");
		}
		return "redirect:/chatmanage";
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
