package cn.gson.oasys.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.support.DefaultConversionService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.gson.oasys.mappers.NoticeMapper;
import cn.gson.oasys.model.dao.attendcedao.AttendceDao;
import cn.gson.oasys.model.dao.attendcedao.AttendceService;
import cn.gson.oasys.model.dao.system.StatusDao;
import cn.gson.oasys.model.dao.system.TypeDao;
import cn.gson.oasys.model.dao.user.UserDao;
import cn.gson.oasys.model.entity.attendce.Attends;
import cn.gson.oasys.services.inform.InformRelationService;
import cn.gson.oasys.services.system.MenuSysService;

@Controller
@RequestMapping("/")
public class IndexController {

	Logger log = LoggerFactory.getLogger(getClass());

	@Autowired
	private MenuSysService menuService;
	@Autowired
	private NoticeMapper nm;
	@Autowired
	private StatusDao statusDao;
	@Autowired
	private TypeDao typeDao;
	@Autowired
	private UserDao uDao;
	@Autowired
	private AttendceDao attendceDao;
	@Autowired
	private AttendceService attendceService;
	@Autowired
	private InformRelationService informRService;

	// 格式转化导入
	DefaultConversionService service = new DefaultConversionService();

	@RequestMapping("index")
	public String index(HttpServletRequest req) {
		menuService.findMenuSys(req);
		HttpSession session = req.getSession();
		session.setAttribute("userId", "1");
		return "index/index";
	}

	private void showalist(Model model, Long userId) {
		// 显示用户当天最新的记录
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String nowdate = sdf.format(date);
		Attends aList = attendceDao.findlastest(nowdate, userId);
		if (aList != null) {
			String type = typeDao.findname(aList.getTypeId());
			model.addAttribute("type", type);
		}
		model.addAttribute("alist", aList);
	}

	/**
	 * 控制面板主页
	 * 
	 * @param session
	 * @param model
	 * @return
	 */
	@RequestMapping("test2")
	public String test2(HttpSession session, Model model, HttpServletRequest request) {
		Long userId = Long.parseLong(session.getAttribute("userId") + "");
		List<Map<String, Object>> list = nm.findMyNoticeLimit(userId);
		for (Map<String, Object> map : list) {
			map.put("status", statusDao.findOne((Long) map.get("status_id")).getStatusName());
			map.put("type", typeDao.findOne((Long) map.get("type_id")).getTypeName());
			map.put("statusColor", statusDao.findOne((Long) map.get("status_id")).getStatusColor());
			map.put("userName", uDao.findOne((Long) map.get("user_id")).getUserName());
			map.put("deptName", uDao.findOne((Long) map.get("user_id")).getDept().getDeptName());
		}
		// List<Map<String, Object>>
		// noticeList=informRService.setList(noticeList1);
		showalist(model, userId);
		model.addAttribute("noticeList", list);
		return "systemcontrol/control";
	}

	@RequestMapping("test3")
	public String test3() {
		return "note/noteview";
	}

	@RequestMapping("test4")
	public String test4() {
		return "mail/editaccount";
	}

	@RequestMapping("notlimit")
	public String notLimit() {
		return "common/notlimit";
	}
	// 测试系统管理

	@RequestMapping("one")
	public String witeMail() {
		return "mail/wirtemail";
	}

	@RequestMapping("two")
	public String witeMail2() {
		return "mail/seemail";
	}

	@RequestMapping("three")
	public String witeMail3() {
		return "mail/allmail";
	}

	@RequestMapping("mmm")
	public String witeMail4() {
		return "mail/mail";
	}

	@RequestMapping("ffff")
	public @ResponseBody PageInfo<Map<String, Object>> no() {
		PageHelper.startPage(2, 10);
		List<Map<String, Object>> list = nm.findMyNotice(2L);
		PageInfo<Map<String, Object>> info = new PageInfo<Map<String, Object>>(list);
		System.out.println(info);
		return info;
	}

}
