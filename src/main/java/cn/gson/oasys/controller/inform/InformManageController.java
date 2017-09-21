package cn.gson.oasys.controller.inform;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.gson.oasys.common.formValid.BindingResultVOUtil;
import cn.gson.oasys.common.formValid.MapToList;
import cn.gson.oasys.common.formValid.ResultEnum;
import cn.gson.oasys.common.formValid.ResultVO;
import cn.gson.oasys.model.dao.informdao.InformDao;
import cn.gson.oasys.model.dao.informdao.InformRelationDao;
import cn.gson.oasys.model.dao.system.StatusDao;
import cn.gson.oasys.model.dao.system.TypeDao;
import cn.gson.oasys.model.dao.user.UserDao;
import cn.gson.oasys.model.entity.notice.NoticeUserRelation;
import cn.gson.oasys.model.entity.notice.NoticesList;
import cn.gson.oasys.model.entity.system.SystemMenu;
import cn.gson.oasys.model.entity.system.SystemStatusList;
import cn.gson.oasys.model.entity.system.SystemTypeList;
import cn.gson.oasys.model.entity.user.User;
import cn.gson.oasys.services.inform.InformRelationService;
import cn.gson.oasys.services.inform.InformService;

@Controller
@RequestMapping("/")
public class InformManageController {
	
	Logger log=LoggerFactory.getLogger(getClass());
	
	@Autowired
	private StatusDao statusDao;
	
	@Autowired
	private TypeDao typeDao;
	
	@Autowired
	private InformDao informDao;
	
	@Autowired
	private InformService informService;
	
	@Autowired
	private UserDao uDao;
	
	@Autowired
	private InformRelationDao informrelationDao;
	
	@Autowired
	private InformRelationService informrelationservice;
	
	/**
	 * 通知管理面板
	 * @return
	 */
	@RequestMapping("infrommanage")
	public String infromManage(HttpSession session,HttpServletRequest req,Model model){
		Long userId=Long.parseLong(session.getAttribute("userId")+"");
//		List<NoticesList> noticeList=informDao.findByUserId(userId);
		List<NoticesList> noticeList=informDao.findByUserIdAndTopOrderByModifyTimeDesc(userId, true);
		List<NoticesList> noticeList2=informDao.findByUserIdAndTopOrderByModifyTimeDesc(userId, false);
		noticeList.addAll(noticeList2);
		List<Map<String, Object>> list=informService.fengZhuang(noticeList);
		model.addAttribute("list",list);
		return "inform/informmanage";
	}
	
	/**
	 * 通知列表
	 * @return
	 */
	@RequestMapping("infromlist")
	public String infromList(HttpSession session,HttpServletRequest req,Model model){
		Long userId=Long.parseLong(session.getAttribute("userId")+"");
		User user=uDao.findOne(userId);
		List<NoticeUserRelation> noticeRelations=informrelationDao.findByUserId(user);
		List<NoticesList> noticeList=null;
		for (NoticeUserRelation noticeUserRelation : noticeRelations) {
			NoticesList notice=informDao.findOne(noticeUserRelation.getNoticeId().getNoticeId());
			noticeList.add(notice);
		}
		return "inform/informlist";
	}
	
	/**
	 * 编辑通知界面
	 */
	@RequestMapping("informedit")
	public String infromEdit(HttpServletRequest req,HttpSession session,Model model){
		session.removeAttribute("noticeId");
		List<SystemTypeList> typeList=typeDao.findByTypeModel("inform");
		List<SystemStatusList> statusList=statusDao.findByStatusModel("inform");
		if(!StringUtils.isEmpty(req.getAttribute("errormess"))){
			req.setAttribute("errormess",req.getAttribute("errormess"));
		}
		if(!StringUtils.isEmpty(req.getAttribute("success"))){
			req.setAttribute("success","数据保存成功");
		}
		req.setAttribute("typeList", typeList);
		req.setAttribute("statusList", statusList);
		if(!StringUtils.isEmpty(req.getParameter("id"))){
			Long noticeId=Long.parseLong(req.getParameter("id"));
			NoticesList noticeList=informDao.findOne(noticeId);
			model.addAttribute("noticeList", noticeList);
			model.addAttribute("typeName", typeDao.findOne(noticeList.getTypeId()).getTypeName());
			model.addAttribute("statusName", statusDao.findOne(noticeList.getStatusId()).getStatusName());
			session.setAttribute("noticeId", noticeId);
		}
		
		return "inform/informedit";
	}
	
	/**
	 * 详细通知显示
	 */
	@RequestMapping("informshow")
	public String informShow(HttpServletRequest req,Model model){
		Long noticeId=Long.parseLong(req.getParameter("id"));
		NoticesList notice=informDao.findOne(noticeId);
		User user=uDao.findOne(notice.getUserId());
		model.addAttribute("notice", notice);
		model.addAttribute("userName",user.getUserName());
		return "inform/informshow";
	}
	
	/**
	 * 系统管理表单验证
	 * @param req
	 * @param menu
	 * @param br
	 * 后台校验表单数据，不通过则回填数据，显示错误信息；通过则直接执行业务，例如新增、编辑等；
	 * @return
	 */
	@RequestMapping("informcheck")
	public String testMess(HttpServletRequest req, @Valid NoticesList menu, BindingResult br) {
		HttpSession session = req.getSession();
		Long menuId = null;
		req.setAttribute("menuObj", menu);
		Long userId=Long.parseLong(session.getAttribute("userId")+"");
		menu.setUserId(userId);
		
		// 这里返回ResultVO对象，如果校验通过，ResultEnum.SUCCESS.getCode()返回的值为200；否则就是没有通过；
		ResultVO res = BindingResultVOUtil.hasErrors(br);
		// 校验失败
		if (!ResultEnum.SUCCESS.getCode().equals(res.getCode())) {
			List<Object> list = new MapToList<>().mapToList(res.getData());
			req.setAttribute("errormess", list.get(0).toString());
			// 代码调试阶段，下面是错误的相关信息；
			System.out.println("list错误的实体类信息：" + menu);
			System.out.println("list错误详情:" + list);
			System.out.println("list错误第一条:" + list.get(0));
			System.out.println("啊啊啊错误的信息——：" + list.get(0).toString());
			// 下面的info信息是打印出详细的信息
			log.info("getData:{}", res.getData());
			log.info("getCode:{}", res.getCode());
			log.info("getMsg:{}", res.getMsg());
		}
		// 校验通过，下面写自己的逻辑业务
		else {
			// 判断是否从编辑界面进来的，前面有"session.setAttribute("getId",getId);",在这里获取，并remove掉；
			if (!StringUtils.isEmpty(session.getAttribute("noticeId"))) {
				menuId = (Long)session.getAttribute("noticeId"); // 获取进入编辑界面的menuID值
				NoticesList inform=informDao.findOne(menuId);
				menu.setNoticeTime(inform.getNoticeTime());
				menu.setNoticeId(menuId);
				session.removeAttribute("noticeId");
				informService.save(menu);
			}
			else{
				menu.setNoticeTime(new Date());
				menu.setUserId(userId);
				NoticesList noticeList=informService.save(menu);
				List<User> userList=uDao.findByFatherId(userId);
				for (User user : userList) {
					informrelationservice.save(new NoticeUserRelation(noticeList, user, false));
				}
			}
			//执行业务代码
			System.out.println("此操作是正确的");
			req.setAttribute("success", "后台验证成功");
		}
		System.out.println("是否进入最后的实体类信息：" + menu);
		return "forward:/informedit";
	}
	

}
