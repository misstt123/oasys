package cn.gson.oasys.controller.role;



import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.util.StringUtil;

import cn.gson.oasys.model.dao.IndexDao;
import cn.gson.oasys.model.dao.roledao.RoleDao;
import cn.gson.oasys.model.dao.roledao.RolepowerlistDao;

import cn.gson.oasys.model.dao.user.UserDao;
import cn.gson.oasys.model.entity.role.Role;
import cn.gson.oasys.model.entity.role.Rolemenu;
import cn.gson.oasys.model.entity.role.Rolepowerlist;
import cn.gson.oasys.model.entity.system.SystemMenu;
import cn.gson.oasys.model.entity.user.User;
import cn.gson.oasys.services.role.RoleService;
import cn.gson.oasys.services.system.MenuSysService;

@Controller
@RequestMapping("/")
public class RoleController {
	
	@Autowired
	private RoleDao rdao;
	@Autowired
	private MenuSysService menuService;
	@Autowired
	private UserDao udao;
	@Autowired
	private IndexDao iDao;
	@Autowired
	private RoleService rservice;
	@Autowired
	private RolepowerlistDao  rpdao;
	
	
	/**
	 * 角色管理
	 * @return
	 */
	@RequestMapping("rolemanage")
	public ModelAndView index(@RequestParam(value = "page", defaultValue = "0") int page,
			@RequestParam(value = "size", defaultValue = "10") int size){
		Pageable pa=new PageRequest(page, size);
		ModelAndView mav=new ModelAndView("role/rolemanage");
		Page<Role> pagerole=rdao.findAll(pa);
		List<Role>  rolelist=pagerole.getContent();
		mav.addObject("page", pagerole);
		mav.addObject("rolelist", rolelist);
		mav.addObject("url", "roleser");
		return mav;
	}
	
	/**
	 * 条件查询
	 */
	@RequestMapping("roleser")
	public String roleser(HttpServletRequest req,Model model,
			@RequestParam(value = "page", defaultValue = "0") int page,
			@RequestParam(value = "size", defaultValue = "10") int size){
		Pageable pa=new PageRequest(page, size);
		Page<Role> pagerole=null;
		List<Role>  rolelist=null;
		String val=null;
		
		
		if(!StringUtil.isEmpty(req.getParameter("val"))){
			val=req.getParameter("val").trim();
		}
		
		if(!StringUtil.isEmpty(val)){
			pagerole=rdao.findbyrolename(val,pa);
			model.addAttribute("sort", "&val="+val);
		}else{
			 pagerole=rdao.findAll(pa);
		}
		 rolelist=pagerole.getContent();
		 model.addAttribute("page", pagerole);
		 model.addAttribute("rolelist", rolelist);
		 model.addAttribute("url", "roleser");
		return "role/roletable";
	}
	
	/**
	 * 设定角色权限
	 * @return
	 */
	@RequestMapping("roleset")
	public String index2(HttpServletRequest req,Model model){
	
		Long roleid=Long.parseLong(req.getParameter("id"));
		
		Role role=rdao.findOne(roleid);
		List<Rolemenu> oneMenuAll=rpdao.findbyparentall(0L, roleid);
		List<Rolemenu> twoMenuAll=rpdao.findbyparents(0L, roleid);
		
		model.addAttribute("oneMenuAll", oneMenuAll);
		model.addAttribute("twoMenuAll", twoMenuAll);
		model.addAttribute("roleid", roleid);
		model.addAttribute("rolename", role.getRoleName());
		return "role/roleset";
		
	}
	
	/**
	 * 权限设定
	 */
	@RequestMapping("powerss")
	public @ResponseBody Boolean power(HttpServletRequest req){
	Long roleid=Long.parseLong(req.getParameter("roleid"));
	String content=	req.getParameter("content").trim();
	Long menuid=Long.parseLong(	req.getParameter("menuid"));
	Rolepowerlist rolepower=rpdao.findbyroleidandmenuid(roleid,menuid);
	System.out.println(rolepower);
	if(content.equals("选中")){
		rolepower.setCheck(true);
		System.out.println("xuanzhong");
	}else{
		rolepower.setCheck(false);
		System.out.println("not ok");
	}
		
		rservice.sava(rolepower);
		return true;
	}
	/**
	 * 进入新增角色
	 * @return
	 */
	@RequestMapping("addrole")
	public String index3(HttpServletRequest req,Model model){
		String id=null;
		Role role=new Role();
		
		if(!StringUtil.isEmpty(req.getParameter("id"))){
			id=req.getParameter("id");
			Long lid=Long.parseLong(id);
			role=rdao.findOne(lid);
			
		}
		model.addAttribute("role", role);
		return "role/addrole";
	}
	
	/**
	 * 新增，修改角色确定
	 * @return
	 */
	@RequestMapping("modifyrole")
	public String index4(HttpServletRequest req,@Valid Role role,BindingResult br){
		String id=null;
		if(!StringUtil.isEmpty(req.getParameter("id"))){
			id=req.getParameter("id");
		}
		if(!StringUtil.isEmpty(id)){
			Long lid=Long.parseLong(id);
			Role roles=rdao.findOne(lid);
			roles.setRoleName(role.getRoleName());
			rdao.save(roles);
			
		}else{
			Role rolep=rdao.save(role);
			List<SystemMenu> menulist=iDao.findall();
			rservice.index(menulist, rolep);
		}
		return "redirect:/rolemanage";
	}
/**
 * 删除
 */
	@RequestMapping("deshan")
	public String index5(HttpServletRequest req,Model model,HttpSession session){
		String userId = ((String) session.getAttribute("userId")).trim();
		Long userid = Long.parseLong(userId);
		User user=udao.findOne(userid);
		String id=null;
		if(!StringUtil.isEmpty(req.getParameter("id"))){
			id=req.getParameter("id");
			
		}
		Long lid=Long.parseLong(id);
		if(user.getSuperman().equals(true)){
			List<User> useist=udao.findrole(lid);
			if(useist.size()>0){
				model.addAttribute("error", "此角色下还有职员，不允许删除。");
				return "common/proce";
			}else{
				Role r=rdao.findOne(lid);
				rdao.delete(r);
			}
		}else{
			model.addAttribute("error", "只有超级管理员才能操作。");
			return "common/proce";
		}
		return null;
		
	}
}
