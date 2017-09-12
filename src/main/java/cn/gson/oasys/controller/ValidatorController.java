package cn.gson.oasys.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


import cn.gson.oasys.model.dao.taskdao.TaskDao;
import cn.gson.oasys.model.entity.task.Tasklist;

@Controller
@RequestMapping("/")
public class ValidatorController {
	
	@Autowired
	private TaskDao taskDao;
	
	@RequestMapping("ck_addtask")
	public String addtask(Tasklist list,HttpServletRequest request){
		
		//System.out.println(list.getReciverlist());
		//taskDao.save(list);
		
		
		request.setAttribute("tasklist", list);
		
		
		return "forward:/addtasks";
		
	}

}
