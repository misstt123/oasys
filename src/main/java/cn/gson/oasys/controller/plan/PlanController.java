package cn.gson.oasys.controller.plan;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.support.DefaultConversionService;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import cn.gson.oasys.common.StringtoDate;
import cn.gson.oasys.common.formValid.BindingResultVOUtil;
import cn.gson.oasys.common.formValid.MapToList;
import cn.gson.oasys.common.formValid.ResultEnum;
import cn.gson.oasys.common.formValid.ResultVO;
import cn.gson.oasys.controller.attendce.AttendceController;
import cn.gson.oasys.model.dao.notedao.AttachmentDao;
import cn.gson.oasys.model.dao.plandao.PlanDao;
import cn.gson.oasys.model.dao.plandao.Planservice;
import cn.gson.oasys.model.dao.system.StatusDao;
import cn.gson.oasys.model.dao.system.TypeDao;
import cn.gson.oasys.model.dao.user.UserDao;
import cn.gson.oasys.model.dao.user.UserService;
import cn.gson.oasys.model.entity.note.Attachment;
import cn.gson.oasys.model.entity.plan.Plan;
import cn.gson.oasys.model.entity.system.SystemStatusList;
import cn.gson.oasys.model.entity.system.SystemTypeList;
import cn.gson.oasys.model.entity.user.User;
import cn.gson.oasys.services.file.FileServices;

@Controller
@RequestMapping("/")
public class PlanController {

	@Autowired
	PlanDao planDao;
	@Autowired
	Planservice planservice;
	@Autowired
	TypeDao typeDao;
	@Autowired
	StatusDao statusDao;
	@Autowired
	FileServices fServices;
	@Autowired
	UserDao userDao;
	@Autowired
	UserService userService;
	@Autowired
	AttachmentDao attachmentDao;

	List<Plan> pList;
	List<User> uList;
	Date startDate,endDate;
	String choose2;
	Logger log = LoggerFactory.getLogger(getClass());
	// 格式转化导入
	DefaultConversionService service = new DefaultConversionService();

	@RequestMapping("plandelete")
	public String DSAGec(HttpServletRequest request, HttpSession session) {
		long realuserid = Long.valueOf(session.getAttribute("userId") + "");
		long pid = Long.valueOf(request.getParameter("pid"));
		long userid = planDao.findOne(pid).getUser().getUserId();
		if (userid == realuserid) {
			planservice.delete(pid);
			return "redirect:/planview";
		} else {
			System.out.println("没有权限");
			return "redirect:/notlimit";
		}

	}

	// 计划管理
	@RequestMapping(value="planview", method = RequestMethod.GET)
	public String test(Model model, HttpSession session, 
			@RequestParam(value = "page", defaultValue = "0") int page,
			@RequestParam(value = "baseKey", required = false) String baseKey,
			@RequestParam(value = "type", required = false) String type,
			@RequestParam(value = "status", required = false) String status,
			@RequestParam(value = "time", required = false) String time,
			@RequestParam(value = "icon", required = false) String icon) {
		System.out.println("11"+baseKey);
		sortpaging(model, session, page, baseKey, type, status, time, icon);
		return "plan/planview";
	}

	

	@RequestMapping(value="planviewtable", method = RequestMethod.GET)
	public String testdd(Model model, HttpSession session,
			@RequestParam(value = "page", defaultValue = "0") int page,
			@RequestParam(value = "baseKey", required = false) String baseKey,
			@RequestParam(value = "type", required = false) String type,
			@RequestParam(value = "status", required = false) String status,
			@RequestParam(value = "time", required = false) String time,
			@RequestParam(value = "icon", required = false) String icon) {
		System.out.println("222"+baseKey);
		sortpaging(model, session, page, baseKey, type, status, time, icon);
		return "plan/planviewtable";
	}

	// 计划报表
	@RequestMapping("myplan")
	public String test2(HttpServletRequest request, Model model, HttpSession session, 
			@RequestParam(value = "page", defaultValue = "0") int page,
			@RequestParam(value = "baseKey", required = false) String baseKey) {
		plantablepaging(request, model, session, page, baseKey);
		return "plan/plantable";
	}

