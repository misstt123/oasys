package cn.gson.oasys.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.gson.oasys.mappers.NoticeMapper;
import cn.gson.oasys.model.dao.system.StatusDao;
import cn.gson.oasys.model.dao.system.TypeDao;
import cn.gson.oasys.model.dao.user.UserDao;
import cn.gson.oasys.model.entity.process.Notepaper;
import cn.gson.oasys.services.inform.InformRelationService;
import cn.gson.oasys.services.system.MenuSysService;
import cn.gson.oasys.services.user.NotepaperService;

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
	private InformRelationService informRService;

	// demo
	@Autowired
	NotepaperService n;

	@RequestMapping("index")
	public String index(HttpServletRequest req) {
		menuService.findMenuSys(req);
		HttpSession session = req.getSession();
		session.setAttribute("userId", "1");
		return "index/index";
	}

	/**
	 * 控制面板主页
	 * 
	 * @param session
	 * @param model
	 * @return
	 */
	@RequestMapping("test2")
	public String test2(HttpSession session, Model model) {
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
		model.addAttribute("noticeList", list);
		return "systemcontrol/control";
	}

	@RequestMapping("test3")
	public String test3() {
		return "common/iosstyle";
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

	// demo
//	@RequestMapping("testdddd")
//	public @ResponseBody Page<Notepaper> test(@RequestParam(value = "page", defaultValue = "0") int page,
//			@RequestParam(value = "size", defaultValue = "5") int size,
//			@RequestParam(value = "baseKey", required = false) String baseKey) {
//		PageRequest pageRequest = new PageRequest(page, size);
//		Page<Notepaper> notepaperPage = n.finall(pageRequest, baseKey);
//		// Long total = notepaperPage.getTotalElements();
//		// notepaperPage.getTotalPages();
//		List<Notepaper> notepaperList=notepaperPage.getContent();
//		
//		return notepaperPage;
//	}
	@GetMapping("dddd")
	public String  testtt(){
		return  "test";
	}
}
