package cn.gson.oasys.controller.attendce;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.support.DefaultConversionService;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import cn.gson.oasys.common.StringtoDate;
import cn.gson.oasys.model.dao.attendcedao.AttendceDao;
import cn.gson.oasys.model.dao.attendcedao.AttendceService;
import cn.gson.oasys.model.dao.system.StatusDao;
import cn.gson.oasys.model.dao.system.TypeDao;
import cn.gson.oasys.model.dao.user.UserDao;
import cn.gson.oasys.model.entity.attendce.Attends;
import cn.gson.oasys.model.entity.system.SystemStatusList;
import cn.gson.oasys.model.entity.system.SystemTypeList;
import cn.gson.oasys.model.entity.user.User;

@Controller
@RequestMapping("/")
public class AttendceController {

	Logger log = LoggerFactory.getLogger(getClass());

	@Autowired
	AttendceDao attenceDao;
	@Autowired
	AttendceService attendceService;
	@Autowired
	UserDao uDao;
	@Autowired
	TypeDao typeDao;
	@Autowired
	StatusDao statusDao;

	List<Attends> alist;
	List<User> uList;

	// 格式转化导入
	DefaultConversionService service = new DefaultConversionService();

	// 考勤 前面的签到
	@RequestMapping("singin")
	public String Datag(HttpSession session, Model model, HttpServletRequest request) throws InterruptedException {
		// 时间规范
		String start = "08:00:00", end = "17:00:00";
		service.addConverter(new StringtoDate());
		// 状态默认是正常
		long typeId, statusId = 10;
		Attends attends = null;
		Long userId = Long.parseLong(session.getAttribute("userId") + "");
		User user = uDao.findOne(userId);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String nowdate = sdf.format(date);
		// 星期 判断该日期是星期几
		SimpleDateFormat sdf3 = new SimpleDateFormat("EEEE");
		// 截取时分
		SimpleDateFormat sdf4 = new SimpleDateFormat("HH:mm");
		// 截取时分秒
		SimpleDateFormat sdf5 = new SimpleDateFormat("HH:mm:ss");

		// 一周当中的星期几
		String weekofday = sdf3.format(date);
		// 时分
		String hourmin = sdf4.format(date);

		// 时分秒
		String hourminsec = sdf5.format(date);
		System.out.println("星期" + weekofday + "时分" + hourmin + "时分秒" + hourminsec);
		System.out.println(date);
		Long aid = null;

		// 查找用户当天的所有记录
		Integer count = attenceDao.countrecord(nowdate, userId);
		if (hourminsec.compareTo(end) > 0) {
			// 在17之后签到无效
			System.out.println("----不能签到");
			model.addAttribute("error", "1");
		}
		if(hourminsec.compareTo("05:00:00") <0){
			//在凌晨5点之前不能签到
			System.out.println("----不能签到");
			model.addAttribute("error", "2");
		}
		else{
		// 明确一点就是一个用户一天只能产生两条记录
		if (count == 0) {
			  if (hourminsec.compareTo(end) < 0) {
				// 没有找到当天的记录就表示此次点击是上班 就是用来判断该记录的类型
				// 上班id8
				typeId = 8;
				// 上班就只有迟到和正常
				if (hourminsec.compareTo(start) > 0) {
					// 迟于规定时间 迟到
					statusId = 11;
				} else if (hourminsec.compareTo(start) < 0) {
					statusId = 10;
				}
				attends = new Attends(typeId, statusId, date, hourmin, weekofday, null, user);
				attenceDao.save(attends);
				System.out.println("000");
			}
		}
		if (count == 1) {
			// 找到当天的一条记录就表示此次点击是下班
			// 下班id9
			typeId = 9;
			// 下班就只有早退和正常
			if (hourminsec.compareTo(end) > 0) {
				// 在规定时间晚下班正常
				statusId = 10;
			} else if (hourminsec.compareTo(end) < 0) {
				// 在规定时间早下班早退
				statusId = 12;
			}
			attends = new Attends(typeId, statusId, date, hourmin, weekofday, null, user);
			attenceDao.save(attends);
			System.out.println("111");
		}
		if (count >= 2) {
			// 已经是下班的状态了 大于2就是修改考勤时间了
			// 下班id9
			if (hourminsec.compareTo(end) > 0) { // 最进一次签到在规定时间晚下班正常
				statusId = 10;
			} else if (hourminsec.compareTo(end) < 0) {
				// 最进一次签到在规定时间早下班早退
				statusId = 12;
			}
			aid = attenceDao.findoffworkid(nowdate, userId);
			attendceService.updatetime(date, hourmin, statusId, aid);
			Attends aList = attenceDao.findlastest(nowdate, userId);
		}
		}
		// 显示用户当天最新的记录
		Attends aList = attenceDao.findlastest(nowdate, userId);
		if (aList != null) {
			String type = typeDao.findname(aList.getTypeId());
			model.addAttribute("type", type);
		}
		model.addAttribute("alist", aList);
		return "systemcontrol/signin";
	}