	// 真正的报表
	@RequestMapping("realplantable")
	public String test23(HttpServletRequest request, Model model, HttpSession session, 
			@RequestParam(value="pid",required=false) String pid,
			@RequestParam(value="comment",required=false) String comment,
			@RequestParam(value = "page", defaultValue = "0") int page,
			@RequestParam(value = "baseKey", required = false) String baseKey) {
		System.out.println("pid的"+pid);
		plantablepaging(request, model, session, page, baseKey);
		if(!StringUtils.isEmpty(pid)){
		Plan plan = planDao.findOne(Long.valueOf(pid));
		if(plan.getPlanComment()==null)
			plan.setPlanComment(comment);
		else
		plan.setPlanComment(plan.getPlanComment() + comment);
		planDao.save(plan);}
		return "plan/realplantable";
	}

	

	// 我的编辑
	@RequestMapping("planedit")
	public String test3(HttpServletRequest request, Model model) {
		long pid = Long.valueOf(request.getParameter("pid"));
		if (!StringUtils.isEmpty(request.getAttribute("errormess"))) {
			request.setAttribute("errormess", request.getAttribute("errormess"));
			request.setAttribute("plan", request.getAttribute("plan2"));
		} else if (!StringUtils.isEmpty(request.getAttribute("success"))) {
			request.setAttribute("success", request.getAttribute("success"));
			request.setAttribute("plan", request.getAttribute("plan2"));
		}
		// 新建
		if (pid == -1) {
			model.addAttribute("plan", null);
			model.addAttribute("pid", pid);
		} else if (pid > 0) {
			Plan plan = planDao.findOne(pid);
			model.addAttribute("plan", plan);
			model.addAttribute("pid", pid);
		}

		typestatus(model);
		return "plan/planedit";
	}


	@RequestMapping(value = "plansave", method = RequestMethod.GET)
	public void Datagr() {
	}

	@RequestMapping(value = "plansave", method = RequestMethod.POST)
	public String testMess(@RequestParam("file") MultipartFile file, HttpServletRequest req, @Valid Plan plan2,
			BindingResult br) throws IllegalStateException, IOException {
		service.addConverter(new StringtoDate());
		// 格式化开始日期和结束日期
		Date start = service.convert(plan2.getStartTime(), Date.class);
		Date end = service.convert(plan2.getEndTime(), Date.class);
		Attachment att = null;
		Long attid = null;
		Plan plan = null;

		HttpSession session = req.getSession();
		long userid = Long.valueOf(session.getAttribute("userId") + "");
		User user = userDao.findOne(userid);

		// 获取到类型和状态id
		String type = req.getParameter("type");
		String status = req.getParameter("status");
		long typeid = typeDao.findByTypeModelAndTypeName("aoa_plan_list", type).getTypeId();
		long statusid = statusDao.findByStatusModelAndStatusName("aoa_plan_list", status).getStatusId();
		long pid = Long.valueOf(req.getParameter("pid") + "");

		// 这里返回ResultVO对象，如果校验通过，ResultEnum.SUCCESS.getCode()返回的值为200；否则就是没有通过；
		ResultVO res = BindingResultVOUtil.hasErrors(br);
		if (!ResultEnum.SUCCESS.getCode().equals(res.getCode())) {
			List<Object> list = new MapToList<>().mapToList(res.getData());
			req.setAttribute("errormess", list.get(0).toString());
		}
		// 校验通过，下面写自己的逻辑业务
		else {
			if (!StringUtils.isEmpty(session.getAttribute("getId"))) {
				System.out.println("验证通过，进入狗太了");
			}
			// 新建
			if (pid == -1) {
				if (!file.isEmpty()) {
					att = (Attachment) fServices.savefile(file, user, null, false);
					attid = att.getAttachmentId();
				} else if (file.isEmpty())
					attid = null;

				plan = new Plan(typeid, statusid, attid, start, end, new Date(), plan2.getTitle(), plan2.getLabel(),
						plan2.getPlanContent(), plan2.getPlanSummary(), null, user);
				planDao.save(plan);
			}
			if (pid > 0) {
				plan = planDao.findOne(pid);
				if (plan.getAttachId() == null) {
					if (!file.isEmpty()) {
						att = (Attachment) fServices.savefile(file, user, null, false);
						attid = att.getAttachmentId();
						plan.setAttachId(attid);
						planDao.save(plan);
					}
				}
				if (plan.getAttachId() != null)
					fServices.updateatt(file, user, null, plan.getAttachId());
				planservice.updateplan(typeid, statusid, start, end, plan2.getTitle(), plan2.getLabel(),
						plan2.getPlanContent(), plan2.getPlanSummary(), pid);

			}
			req.setAttribute("success", "后台验证成功");
		}
		req.setAttribute("plan2", plan2);
		return "forward:/planedit";
	}


