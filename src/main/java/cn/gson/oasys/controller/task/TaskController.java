package cn.gson.oasys.controller.task;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class TaskController {
	
	/**
	 * 任务管理表格
	 * @return
	 */
	@RequestMapping("taskmanage")
	public String  index(){
		return "task/taskmanage";
	}
	
	/**
	 * 新增任务
	 */
	@RequestMapping("addtask")
	public String  index2(){
		return "task/addtaskindex";
	}
	

	/**
	 * 修改任务
	 */
	@RequestMapping("edittask")
	public String  index3(){
		return "task/addtaskindex";
	}
	
	/**
	 * 查看任务
	 */
	@RequestMapping("seetask")
	public String  index4(){
		return "task/seetaskindex";
	}
	
	/**
	 * 我的任务
	 */
	@RequestMapping("mytask")
	public String  index5(){
		return "task/mytask";
	}

}