	// 考情列表 给单个用户使用
	@RequestMapping("attendcelist")
	public String test(HttpServletRequest request, HttpSession session,
			@RequestParam(value = "page", defaultValue = "0") int page) {
		singleatt(request, session, page, null);
		return "attendce/attendcelist";
	}

	@RequestMapping("attendcelisttable")
	public String test(HttpServletRequest request, HttpSession session,
			@RequestParam(value = "page", defaultValue = "0") int page,
			@RequestParam(value = "baseKey", required = false) String baseKey) {
		singleatt(request, session, page, baseKey);
		return "attendce/attendcelisttable";
	}

	private void singleatt(HttpServletRequest request, HttpSession session, int page, String baseKey) {
		Long userid = Long.valueOf(session.getAttribute("userId") + "");
		System.out.println(userid);
		Page<Attends> page2 = attendceService.singlepage(page, baseKey, userid);
		System.out.println("考勤" + page2.getContent());
		typestatus(request);
		request.setAttribute("alist", page2.getContent());
		request.setAttribute("page", page2);
		request.setAttribute("url", "attendcelisttable");
	}

	// 考勤管理
	@RequestMapping("attendceatt")
	public String testdasf(HttpServletRequest request, HttpSession session,
			@RequestParam(value = "page", defaultValue = "0") int page) {
		setMess(request, session, page, null);
		return "attendce/attendceview";
	}

	// 分頁分页
	@RequestMapping("attendcetable")
	public String table(HttpServletRequest request, HttpSession session,
			@RequestParam(value = "page", defaultValue = "0") int page,
			@RequestParam(value = "baseKey", required = false) String baseKey) {
		setMess(request, session, page, baseKey);
		return "attendce/attendcetable";
	}

	private void setMess(HttpServletRequest request, HttpSession session, int page, String baseKey) {
		Long userId = Long.parseLong(session.getAttribute("userId") + "");
		List<Long> ids = new ArrayList<>();
		List<User> users = uDao.findByFatherId(userId);
		for (User user : users) {
			ids.add(user.getUserId());
		}
		if (ids.size() == 0) {
			ids.add(0L);
		}
		User user = uDao.findOne(userId);
		Page<Attends> page2 = attendceService.paging(page, baseKey, ids);
		typestatus(request);
		request.setAttribute("alist", page2.getContent());
		request.setAttribute("page", page2);
		request.setAttribute("url", "attendcetable");
	}

	// 删除
	@RequestMapping("attdelete")
	public String dsfa(HttpServletRequest request, HttpSession session) {
		long aid = Long.valueOf(request.getParameter("aid"));
		attendceService.delete(aid);
		return "redirect:/attendceatt";
	}

	// 月报表
	@RequestMapping("attendcemonth")
	public String test2() {
		return "attendce/monthtable";
	}

