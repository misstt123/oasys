package cn.gson.oasys.controller.process;

import java.util.List;

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

import cn.gson.oasys.model.dao.roledao.RoleDao;
import cn.gson.oasys.model.dao.user.DeptDao;
import cn.gson.oasys.model.dao.user.UserDao;
import cn.gson.oasys.model.entity.role.Role;
import cn.gson.oasys.model.entity.user.Dept;
import cn.gson.oasys.model.entity.user.User;

@Controller
@RequestMapping("/")
public class ProcedureController {
	
	@Autowired
	private UserDao udao;
	@Autowired
	private DeptDao ddao;
	@Autowired
	private RoleDao rdao;

	//新增页面
	@RequestMapping("xinxeng")
	public String index(){
		
		return "process/procedure";
	}
	
	//费用报销表单
	@RequestMapping("burse")
	public String bursement(Model model, HttpSession session,HttpServletRequest request,
			@RequestParam(value = "page", defaultValue = "0") int page,
			@RequestParam(value = "size", defaultValue = "10") int size){
		String userId = ((String) session.getAttribute("userId")).trim();
		Pageable pa=new PageRequest(page, size);
		//查看用户并分页
				Page<User> pageuser=udao.findAll(pa);
				List<User> userlist=pageuser.getContent();
				// 查询部门表
				Iterable<Dept> deptlist = ddao.findAll();
				// 查角色表
				Iterable<Role> rolelist = rdao.findAll();
				model.addAttribute("page", pageuser);
				model.addAttribute("emplist", userlist);
				model.addAttribute("deptlist", deptlist);
				model.addAttribute("rolelist", rolelist);
				model.addAttribute("url", "names");
		return "process/bursement";
	}
	
	//出差费用申请
	@RequestMapping("evemoney")
	public String evemoney(){
		return "process/evectionmoney";
	}
	//出差申请
	@RequestMapping("evection")
	public String evection(){
		return "process/evection";
	}
	//请假申请
	@RequestMapping("holiday")
	public String holiday(){
		return "process/holiday";
	}
	//加班申请
	@RequestMapping("overtime")
	public String overtime(){
		return "process/overtime";
	}
	//转正申请
	@RequestMapping("regular")
	public String regular(){
		return "process/regular";
	}
	//转正申请
	@RequestMapping("resign")
	public String resign(){
		return "process/resign";
	}
	
}
