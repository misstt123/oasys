package cn.gson.oasys.controller.task;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.StringTokenizer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cn.gson.oasys.model.dao.roledao.RoleDao;
import cn.gson.oasys.model.dao.system.StatusDao;
import cn.gson.oasys.model.dao.system.TypeDao;
import cn.gson.oasys.model.dao.taskdao.TaskDao;
import cn.gson.oasys.model.dao.taskdao.TaskloggerDao;
import cn.gson.oasys.model.dao.taskdao.TaskuserDao;
import cn.gson.oasys.model.dao.user.DeptDao;
import cn.gson.oasys.model.dao.user.UserDao;
import cn.gson.oasys.model.entity.role.Role;
import cn.gson.oasys.model.entity.system.SystemStatusList;
import cn.gson.oasys.model.entity.system.SystemTypeList;
import cn.gson.oasys.model.entity.task.Tasklist;
import cn.gson.oasys.model.entity.task.Tasklogger;
import cn.gson.oasys.model.entity.task.Taskuser;
import cn.gson.oasys.model.entity.user.Dept;
import cn.gson.oasys.model.entity.user.User;
import cn.gson.oasys.services.task.TaskService;

@Controller
@RequestMapping("/")
public class TaskController {

	@Autowired
	private TaskDao tdao;
	@Autowired
	private StatusDao sdao;
	@Autowired
	private TypeDao tydao;
	@Autowired
	private UserDao udao;
	@Autowired
	private DeptDao ddao;
	@Autowired
	private RoleDao rdao;
	@Autowired
	private TaskuserDao tudao;
	@Autowired
	private TaskService tservice;
	@Autowired
	private TaskloggerDao tldao;

	/**
	 * 任务管理表格
	 * 
	 * @return
	 */
	@RequestMapping("taskmanage")
	public ModelAndView index(HttpSession session) {

		String userId = ((String) session.getAttribute("userId")).trim();
		Long userid = Long.parseLong(userId);
		ModelAndView mav = new ModelAndView("task/taskmanage");
		// 根据发布人id查询任务
		List<Tasklist> tasklist = tdao.findtask(userid);

		// 查询类型表
		Iterable<SystemTypeList> typelist = tydao.findAll();

		// 查询状态表
		Iterable<SystemStatusList> statuslist = sdao.findAll();
		// 查询用户
		List<User> userlist = udao.findByUserId(userid);
		String username = userlist.get(0).getUserName();
		// 从用户表里面得到deptid
		Long ss = userlist.get(0).getDept().getDeptId();
		// 查询部门
		List<Dept> dept = ddao.findByDeptId(ss);
		// 获取部门名称
		String deptname = dept.get(0).getDeptName();

		mav.addObject("tasklist", tasklist);
		mav.addObject("typelist", typelist);
		mav.addObject("statuslist", statuslist);
		mav.addObject("username", username);
		mav.addObject("deptname", deptname);
		return mav;
	}

	/**
	 * 点击新增任务
	 */
	@RequestMapping("addtask")
	public ModelAndView index2(HttpSession session) {
		String userId = ((String) session.getAttribute("userId")).trim();
		Long userid = Long.parseLong(userId);

		ModelAndView mav = new ModelAndView("task/addtask");
		// 查询类型表
		Iterable<SystemTypeList> typelist = tydao.findAll();
		// 查询状态表
		Iterable<SystemStatusList> statuslist = sdao.findAll();
		// 查询部门下面的员工
		List<User> emplist = udao.findByFatherId(userid);

		// 查询部门表
		Iterable<Dept> deptlist = ddao.findAll();
		// 查角色表
		Iterable<Role> rolelist = rdao.findAll();
		mav.addObject("typelist", typelist);
		mav.addObject("statuslist", statuslist);
		mav.addObject("emplist", emplist);
		mav.addObject("deptlist", deptlist);
		mav.addObject("rolelist", rolelist);
		return mav;
	}

