package cn.gson.oasys.controller.user;


import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import cn.gson.oasys.model.dao.user.DeptDao;
import cn.gson.oasys.model.dao.user.PositionDao;
import cn.gson.oasys.model.dao.user.UserDao;
import cn.gson.oasys.model.entity.user.Dept;
import cn.gson.oasys.model.entity.user.Position;
import cn.gson.oasys.model.entity.user.User;

@Controller
@RequestMapping("/")
public class DeptController {
	
	@Autowired
	DeptDao deptdao;
	@Autowired
	UserDao udao;
	@Autowired
	PositionDao pdao;
	
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
	
	@RequestMapping(value = "deptedit" ,method = RequestMethod.POST)
	public String adddept(@Valid Dept dept,BindingResult br,Model model){
		System.out.println(br.hasErrors());
		System.out.println(br.getFieldError());
		if(!br.hasErrors()){
			System.out.println("没有错误");
			Dept adddept = deptdao.save(dept);
			if(adddept!=null){
				System.out.println("插入成功");
				model.addAttribute("success",1);
				return "/deptmanage";
			}
		}
		System.out.println("有错误");
		model.addAttribute("errormess","错误！~");
		return "user/deptedit";
	}
	
	@RequestMapping(value = "deptedit" ,method = RequestMethod.GET)
	public String changedept(@RequestParam(value = "dept",required=false) Long deptId,Model model){
		if(deptId!=null){
			Dept dept = deptdao.findOne(deptId);
			model.addAttribute("dept",dept);
		}
		return "user/deptedit";
	}
	
	@RequestMapping("readdept")
	public String readdept(@RequestParam(value = "deptid",required=false) Long deptId,Model model){
		
		Dept dept = deptdao.findOne(deptId);
		User deptmanage = udao.findOne(dept.getDeptmanager());
		List<Dept> depts = (List<Dept>) deptdao.findAll();
		List<Position> positions = pdao.findByDeptidAndNameNotLike(1L, "%经理");
		System.out.println(deptmanage);
		List<User> formaluser = new ArrayList<>();
		List<User> deptusers = udao.findByDept(dept);
		
		for (User deptuser : deptusers) {
			Position position = deptuser.getPosition();
			if(!position.getName().endsWith("经理")){
				formaluser.add(deptuser);
			}
		}
		System.out.println(deptusers);
		model.addAttribute("positions",positions);
		model.addAttribute("depts",depts);
		model.addAttribute("deptuser",formaluser);
		model.addAttribute("deptmanage",deptmanage);
		model.addAttribute("dept",dept);
		model.addAttribute("isread",1);
		
		return "user/deptread";
		
	}
}
