package cn.gson.oasys.controller.user;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.gson.oasys.model.dao.user.DeptDao;
import cn.gson.oasys.model.entity.user.Dept;

@Controller
@RequestMapping("/")
public class DeptController {
	
	@Autowired
	DeptDao deptdao;
	
	/**
	 * 第一次进入部门管理页面
	 * @return
	 */
	@RequestMapping("deptmanage")
	public String deptmanage(Model model) {
		List<Dept> depts = (List<Dept>) deptdao.findAll();
		System.out.println(depts);
		model.addAttribute("depts",depts);
		return "user/deptmanage";
	}
	
	@RequestMapping("adddept")
	public String adddept(){
		return "user/deptedit";
	}
}