	/**
	 * 新增任务保存
	 */
	@RequestMapping("addtasks")
	public String addtask(HttpSession session, HttpServletRequest request) {
		String userId = ((String) session.getAttribute("userId")).trim();
		Long userid = Long.parseLong(userId);
		User userlist = udao.findOne(userid);
		Tasklist list = (Tasklist) request.getAttribute("tasklist");
		list.setUsersId(userlist);
		list.setPublishTime(new Date());

		tdao.save(list);
		// 分割任务接收人
		StringTokenizer st = new StringTokenizer(list.getReciverlist(), ";");
		while (st.hasMoreElements()) {
			User reciver = udao.findid(st.nextToken());
			Taskuser task = new Taskuser();
			task.setTaskId(list);
			task.setUserId(reciver);
			task.setStatusId(list.getStatusId());
			// 存任务中间表
			tudao.save(task);

		}

		return "redirect:/taskmanage";
	}

	/**
	 * 修改任务
	 */
	@RequestMapping("edittasks")
	public ModelAndView index3(HttpServletRequest req, HttpSession session) {
		String userId = ((String) session.getAttribute("userId")).trim();
		Long userid = Long.parseLong(userId);
		
		ModelAndView mav = new ModelAndView("task/edittask");
		// 得到链接中的任务id
		String taskid = req.getParameter("id");
		Long ltaskid = Long.parseLong(taskid);
		// 通过任务id得到相应的任务
		Tasklist task = tdao.findOne(ltaskid);
		// 得到状态id
		Long statusid = task.getStatusId().longValue();
		// 得到类型id
		Long typeid = task.getTypeId();
		// 查看状态表
		SystemStatusList status = sdao.findOne(statusid);
		// 查询类型表
		SystemTypeList type = tydao.findOne(typeid);

		// 查询部门下面的员工
		List<User> emplist = udao.findByFatherId(userid);

		// 查询部门表
		Iterable<Dept> deptlist = ddao.findAll();
		// 查角色表
		Iterable<Role> rolelist = rdao.findAll();
		mav.addObject("type", type);
		mav.addObject("status", status);
		mav.addObject("emplist", emplist);
		mav.addObject("deptlist", deptlist);
		mav.addObject("rolelist", rolelist);
		mav.addObject("task", task);
		return mav;
	}

	/**
	 * 修改任务确定
	 */
	@RequestMapping("update")
	public String update(Tasklist task,HttpSession session) {
		String userId = ((String) session.getAttribute("userId")).trim();
		Long userid = Long.parseLong(userId);
		User userlist = udao.findOne(userid);
		task.setUsersId(userlist);
		task.setPublishTime(new Date());
		tservice.save(task);
		
		// 分割任务接收人   还要查找联系人的主键
		StringTokenizer st = new StringTokenizer(task.getReciverlist(), ";");
		while (st.hasMoreElements()) {
			User reciver = udao.findid(st.nextToken());
			Long pkid=udao.findpkId(task.getTaskId(), reciver.getUserId());
			Taskuser tasku = new Taskuser();
			tasku.setPkId(pkid);
			tasku.setTaskId(task);
			tasku.setUserId(reciver);
			tasku.setStatusId(task.getStatusId());
			// 存任务中间表
			tudao.save(tasku);

		}

		return "redirect:/taskmanage";

	}

	/**
	 * 查看任务
	 */
	@RequestMapping("seetasks")
	public ModelAndView index4(HttpServletRequest req) {
		ModelAndView mav = new ModelAndView("task/seetask");
		// 得到任务的 id
		String taskid = req.getParameter("id");
		Long ltaskid = Long.parseLong(taskid);
		// 通过任务id得到相应的任务
		Tasklist task = tdao.findOne(ltaskid);
		Long statusid = task.getStatusId().longValue();

		// 查看状态表
		SystemStatusList status = sdao.findOne(statusid);
		// 查看发布人
		User user = udao.findOne(task.getUsersId().getUserId());
		// 查看任务日志表
		List<Tasklogger> logger = tldao.findByTaskId(ltaskid);

		// 通过任务id查看总状态
		/*
		 * List<Integer> statu=tudao.findByTaskId(taskids); //选出最小的状态id Integer
		 * min=statu.get(0); for (Integer integer : statu) {
		 * if(integer.intValue()<min){ min=integer; } }
		 * 
		 * int up=tservice.updateStatusid(taskids, min); if(up>0){
		 * System.out.println("任务状态修改成功!"); }
		 */
		System.out.println(logger);
		mav.addObject("task", task);
		mav.addObject("user", user);
		mav.addObject("status", status);
		mav.addObject("loggerlist", logger);
		return mav;
	}

