package cn.gson.oasys.controller.task;

import java.util.Date;
import java.util.List;
import java.util.StringTokenizer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cn.gson.oasys.model.dao.roledao.RoleDao;
import cn.gson.oasys.model.dao.system.StatusDao;
import cn.gson.oasys.model.dao.system.TypeDao;
import cn.gson.oasys.model.dao.taskdao.TaskDao;
import cn.gson.oasys.model.dao.user.DeptDao;
import cn.gson.oasys.model.dao.user.UserDao;
import cn.gson.oasys.model.entity.role.Role;
import cn.gson.oasys.model.entity.system.SystemStatusList;
import cn.gson.oasys.model.entity.system.SystemTypeList;
import cn.gson.oasys.model.entity.task.Tasklist;
import cn.gson.oasys.model.entity.user.Dept;
import cn.gson.oasys.model.entity.user.User;

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
	
	
	
	/**
	 * 任务管理表格
	 * @return
	 */
	@RequestMapping("taskmanage")
	public ModelAndView  index(HttpSession session){
		
		String userId=((String) session.getAttribute("userId")).trim();
		Long userid=Long.parseLong(userId);
		ModelAndView mav=new  ModelAndView("task/taskmanage");
		//根据发布人id查询任务
		List<Tasklist> tasklist=tdao.findtask(userid);
		
		//查询类型表
		Iterable<SystemTypeList> typelist=tydao.findAll();
		
		//查询状态表
		Iterable<SystemStatusList> statuslist=sdao.findAll();
		//查询用户
		List<User> userlist=udao.findByUserId(userid);
		String  username=userlist.get(0).getUserName();
		//从用户表里面得到deptid
		Long ss=userlist.get(0).getDept().getDeptId();
		//查询部门
		List<Dept> dept=ddao.findByDeptId(ss);
		//获取部门名称
		String deptname=dept.get(0).getDeptName();
		
		mav.addObject("tasklist", tasklist);
		mav.addObject("typelist", typelist);
		mav.addObject("statuslist", statuslist);
		mav.addObject("username", username);
		mav.addObject("deptname", deptname);
		return mav;
	}
	
	/**
	 * 新增任务
	 */
	@RequestMapping("addtask")
	public ModelAndView  index2(HttpSession session){
		String userId=((String) session.getAttribute("userId")).trim();
		Long userid=Long.parseLong(userId);
		
		ModelAndView mav=new  ModelAndView("task/addtask");
		//查询类型表
		Iterable<SystemTypeList> typelist=tydao.findAll();
		//查询状态表
		Iterable<SystemStatusList> statuslist=sdao.findAll();
		//查询部门下面的员工
		List<User> emplist=udao.findByFatherId(userid);
		
		//查询部门表
		Iterable<Dept> deptlist=ddao.findAll();
		//查角色表
		Iterable<Role> rolelist=rdao.findAll();
		mav.addObject("typelist", typelist);
		mav.addObject("statuslist", statuslist);
		mav.addObject("emplist", emplist);
		mav.addObject("deptlist", deptlist);
		mav.addObject("rolelist", rolelist);
		return mav;
	}
	
	/**
	 * 新增任务
	 */
	@RequestMapping("addtasks")
	public String  addtask(HttpSession session,HttpServletRequest request){
		String userId=((String) session.getAttribute("userId")).trim();
		Long userid=Long.parseLong(userId);
		User userlist=udao.findOne(userid);
		Tasklist list=(Tasklist) request.getAttribute("tasklist");
		list.setUsersId(userlist);
		list.setPublishTime(new Date());
		tdao.save(list);
		StringTokenizer st=new StringTokenizer(list.getReciverlist(),";");
		while(st.hasMoreElements()){
			Long ss=udao.findid(st.nextToken());
			
			
		}
		/*System.out.println(list.getReciverlist());
		System.out.println(list);*/
		return "redirect:/taskmanage";
	}
	

	/**
	 * 修改任务
	 */
	@RequestMapping("edittask")
	public String  index3(){
		return "task/addtask";
	}
	
	/**
	 * 查看任务
	 */
	@RequestMapping("seetask")
	public String  index4(){
		return "task/seetask";
	}
	
	/**
	 * 我的任务
	 */
	@RequestMapping("mytask")
	public String  index5(){
		return "task/mytask";
	}

}