	@RequestMapping("realmonthtable")
	public String dfshe(HttpServletRequest request, Model model) {
		String month = request.getParameter("month");
		uList = (List<User>) uDao.findAll();
		Map<String, List<Integer>> uMap = new HashMap<>();
		List<Integer> result = null;
		for (User user : uList) {
			result = new ArrayList<>();
			for (long statusId = 10; statusId < 14; statusId++) {
				result.add(attenceDao.countnum(month, statusId, user.getUserId()));
			}
			uMap.put(user.getUserName(), result);
		}
		model.addAttribute("uMap", uMap);
		model.addAttribute("ulist", uList);
		return "attendce/realmonthtable";
	}

	// 周报表
	@RequestMapping("attendceweek")
	public String test3() {
		return "attendce/weektable";
	}

	@RequestMapping("realweektable")
	public String dsaf(HttpServletRequest request) {
		String starttime = request.getParameter("starttime");
		String endtime = request.getParameter("endtime");
		// 格式转化
		service.addConverter(new StringtoDate());
		Date startdate = service.convert(starttime, Date.class);
		Date enddate = service.convert(endtime, Date.class);

		// 从后台匹配数据
		uList = (List<User>) uDao.findAll();
		alist = attenceDao.findoneweek(startdate, enddate);
		Set<Attends> attenceset = new HashSet<>();
		for (User user : uList) {
			for (Attends attence : alist) {
				if (attence.getUser().getUserId() == user.getUserId()) {
					attenceset.add(attence);
				}
			}
			user.setaSet(attenceset);
		}

		String[] weekday = { "星期一", "星期二", "星期三", "星期四", "星期五", "星期六", "星期日" };
		request.setAttribute("ulist", uList);
		request.setAttribute("weekday", weekday);
		return "attendce/realweektable";

	}

	@RequestMapping("attendceedit")
	public String test4(@Param("aid") String aid, Model model, HttpSession session) {
		Long userid = Long.valueOf(session.getAttribute("userId") + "");
		if (aid == null) {
			model.addAttribute("write", 0);
		} else if (aid != null) {
			long id = Long.valueOf(aid);
			Attends attends = attenceDao.findOne(id);
			model.addAttribute("write", 1);
			model.addAttribute("attends", attends);
		}
		List<SystemTypeList> type = (List<SystemTypeList>) typeDao.findByTypeModel("aoa_attends_list");
		List<SystemStatusList> status = (List<SystemStatusList>) statusDao.findByStatusModel("aoa_attends_list");
		model.addAttribute("type", type);
		model.addAttribute("status", status);
		return "attendce/attendceedit";
	}

	@RequestMapping("attendceedit2")
	public String DSAGen(HttpServletRequest request) {
		long id = Long.valueOf(request.getParameter("id"));
		Attends attends = attenceDao.findOne(id);
		request.setAttribute("attends", attends);
		typestatus(request);
		return "attendce/attendceedit2";
	}

	@RequestMapping(value = "attendcesave", method = RequestMethod.GET)
	public void Datadf() {
	}

	// 修改保存
	@RequestMapping(value = "attendcesave", method = RequestMethod.POST)
	public String test4(Model model, HttpSession session, HttpServletRequest request) {
		Long userid = Long.parseLong(session.getAttribute("userId") + "");
		String remark = request.getParameter("remark");
		long id = Long.parseLong(request.getParameter("id"));
		attendceService.updatereamrk(remark, id);
		return "redirect:/attendceatt";
	}

	// 状态类型方法
	private void typestatus(HttpServletRequest request) {
		List<SystemTypeList> type = (List<SystemTypeList>) typeDao.findByTypeModel("aoa_attends_list");
		List<SystemStatusList> status = (List<SystemStatusList>) statusDao.findByStatusModel("aoa_attends_list");
		request.setAttribute("type", type);
		request.setAttribute("status", status);
	}

}