	/**
	 * 存反馈日志
	 * 
	 * @return
	 */
	@RequestMapping("tasklogger")
	public String tasklogger(Tasklogger logger, HttpSession session) {
		String userId = ((String) session.getAttribute("userId")).trim();
		Long userid = Long.parseLong(userId);
		User userlist = udao.findOne(userid);
		logger.setCreateTime(new Date());
		logger.setUsername(userlist.getUserName());
		// 存日志
		tldao.save(logger);
		// 修改任务状态
		tservice.updateStatusid(logger.getTaskId().getTaskId(), logger.getLoggerStatusid());
		//修改任务中间表状态
		tservice.updateUStatusid(logger.getTaskId().getTaskId(), logger.getLoggerStatusid());

		return "redirect:/taskmanage";

	}

	/**
	 * 我的任务
	 */
	@RequestMapping("mytask")
	public ModelAndView index5(HttpSession session) {

		String userId = ((String) session.getAttribute("userId")).trim();
		Long userid = Long.parseLong(userId);
		ModelAndView mav = new ModelAndView("task/mytask");
		// 根据接收人id查询任务id
		List<Long> taskid=tudao.findByUserId(2l);
		List<Tasklist> taskli=new ArrayList<>();
		for (Long long1 : taskid) {
			//根据找出的taskid查找任务
			Tasklist tasklist = tdao.findByTaskId(long1);
			taskli.add(tasklist);
			
		}

		// 查询类型表
		Iterable<SystemTypeList> typelist = tydao.findAll();

		// 查询状态表
		Iterable<SystemStatusList> statuslist = sdao.findAll();
		// 查询用户
		List<User> userlist = udao.findByUserId(2l);
		String username = userlist.get(0).getUserName();
		// 从用户表里面得到deptid
		Long ss = userlist.get(0).getDept().getDeptId();
		// 查询部门
		List<Dept> dept = ddao.findByDeptId(ss);
		// 获取部门名称
		String deptname = dept.get(0).getDeptName();
		System.out.println(taskli);
		
		mav.addObject("tasklist", taskli);
		mav.addObject("typelist", typelist);
		mav.addObject("statuslist", statuslist);
		mav.addObject("username", username);
		mav.addObject("deptname", deptname);
		return mav;
		
	}
	
	@RequestMapping("myseetasks")
	public ModelAndView myseetask(HttpServletRequest req){
		ModelAndView mav = new ModelAndView("task/myseetask");
		// 得到任务的 id
		String taskid = req.getParameter("id");
		Long ltaskid = Long.parseLong(taskid);
		// 通过任务id得到相应的任务
		Tasklist task = tdao.findOne(ltaskid);
		Long statusid = task.getStatusId().longValue();

		// 查看状态表
		SystemStatusList status = sdao.findOne(statusid);
		// 查看发布人
		User user = udao.findOne(task.getUsersId().getUserId());
		// 查看任务日志表
		List<Tasklogger> logger = tldao.findByTaskId(ltaskid);

		// 通过任务id查看总状态
		/*
		 * List<Integer> statu=tudao.findByTaskId(taskids); //选出最小的状态id Integer
		 * min=statu.get(0); for (Integer integer : statu) {
		 * if(integer.intValue()<min){ min=integer; } }
		 * 
		 * int up=tservice.updateStatusid(taskids, min); if(up>0){
		 * System.out.println("任务状态修改成功!"); }
		 */
		
		mav.addObject("task", task);
		mav.addObject("user", user);
		mav.addObject("status", status);
		mav.addObject("loggerlist", logger);
		return mav;
		
	}
	
	/**
	 * 从我的任务查看里面修改状态和日志
	 */
	@RequestMapping("uplogger")
  public String updatelo(Tasklogger logger, HttpSession session){
		//获取用户id
		String userId = ((String) session.getAttribute("userId")).trim();
		Long userid = Long.parseLong(userId);
		User userlist = udao.findOne(userid);
		logger.setCreateTime(new Date());
		logger.setUsername(userlist.getUserName());
		// 存日志
		tldao.save(logger);
		// 修改任务状态
		tservice.updateStatusid(logger.getTaskId().getTaskId(), logger.getLoggerStatusid());
		//修改任务中间表状态
		tservice.updateUStatusid(logger.getTaskId().getTaskId(), logger.getLoggerStatusid());

		return "redirect:/mytask";
	  
  }
}