	private void typestatus(Model model) {
		List<SystemTypeList> type = (List<SystemTypeList>) typeDao.findByTypeModel("aoa_plan_list");
		List<SystemStatusList> status = (List<SystemStatusList>) statusDao.findByStatusModel("aoa_plan_list");
		model.addAttribute("typelist", type);
		model.addAttribute("statuslist", status);
	}
	private void sortpaging(Model model, HttpSession session, int page, String baseKey, String type, String status,
			String time, String icon) {
		new AttendceController().setSomething(baseKey, type, status, time, icon, model);
		Long userid = Long.valueOf(session.getAttribute("userId") + "");
		User user = userDao.findOne(userid);
		Page<Plan> page2 = planservice.paging(page, baseKey, userid, type, status, time);
		typestatus(model);
		model.addAttribute("plist", page2.getContent());
		model.addAttribute("page", page2);
		model.addAttribute("url", "planviewtable");
	}
	
	//计划报表
	private void plantablepaging(HttpServletRequest request, Model model, HttpSession session, int page,
			String baseKey) {
		List<SystemTypeList> type = (List<SystemTypeList>) typeDao.findByTypeModel("aoa_plan_list");
		List<SystemStatusList> status = (List<SystemStatusList>) statusDao.findByStatusModel("aoa_plan_list");
		List<Plan> plans = new ArrayList<>();
		// 利用set过滤掉重复的plan_user_id 因为set不能重复
		Set<Long> number = new HashSet();
		Plan plan2;
		long typeid = 13;Long choose;
		service.addConverter(new StringtoDate());
		String starttime = request.getParameter("starttime");
		String endtime = request.getParameter("endtime");
		System.out.println(starttime+";"+endtime);
		Date start = service.convert(starttime, Date.class);
		Date end = service.convert(endtime, Date.class);
		String choose1=request.getParameter("choose");
		//分页的时候记住
		if(start==null&&end==null&&choose1==null)
			{start=startDate;end=endDate;choose1=choose2;}
		if(start!=null&&end!=null&&choose1!=null)
		{startDate=start;endDate=end;choose2=choose1;}
		// 1是日计划2是周计划3是月计划
		if(choose1==null||choose1.length()==0)
			choose=1l;
		else
		 choose = Long.valueOf(choose1);
		if (choose == 1) {
			typeid = 13l;
		}
		if (choose == 2) {
			typeid = 14l;
		}
		if (choose == 3) {
			typeid = 15l;
		}
		pList = (List<Plan>) planDao.findAll();
		Long userid=Long.valueOf(session.getAttribute("userId")+"");
		Page<User> uListpage =userService.findmyemployuser(page, baseKey, userid);
		for (Plan plan : pList) {
			number.add(plan.getUser().getUserId());
		}
		System.out.println(number);
		// 找到相对应的计划记录
		for (Long num : number) { 
			plan2 = planDao.findlatest(start, end, num, typeid);
			if (plan2 != null)
				plans.add(plan2);
		}
		System.out.println("有没有plan"+plans);
		// 将用户名和list绑定在一起
		Map<String, Plan> uMap = new HashMap<>();
		for (User user : uListpage) {
			if(plans.size()==0)
				uMap.put(user.getUserName(), null);
			for (Plan plan : plans) {
				if (user.getUserId() == plan.getUser().getUserId()) {
					uMap.put(user.getUserName(), plan);
					break;
				} else {
					uMap.put(user.getUserName(), null);
				}
			}
			System.out.println("map"+uMap);
		}
        System.out.println(uListpage.getContent());
    	
        //记住开始时间和结束时间以及选择
        model.addAttribute("starttime",starttime);
        model.addAttribute("endtime", endtime);
    	model.addAttribute("choose", choose1);
        
		model.addAttribute("uMap", uMap);
		model.addAttribute("type", type);
		model.addAttribute("status", status);
		model.addAttribute("plans", plans);
		model.addAttribute("plist", pList);
		model.addAttribute("ulist", uListpage.getContent());
		model.addAttribute("page", uListpage);
		model.addAttribute("url", "realplantable");
	}
	
}
