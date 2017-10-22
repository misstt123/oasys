package cn.gson.oasys.controller.task;

import java.text.ParseException;


import java.util.Date;

import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.StringTokenizer;


import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.util.StringUtil;

import cn.gson.oasys.model.dao.roledao.RoleDao;
import cn.gson.oasys.model.dao.system.StatusDao;
import cn.gson.oasys.model.dao.system.TypeDao;
import cn.gson.oasys.model.dao.taskdao.TaskDao;
import cn.gson.oasys.model.dao.taskdao.TaskloggerDao;
import cn.gson.oasys.model.dao.taskdao.TaskuserDao;
import cn.gson.oasys.model.dao.user.DeptDao;
import cn.gson.oasys.model.dao.user.PositionDao;
import cn.gson.oasys.model.dao.user.UserDao;
import cn.gson.oasys.model.entity.role.Role;
import cn.gson.oasys.model.entity.system.SystemStatusList;
import cn.gson.oasys.model.entity.system.SystemTypeList;
import cn.gson.oasys.model.entity.task.Tasklist;
import cn.gson.oasys.model.entity.task.Tasklogger;
import cn.gson.oasys.model.entity.task.Taskuser;
import cn.gson.oasys.model.entity.user.Dept;
import cn.gson.oasys.model.entity.user.Position;
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
	private TaskuserDao tudao;
	@Autowired
	private TaskService tservice;
	@Autowired
	private TaskloggerDao tldao;
	@Autowired
	private PositionDao pdao;
	/**
	 * 任务管理表格
	 * 
	 * @return
	 */
	@RequestMapping("taskmanage")
	public String index(Model model,
			@SessionAttribute("userId") Long userId,
			@RequestParam(value = "page", defaultValue = "0") int page,
			@RequestParam(value = "size", defaultValue = "10") int size) {

		// 通过发布人id找用户
		User tu = udao.findOne(userId);
		// 根据发布人id查询任务
		Page<Tasklist> tasklist=tservice.index(page, size, null, tu);
		List<Map<String, Object>> list=tservice.index2(tasklist, tu);
	
		model.addAttribute("tasklist", list);
		model.addAttribute("page", tasklist);
		model.addAttribute("url", "paixu");
		return "task/taskmanage";
	}
	
	/**
	 * 各种排序
	 */
	@RequestMapping("paixu")
	public String paixu(HttpServletRequest request, 
			@SessionAttribute("userId") Long userId, Model model,
			@RequestParam(value = "page", defaultValue = "0") int page,
			@RequestParam(value = "size", defaultValue = "10") int size) {
	
		// 通过发布人id找用户
		User tu = udao.findOne(userId);
		String val=null;
		if(!StringUtil.isEmpty(request.getParameter("val"))){
			val = request.getParameter("val").trim();
			model.addAttribute("sort", "&val="+val);
		}
		
		Page<Tasklist> tasklist=tservice.index(page, size, val, tu);
		List<Map<String, Object>> list=tservice.index2(tasklist, tu);
		model.addAttribute("tasklist", list);
		model.addAttribute("page", tasklist);
		model.addAttribute("url", "paixu");
		
		return "task/managetable";

	}


	/**
	 * 点击新增任务
	 */
	@RequestMapping("addtask")
	public ModelAndView index2(@SessionAttribute("userId") Long userId,
			@RequestParam(value = "page", defaultValue = "0") int page,
			@RequestParam(value = "size", defaultValue = "10") int size) {
		Pageable pa=new PageRequest(page, size);
		ModelAndView mav = new ModelAndView("task/addtask");
		// 查询类型表
		Iterable<SystemTypeList> typelist = tydao.findAll();
		// 查询状态表
		Iterable<SystemStatusList> statuslist = sdao.findAll();
		// 查询部门下面的员工
		Page<User> pagelist = udao.findByFatherId(userId,pa);
		List<User> emplist=pagelist.getContent();
		// 查询部门表
		Iterable<Dept> deptlist = ddao.findAll();
		// 查职位表
		Iterable<Position> poslist = pdao.findAll();
		mav.addObject("typelist", typelist);
		mav.addObject("statuslist", statuslist);
		mav.addObject("emplist", emplist);
		mav.addObject("deptlist", deptlist);
		mav.addObject("poslist", poslist);
		mav.addObject("page", pagelist);
		mav.addObject("url", "names");
		mav.addObject("qufen", "任务");
		return mav;
	}

	/**
	 * 新增任务保存
	 */
	@RequestMapping("addtasks")
	public String addtask(@SessionAttribute("userId") Long userId, HttpServletRequest request) {
		User userlist = udao.findOne(userId);
		Tasklist list = (Tasklist) request.getAttribute("tasklist");
		request.getAttribute("success");
		list.setUsersId(userlist);
		list.setPublishTime(new Date());
		list.setModifyTime(new Date());
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
	public ModelAndView index3(HttpServletRequest req, @SessionAttribute("userId") Long userId,
			@RequestParam(value = "page", defaultValue = "0") int page,
			@RequestParam(value = "size", defaultValue = "10") int size) {
		Pageable pa=new PageRequest(page, size);
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
		Page<User> pagelist = udao.findByFatherId(userId,pa);
		List<User> emplist=pagelist.getContent();

		// 查询部门表
		Iterable<Dept> deptlist = ddao.findAll();
		// 查职位表
		Iterable<Position> poslist = pdao.findAll();
		mav.addObject("type", type);
		mav.addObject("status", status);
		mav.addObject("emplist", emplist);
		mav.addObject("deptlist", deptlist);
		mav.addObject("poslist", poslist);
		mav.addObject("task", task);
		mav.addObject("page", pagelist);
		mav.addObject("url", "names");
		mav.addObject("qufen", "任务");
		return mav;
	}

	/**
	 * 修改任务确定
	 */
	@RequestMapping("update")
	public String update(Tasklist task, HttpSession session) {
		String userId = ((String) session.getAttribute("userId")).trim();
		Long userid = Long.parseLong(userId);
		User userlist = udao.findOne(userid);
		task.setUsersId(userlist);
		task.setPublishTime(new Date());
		task.setModifyTime(new Date());
		tservice.save(task);

		// 分割任务接收人 还要查找联系人的主键
		StringTokenizer st = new StringTokenizer(task.getReciverlist(), ";");
		while (st.hasMoreElements()) {
			User reciver = udao.findid(st.nextToken());
			Long pkid = udao.findpkId(task.getTaskId(), reciver.getUserId());
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

		// 根据状态id查看状态表
		SystemStatusList status = sdao.findOne(statusid);
		// 查看状态表
		Iterable<SystemStatusList> statuslist = sdao.findAll();
		// 查看发布人
		User user = udao.findOne(task.getUsersId().getUserId());
		// 查看任务日志表
		List<Tasklogger> logger = tldao.findByTaskId(ltaskid);
		mav.addObject("task", task);
		mav.addObject("user", user);
		mav.addObject("status", status);
		mav.addObject("loggerlist", logger);
		mav.addObject("statuslist", statuslist);
		return mav;
	}

	/**
	 * 存反馈日志
	 * 
	 * @return
	 */
	@RequestMapping("tasklogger")
	public String tasklogger(Tasklogger logger, @SessionAttribute("userId") Long userId) {
		User userlist = udao.findOne(userId);
		logger.setCreateTime(new Date());
		logger.setUsername(userlist.getUserName());
		// 存日志
		tldao.save(logger);
		// 修改任务状态
		tservice.updateStatusid(logger.getTaskId().getTaskId(), logger.getLoggerStatusid());
		// 修改任务中间表状态
		tservice.updateUStatusid(logger.getTaskId().getTaskId(), logger.getLoggerStatusid());

		return "redirect:/taskmanage";

	}

	/**
	 * 我的任务
	 */
	@RequestMapping("mytask")
	public String index5(@SessionAttribute("userId") Long userId, Model model,
			@RequestParam(value = "page", defaultValue = "0") int page,
			@RequestParam(value = "size", defaultValue = "10") int size) {
		Pageable pa=new PageRequest(page, size);
		Page<Tasklist> tasklist= tservice.index3(userId, null, page, size);
		
		Page<Tasklist> tasklist2=tdao.findByTickingIsNotNull(pa);
		if(tasklist!=null){
			List<Map<String, Object>> list=tservice.index4(tasklist, userId);
			model.addAttribute("page", tasklist);
			model.addAttribute("tasklist", list);
		}else{
			List<Map<String, Object>> list2=tservice.index4(tasklist2, userId);
			model.addAttribute("page", tasklist2);
			model.addAttribute("tasklist", list2);
		}
		model.addAttribute("url", "mychaxun");
		return "task/mytask";

	}
	
	/**
	 * 在我的任务里面进行查询
	 * 
	 * @throws ParseException
	 */
	@RequestMapping("mychaxun")
	public String select(HttpServletRequest request, @SessionAttribute("userId") Long userId, Model model,
			@RequestParam(value = "page", defaultValue = "0") int page,
			@RequestParam(value = "size", defaultValue = "10") int size) throws ParseException {
	
		String title =null;
		if(!StringUtil.isEmpty(request.getParameter("title"))){
			 title = request.getParameter("title").trim();
		}
		Page<Tasklist> tasklist= tservice.index3(userId, title, page, size);
		List<Map<String, Object>> list=tservice.index4(tasklist, userId);
		model.addAttribute("tasklist", list);
		model.addAttribute("page", tasklist);
		model.addAttribute("url", "mychaxun");
		model.addAttribute("sort", "&title="+title);
		return "task/mytasklist";
	}


	@RequestMapping("myseetasks")
	public ModelAndView myseetask(HttpServletRequest req, @SessionAttribute("userId") Long userId) {

		ModelAndView mav = new ModelAndView("task/myseetask");
		// 得到任务的 id
		String taskid = req.getParameter("id");

		Long ltaskid = Long.parseLong(taskid);
		// 通过任务id得到相应的任务
		Tasklist task = tdao.findOne(ltaskid);

		// 查看状态表
		Iterable<SystemStatusList> statuslist = sdao.findAll();
		// 查询接收人的任务状态
		Long ustatus = tudao.findByuserIdAndTaskId(userId, ltaskid);

		SystemStatusList status = sdao.findOne(ustatus);
		/*System.out.println(status);*/

		// 查看发布人
		User user = udao.findOne(task.getUsersId().getUserId());
		// 查看任务日志表
		List<Tasklogger> logger = tldao.findByTaskId(ltaskid);

		mav.addObject("task", task);
		mav.addObject("user", user);
		mav.addObject("status", status);
		mav.addObject("statuslist", statuslist);
		mav.addObject("loggerlist", logger);
		return mav;

	}

	/**
	 * 从我的任务查看里面修改状态和日志
	 */
	@RequestMapping("uplogger")
	public String updatelo(Tasklogger logger, @SessionAttribute("userId") Long userId) {
		System.out.println(logger.getLoggerStatusid());
		// 获取用户id
		
		// 查找用户
		User user = udao.findOne(userId);
		// 查任务
		Tasklist task = tdao.findOne(logger.getTaskId().getTaskId());
		logger.setCreateTime(new Date());
		logger.setUsername(user.getUserName());
		// 存日志
		tldao.save(logger);

		// 修改任务中间表状态
		Long pkid = udao.findpkId(logger.getTaskId().getTaskId(), userId);
		Taskuser tasku = new Taskuser();
		tasku.setPkId(pkid);
		tasku.setTaskId(task);
		tasku.setUserId(user);
		if (!Objects.isNull(logger.getLoggerStatusid())) {

			tasku.setStatusId(logger.getLoggerStatusid());
		}
		// 存任务中间表
		tudao.save(tasku);
		
		// 修改任务状态
		// 通过任务id查看总状态
		
		List<Integer> statu = tudao.findByTaskId(logger.getTaskId().getTaskId());
		System.out.println(statu);
		// 选出最小的状态id 修改任务表里面的状态
		Integer min = statu.get(0);
		for (Integer integer : statu) {
			if (integer.intValue() < min) {
				min = integer;
			}
		}

		int up = tservice.updateStatusid(logger.getTaskId().getTaskId(), min);
		/*System.out.println(logger.getTaskId().getTaskId() + "aaaa");
		System.out.println(min + "wwww");
		System.out.println(up + "pppppp");*/
		if (up > 0) {
			System.out.println("任务状态修改成功!");
		}

		return "redirect:/mytask";

	}

	/**
	 * 根据发布人这边删除任务和相关联系
	 * @param req
	 * @param session
	 * @return
	 */
	@RequestMapping("shanchu")
	public String delete(HttpServletRequest req, @SessionAttribute("userId") Long userId) {
		// 得到任务的 id
		String taskid = req.getParameter("id");
		Long ltaskid = Long.parseLong(taskid);
		
		// 根据任务id找出这条任务
		Tasklist task = tdao.findOne(ltaskid);
		if(task.getUsersId().getUserId().equals(userId)){
			// 删除日志表
			int i=tservice.detelelogger(ltaskid);
			System.out.println(i+"mmmmmmmmmmmm");
			// 分割任务接收人 还要查找联系人的主键并删除接收人中间表
			StringTokenizer st = new StringTokenizer(task.getReciverlist(), ";");
			while (st.hasMoreElements()) {
				User reciver = udao.findid(st.nextToken());
				Long pkid = udao.findpkId(task.getTaskId(), reciver.getUserId());
				int m=tservice.delete(pkid);
				System.out.println(m+"sssssssssss");
				
			}
			// 删除这条任务
			tservice.deteletask(task);
		}else{
			System.out.println("权限不匹配，不能删除");
			return "redirect:/notlimit";

		}
		return "redirect:/taskmanage";

	}

	/**
	 * 接收人这边删除
	 */
	@RequestMapping("myshanchu")
	public String mydelete(HttpServletRequest req, @SessionAttribute("userId") Long userId) {
		// 用户id
		// 得到任务的 id
		String taskid = req.getParameter("id");
		Long ltaskid = Long.parseLong(taskid);
		Long pkid = udao.findpkId(ltaskid, userId);
		tservice.delete(pkid);

		return "redirect:/mytask";

	}



}
