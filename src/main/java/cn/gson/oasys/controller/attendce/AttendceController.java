package cn.gson.oasys.controller.attendce;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.text.SimpleDateFormat;
import java.util.*;

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
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import ch.qos.logback.core.joran.action.IADataForComplexProperty;
import ch.qos.logback.core.net.SyslogOutputStream;
import cn.gson.oasys.common.StringtoDate;
import cn.gson.oasys.model.dao.attendcedao.AttendceDao;
import cn.gson.oasys.model.dao.attendcedao.AttendceService;
import cn.gson.oasys.model.dao.system.StatusDao;
import cn.gson.oasys.model.dao.system.TypeDao;
import cn.gson.oasys.model.dao.user.UserDao;
import cn.gson.oasys.model.dao.user.UserService;
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
	UserService userService;
	@Autowired
	TypeDao typeDao;
	@Autowired
	StatusDao statusDao;

	List<Attends> alist;
	List<User> uList;
    Date start,end;
    String month_;
	// 格式转化导入
	DefaultConversionService service = new DefaultConversionService();

	// 考勤 前面的签到
	@RequestMapping("singin")
	public String Datag(HttpSession session, Model model, HttpServletRequest request) throws InterruptedException, UnknownHostException {
		//首先获取ip
		InetAddress ia=null;
		ia=ia.getLocalHost();
		String attendip=ia.getHostAddress();
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
		//System.out.println("星期" + weekofday + "时分" + hourmin + "时分秒" + hourminsec);
		//System.out.println(date);
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
		else if((hourminsec.compareTo("05:00:00") >0)&&(hourminsec.compareTo(end) <0)){
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
				attends = new Attends(typeId, statusId, date, hourmin, weekofday, attendip, user);
				attenceDao.save(attends);
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
			attends = new Attends(typeId, statusId, date, hourmin, weekofday, attendip, user);
			attenceDao.save(attends);
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
			Attends attends2=attenceDao.findOne(aid);
			attends2.setAttendsIp(attendip);
			attenceDao.save(attends2);
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
	@RequestMapping(value="attendcelist",method=RequestMethod.GET)
	public String test(HttpServletRequest request,  Model model,HttpSession session,
			@RequestParam(value = "page", defaultValue = "0") int page,
			@RequestParam(value = "baseKey", required = false) String baseKey,
			@RequestParam(value = "type", required = false) String type,
			@RequestParam(value = "status", required = false) String status,
			@RequestParam(value = "time", required = false) String time,
			@RequestParam(value = "icon", required = false) String icon) {
		signsortpaging(request, model, session, page, null, type, status, time, icon);
		return "attendce/attendcelist";
	}

	@RequestMapping(value="attendcelisttable",method=RequestMethod.GET)
	public String testdf(HttpServletRequest request,  Model model,HttpSession session,
			@RequestParam(value = "page", defaultValue = "0") int page,
			@RequestParam(value = "baseKey", required = false) String baseKey,
			@RequestParam(value = "type", required = false) String type,
			@RequestParam(value = "status", required = false) String status,
			@RequestParam(value = "time", required = false) String time,
			@RequestParam(value = "icon", required = false) String icon) {
		signsortpaging(request, model, session, page, baseKey, type, status, time, icon);
		return "attendce/attendcelisttable";
	}

	
    // 考勤管理某个管理员下面的所有员工的信息
	@RequestMapping("attendceatt")
	public String testdasf(HttpServletRequest request, HttpSession session,
			@RequestParam(value = "page", defaultValue = "0") int page,
			@RequestParam(value = "baseKey", required = false) String baseKey,
			@RequestParam(value = "type", required = false) String type,
			@RequestParam(value = "status", required = false) String status,
			@RequestParam(value = "time", required = false) String time,
			@RequestParam(value = "icon", required = false) String icon,Model model) {
		allsortpaging(request, session, page, baseKey, type, status, time, icon, model);
		return "attendce/attendceview";
	}

	// 分頁分页
	@RequestMapping("attendcetable")
	public String table(HttpServletRequest request, HttpSession session,
			@RequestParam(value = "page", defaultValue = "0") int page,
			@RequestParam(value = "baseKey", required = false) String baseKey,
			@RequestParam(value = "type", required = false) String type,
			@RequestParam(value = "status", required = false) String status,
			@RequestParam(value = "time", required = false) String time,
			@RequestParam(value = "icon", required = false) String icon,Model model) {
		allsortpaging(request, session, page, baseKey, type, status, time, icon, model);
		return "attendce/attendcetable";
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
	public String test2(HttpServletRequest request, Model model, HttpSession session,
			@RequestParam(value = "page", defaultValue = "0") int page,
			@RequestParam(value = "baseKey", required = false) String baseKey) {
		monthtablepaging(request, model, session, page, baseKey);
		return "attendce/monthtable";
	}

	@RequestMapping("realmonthtable")
	public String dfshe(HttpServletRequest request, Model model, HttpSession session,
			@RequestParam(value = "page", defaultValue = "0") int page,
			@RequestParam(value = "baseKey", required = false) String baseKey) {
		monthtablepaging(request, model, session, page, baseKey);
		return "attendce/realmonthtable";
	}

	

	// 周报表
	@RequestMapping("attendceweek")
	public String test3(HttpServletRequest request, HttpSession session,
			@RequestParam(value = "page", defaultValue = "0") int page,
			@RequestParam(value = "baseKey", required = false) String baseKey) {
		weektablepaging(request, session, page, baseKey);
		return "attendce/weektable";
	}

	@RequestMapping("realweektable")
	public String dsaf(HttpServletRequest request, HttpSession session,
			@RequestParam(value = "page", defaultValue = "0") int page,
			@RequestParam(value = "baseKey", required = false) String baseKey) {
		weektablepaging(request, session, page, baseKey);
		return "attendce/realweektable";

	}

	

	@RequestMapping("attendceedit")
	public String test4(@Param("aid") String aid, Model model,HttpServletRequest request, HttpSession session) {
		Long userid = Long.valueOf(session.getAttribute("userId") + "");
		if (aid == null) {
			model.addAttribute("write", 0);
		} else if (aid != null) {
			long id = Long.valueOf(aid);
			Attends attends = attenceDao.findOne(id);
			model.addAttribute("write", 1);
			model.addAttribute("attends", attends);
		}
		typestatus(request);
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
		String statusname=request.getParameter("status");
		SystemStatusList statusList=  statusDao.findByStatusModelAndStatusName("aoa_attends_list", statusname);
		long id = Long.parseLong(request.getParameter("id"));
		Attends attends=attenceDao.findOne(id);
		attends.setAttendsRemark(remark);
		attends.setStatusId(statusList.getStatusId());
		attenceDao.save(attends);
		//attendceService.updatereamrk(remark, id);
		return "redirect:/attendceatt";
	}

	// 状态类型方法
	private void typestatus(HttpServletRequest request) {
		List<SystemTypeList> type = (List<SystemTypeList>) typeDao.findByTypeModel("aoa_attends_list");
		List<SystemStatusList> status = (List<SystemStatusList>) statusDao.findByStatusModel("aoa_attends_list");
		request.setAttribute("typelist", type);
		request.setAttribute("statuslist", status);
	}

	
	public void setSomething(String baseKey, Object type, Object status, Object time, Object icon, Model model) {
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
			if(!StringUtils.isEmpty(status)){
				model.addAttribute("status", status);
				if("1".equals(status)){
					model.addAttribute("sort", "&status=1&icon="+icon);
				}else{
					model.addAttribute("sort", "&status=0&icon="+icon);
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
			model.addAttribute("sort", "&baseKey="+baseKey);
		}
	}
	//单个用户的排序和分页
	private void signsortpaging(HttpServletRequest request, Model model, HttpSession session, int page, String baseKey,
			String type, String status, String time, String icon) {
		Long userid = Long.valueOf(session.getAttribute("userId") + "");
		setSomething(baseKey, type, status, time, icon, model);
		Page<Attends> page2 = attendceService.singlepage(page, baseKey, userid,type, status, time);
		typestatus(request);
		request.setAttribute("alist", page2.getContent());
		for (Attends attends :page2.getContent()) {
			System.out.println(attends);
		}
		request.setAttribute("page", page2);
		request.setAttribute("url", "attendcelisttable");
	}
	//该管理下面的所有用户
	private void allsortpaging(HttpServletRequest request, HttpSession session, int page, String baseKey, String type,
			String status, String time, String icon, Model model) {
		setSomething(baseKey, type, status, time, icon, model);
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
		typestatus(request);
		Page<Attends> page2 = attendceService.paging(page, baseKey, ids,type, status, time);
		request.setAttribute("alist", page2.getContent());
		request.setAttribute("page", page2);
		request.setAttribute("url", "attendcetable");
	}
	
	//周报表分页
	private void weektablepaging(HttpServletRequest request, HttpSession session, int page, String baseKey) {
		String starttime = request.getParameter("starttime");
		String endtime = request.getParameter("endtime");
		// 格式转化
		service.addConverter(new StringtoDate());
		Date startdate = service.convert(starttime, Date.class);
		Date enddate = service.convert(endtime, Date.class);
		
		//用来查找该用户下面管理的所有用户信息
		Long userId = Long.parseLong(session.getAttribute("userId") + "");
		List<Long> ids = new ArrayList<>();
		Page<User> userspage =userService.findmyemployuser(page, baseKey, userId);
		for (User user : userspage) {
			ids.add(user.getUserId());
		}
		if (ids.size() == 0) {
			ids.add(0L);
		}
		
		//找到某个管理员下面的所有用户的信息 保证传过来的是正确的数据 分页之后可以使用全局变量来记住开始和结束日期
		if(startdate!=null&&enddate!=null)
			{start=startdate;end=enddate;}
		if(startdate==null&&enddate==null)
			startdate=start;enddate=end;
			System.out.println("再次获取"+startdate+"结束"+enddate);
		List<Attends> alist = attenceDao.findoneweek(startdate, enddate, ids);
		Set<Attends> attenceset = new HashSet<>();
		for (User user : userspage) {
			for (Attends attence : alist) {
				if (Objects.equals(attence.getUser().getUserId(), user.getUserId())) {
					attenceset.add(attence);
				}
			}
			user.setaSet(attenceset);
		}
		String[] weekday = { "星期一", "星期二", "星期三", "星期四", "星期五", "星期六", "星期日" };
		request.setAttribute("ulist", userspage.getContent());
		request.setAttribute("page", userspage);
		request.setAttribute("weekday", weekday);
		request.setAttribute("url", "realweektable");
	}
	//月报表
	private void monthtablepaging(HttpServletRequest request, Model model, HttpSession session, int page,
			String baseKey) {
		Integer offnum,toworknum;
		Long userId = Long.parseLong(session.getAttribute("userId") + "");
		List<Long> ids = new ArrayList<>();
		Page<User> userspage =userService.findmyemployuser(page, baseKey, userId);
		for (User user : userspage) {
			ids.add(user.getUserId());
		}
		if (ids.size() == 0) {
			ids.add(0L);
		}
		String month = request.getParameter("month");
		
		if(month!=null)
			month_=month;
		else
			month=month_;
		
		Map<String, List<Integer>> uMap = new HashMap<>();
		List<Integer> result = null;
		
		for (User user : userspage) {
			result = new ArrayList<>();
			//当月该用户下班次数
			offnum=attenceDao.countoffwork(month, user.getUserId());
			//当月该用户上班次数
			toworknum=attenceDao.counttowork(month, user.getUserId());
			for (long statusId = 10; statusId < 13; statusId++) {
				//这里面记录了正常迟到早退等状态
				if(statusId==12)
					result.add(attenceDao.countnum(month, statusId, user.getUserId())+toworknum-offnum);
				else
				result.add(attenceDao.countnum(month, statusId, user.getUserId()));
			}
			//添加请假和出差的记录//应该是查找 使用sql的sum（）函数来统计出差和请假的次数
			System.out.println("请假天数"+attenceDao.countothernum(month, 46L, user.getUserId()));
			if(attenceDao.countothernum(month, 46L, user.getUserId())!=null)
			result.add(attenceDao.countothernum(month, 46L, user.getUserId()));
			else
				result.add(0);
			if(attenceDao.countothernum(month, 47L, user.getUserId())!=null)
			result.add(attenceDao.countothernum(month, 47L, user.getUserId()));
			else
				result.add(0);
			//这里记录了旷工的次数 还有请假天数没有记录 旷工次数=30-8-请假次数-某天签到次数
			//这里还有请假天数没有写
			Date date=new Date();
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM");
			String date_month=sdf.format(date);
			if(month!=null){
				if(month.compareTo(date_month)>=0)
					result.add(0);
				else
				result.add(30-8-offnum);
			}
			
			uMap.put(user.getUserName(), result);
		}
		model.addAttribute("uMap", uMap);
		model.addAttribute("ulist", userspage.getContent());
		model.addAttribute("page", userspage);
		model.addAttribute("url", "realmonthtable");
	}
}
