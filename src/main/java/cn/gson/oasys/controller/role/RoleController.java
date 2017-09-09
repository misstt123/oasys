package cn.gson.oasys.controller.role;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cn.gson.oasys.model.dao.IndexDao;
import cn.gson.oasys.model.dao.roledao.RoleDao;
import cn.gson.oasys.model.entity.role.Role;
import cn.gson.oasys.model.entity.system.SystemMenu;

@Controller
@RequestMapping("/")
public class RoleController {
	
	@Autowired
	private RoleDao rdao;
	
	@Autowired
	private IndexDao idao;
	
	/**
	 * 角色管理
	 * @return
	 */
	@RequestMapping("rolemanage")
	public ModelAndView index(){
		ModelAndView mav=new ModelAndView("role/rolemanage");
		Iterable<Role> rolelist=rdao.findAll();
		System.out.println(rolelist);
		mav.addObject("rolelist", rolelist);
		return mav;
	}
	
	/**
	 * 设定角色权限
	 * @return
	 */
	@RequestMapping("roleset")
	public ModelAndView index2(){
		ModelAndView mav=new ModelAndView("role/roleset");
	/*	Iterable<SystemMenu> menulist=idao.findAll();
		System.out.println(menulist);
		mav.addObject("menulist", menulist);*/
		return mav;
	}
	
	/**
	 * 新增角色
	 * @return
	 */
	@RequestMapping("addrole")
	public String index3(){
		
		return "role/addrole";
	}
	
	/**
	 * 修改角色
	 * @return
	 */
	@RequestMapping("modifyrole")
	public String index4(){
		
		return "role/addrole";
	}
}
