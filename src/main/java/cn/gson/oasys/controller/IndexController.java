package cn.gson.oasys.controller;

import java.text.ParseException;
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
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.gson.oasys.mappers.NoticeMapper;
import cn.gson.oasys.model.dao.attendcedao.AttendceDao;
import cn.gson.oasys.model.dao.daymanagedao.DaymanageDao;
import cn.gson.oasys.model.dao.discuss.DiscussDao;
import cn.gson.oasys.model.dao.filedao.FileListdao;
import cn.gson.oasys.model.dao.informdao.InformRelationDao;
import cn.gson.oasys.model.dao.maildao.MailreciverDao;
import cn.gson.oasys.model.dao.notedao.DirectorDao;
import cn.gson.oasys.model.dao.plandao.PlanDao;
import cn.gson.oasys.model.dao.processdao.NotepaperDao;
import cn.gson.oasys.model.dao.processdao.ProcessListDao;
import cn.gson.oasys.model.dao.roledao.RolepowerlistDao;
import cn.gson.oasys.model.dao.system.StatusDao;
import cn.gson.oasys.model.dao.system.TypeDao;
import cn.gson.oasys.model.dao.taskdao.TaskuserDao;
import cn.gson.oasys.model.dao.user.UserDao;
import cn.gson.oasys.model.dao.user.UserLogDao;
import cn.gson.oasys.model.entity.attendce.Attends;
import cn.gson.oasys.model.entity.mail.Mailreciver;
import cn.gson.oasys.model.entity.notice.NoticeUserRelation;
import cn.gson.oasys.model.entity.notice.NoticesList;
import cn.gson.oasys.model.entity.plan.Plan;
import cn.gson.oasys.model.entity.process.Notepaper;
import cn.gson.oasys.model.entity.process.ProcessList;
import cn.gson.oasys.model.entity.role.Rolemenu;
import cn.gson.oasys.model.entity.schedule.ScheduleList;
import cn.gson.oasys.model.entity.system.SystemStatusList;
import cn.gson.oasys.model.entity.system.SystemTypeList;
import cn.gson.oasys.model.entity.task.Taskuser;
import cn.gson.oasys.model.entity.user.User;
import cn.gson.oasys.model.entity.user.UserLog;
import cn.gson.oasys.services.daymanage.DaymanageServices;
import cn.gson.oasys.services.inform.InformRelationService;
import cn.gson.oasys.services.inform.InformService;
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
	private DirectorDao directorDao;
	@Autowired
	private DiscussDao discussDao;
	@Autowired
	private FileListdao filedao;
	@Autowired
	private PlanDao planDao;
	@Autowired
	private NotepaperDao notepaperDao;
	@Autowired
	private UserLogDao userLogDao;
	@Autowired
	private ProcessListDao processListDao;
	@Autowired
	private InformRelationDao irdao;
	@Autowired
	private MailreciverDao mdao;
	@Autowired
	private TaskuserDao  tadao;
	@Autowired
	private RolepowerlistDao rdao;
	@Autowired
	private DaymanageServices dayser;
	@Autowired
	private InformService informService;
	@Autowired
	private DaymanageDao daydao;
	@Autowired
	private InformRelationService informrelationservice;
	
	// 格式转化导入
	DefaultConversionService service = new DefaultConversionService();

	@RequestMapping("index")
	public String index(HttpServletRequest req,Model model) {
		HttpSession session = req.getSession();
		if(StringUtils.isEmpty(session.getAttribute("userId"))){
			return "login/login";
		}
		Long userId = Long.parseLong(session.getAttribute("userId") + "");
		User user=uDao.findOne(userId);
		menuService.findMenuSys(req,user);
		
		List<ScheduleList> aboutmenotice = dayser.aboutmeschedule(userId);
		for (ScheduleList scheduleList : aboutmenotice) {
			if(scheduleList.getIsreminded()!=null&&!scheduleList.getIsreminded()){
				System.out.println(scheduleList.getStartTime());
				
				SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH-mm-ss");//24小时制 
//				simpleDateFormat.parse(scheduleList.getStartTime()).getTime();  
				String start = simpleDateFormat.format(scheduleList.getStartTime());
				String now = simpleDateFormat.format(new Date());
				try {
					long now2 = simpleDateFormat.parse(now).getTime();
					long start2 = simpleDateFormat.parse(start).getTime();  
					long cha = start2-now2;
					if(0<cha && cha <86400000){
						NoticesList remindnotices = new NoticesList();
						remindnotices.setTypeId(11l);
						remindnotices.setStatusId(15l);
						remindnotices.setTitle("您有一个日程即将开始");
						remindnotices.setUrl("/daycalendar");
						remindnotices.setUserId(userId);
						remindnotices.setNoticeTime(new Date());
						
						NoticesList remindnoticeok = informService.save(remindnotices);
						
						informrelationservice.save(new NoticeUserRelation(remindnoticeok, user, false));
						
						scheduleList.setIsreminded(true);
						daydao.save(scheduleList);
					}
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		
		List<NoticeUserRelation> notice=irdao.findByReadAndUserId(false,user);//通知
		List<Mailreciver> mail=mdao.findByReadAndDelAndReciverId(false, false, user);//邮件
		List<Taskuser>  task=tadao.findByUserIdAndStatusId(user, 3);//新任务
		model.addAttribute("notice", notice.size());
		model.addAttribute("mail", mail.size());
		model.addAttribute("task", task.size());
		model.addAttribute("user", user);
		//展示用户操作记录 由于现在没有登陆 不能获取用户id
		List<UserLog> userLogs=userLogDao.findByUser(userId);
		req.setAttribute("userLogList", userLogs);
		return "index/index";
	}
	/**
	 * 菜单查找
	 * @param userId
	 * @param req
	 * @return
	 */
	@RequestMapping("menucha")
	public String menucha(HttpSession session, Model model,HttpServletRequest req){
		Long userId = Long.parseLong(session.getAttribute("userId") + "");
		User user=uDao.findOne(userId);
		String val=null;
		if(!StringUtils.isEmpty(req.getParameter("val"))){
			val=req.getParameter("val");
		}
		if(!StringUtils.isEmpty(val)){
			List<Rolemenu> oneMenuAll=rdao.findname(0L, user.getRole().getRoleId(), true, true, val);//找父菜单
			List<Rolemenu> twoMenuAll=null;
			for (int i = 0; i < oneMenuAll.size(); i++) {
				twoMenuAll=rdao.findbyparentxianall(oneMenuAll.get(i).getMenuId(), user.getRole().getRoleId(), true, true);//找子菜单
			}
			req.setAttribute("oneMenuAll", oneMenuAll);
			req.setAttribute("twoMenuAll", twoMenuAll);
		}else{
			menuService.findMenuSys(req,user);
		}
	
		return "common/leftlists";
		
	}
	@RequestMapping("userlogs")
	public String usreLog(@SessionAttribute("userId") Long userId,HttpServletRequest req){
		List<UserLog> userLogs=userLogDao.findByUser(userId);
		req.setAttribute("userLogList", userLogs);
		return "user/userlog";
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
		User user=uDao.findOne(userId);
		request.setAttribute("user", user);
		//计算三个模块的记录条数
		request.setAttribute("filenum", filedao.count());
		request.setAttribute("directornum", directorDao.count());
		request.setAttribute("discussnum", discussDao.count());
		
		List<Map<String, Object>> list = nm.findMyNoticeLimit(userId);
		model.addAttribute("user", user);
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
		System.out.println("通知"+list);
		model.addAttribute("noticeList", list);
		
		
		//列举计划
		List<Plan> plans=planDao.findByUserlimit(userId);
		model.addAttribute("planList", plans);
		List<SystemTypeList> ptype = (List<SystemTypeList>) typeDao.findByTypeModel("aoa_plan_list");
		List<SystemStatusList> pstatus = (List<SystemStatusList>) statusDao.findByStatusModel("aoa_plan_list");
		model.addAttribute("ptypelist", ptype);
		model.addAttribute("pstatuslist", pstatus);
		
		//列举便签
		List<Notepaper> notepapers=notepaperDao.findByUserIdOrderByCreateTimeDesc(userId);
		model.addAttribute("notepaperList", notepapers);
		
		//列举几个流程记录
		List<ProcessList> pList=processListDao.findlastthree(userId);
		model.addAttribute("processlist", pList);
		List<SystemStatusList> processstatus = (List<SystemStatusList>) statusDao.findByStatusModel("aoa_process_list");
		model.addAttribute("prostatuslist", processstatus);
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
