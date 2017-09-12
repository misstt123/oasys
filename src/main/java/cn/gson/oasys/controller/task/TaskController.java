package cn.gson.oasys.controller.task;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cn.gson.oasys.model.dao.system.StatusDao;
import cn.gson.oasys.model.dao.system.TypeDao;
import cn.gson.oasys.model.dao.taskdao.TaskDao;
import cn.gson.oasys.model.dao.user.DeptDao;
import cn.gson.oasys.model.dao.user.UserDao;
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
	
	
	
	/**
	 * 任务管理表格
	 * @return
	 */
	@RequestMapping("taskmanage")
	public ModelAndView  index(){
		ModelAndView mav=new  ModelAndView("task/taskmanage");
		//根据发布人id查询任务
		List<Tasklist> tasklist=tdao.findtask(1L);
		
		//查询类型表
		Iterable<SystemTypeList> typelist=tydao.findAll();
		
		//查询状态表
		Iterable<SystemStatusList> statuslist=sdao.findAll();
		//查询用户
		List<User> userlist=udao.findByUserId(1L);
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
	public ModelAndView  index2(){
		ModelAndView mav=new  ModelAndView("task/addtask");
		//查询类型表
		Iterable<SystemTypeList> typelist=tydao.findAll();
		//查询状态表
		Iterable<SystemStatusList> statuslist=sdao.findAll();
		mav.addObject("typelist", typelist);
		mav.addObject("statuslist", statuslist);
		return mav;
	}
	
	/**
	 * 新增任务
	 */
	@RequestMapping("addtasks")
	public String  addtask(HttpServletRequest request){
		String status=request.getParameter("status");
		String type=request.getParameter("type");
		String startDate=request.getParameter("startDate");
		String endDate=request.getParameter("endDate");
		String titleName=request.getParameter("titleName");
		String reciverList=request.getParameter("reciverList");
		String beizhu=request.getParameter("beizhu");
		String pingjia=request.getParameter("pingjia");
		String check=request.getParameter("check");
		String cancel=request.getParameter("cancel");
		Integer isTop = Integer.valueOf(check);
		Integer isCancel = Integer.valueOf(cancel);
		if(("on").equals(check)){
			isTop=1;
		}else if(("on").equals(cancel)){
			isCancel=1;
		}else if(("null").equals(check)){
			isTop=0;
		}else if(("null").equals(cancel)){
			isCancel=0;
		}
		System.out.println(check+"dd");
		System.out.println(cancel+"ss");
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
