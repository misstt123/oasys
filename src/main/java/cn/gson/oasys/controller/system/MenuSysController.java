package cn.gson.oasys.controller.system;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.gson.oasys.controller.IndexController;
import cn.gson.oasys.model.dao.BlogDao;
import cn.gson.oasys.model.dao.IndexDao;
import cn.gson.oasys.model.entity.Blog;
import cn.gson.oasys.model.entity.system.SystemMenu;
import cn.gson.oasys.services.system.MenuSysService;

@Controller
@RequestMapping("/")
public class MenuSysController {
	
	Logger log=LoggerFactory.getLogger(getClass());
	
	@Autowired
	private IndexDao iDao;
	@Autowired
	private MenuSysService menuService;
//	显示菜单管理界面
	@RequestMapping("testsysmenu")
	public String testsysmenu(HttpServletRequest req){
		menuService.findMenuSys(req);
		return "systemcontrol/menumanage";
	}
	
//	改变排序
	@RequestMapping("changeSortId")
	public String changeSortId(HttpServletRequest req){
		Long parentId=Long.parseLong(req.getParameter("parentid"));
		Long menuId=Long.parseLong(req.getParameter("menuid"));
		Integer sortId=Integer.parseInt(req.getParameter("sortid"));
		Integer arithNum=Integer.parseInt(req.getParameter("num"));
		log.info("parentId:{}",parentId);
		log.info("menuId:{}",menuId);
		log.info("sortId:{}",sortId);
		log.info("arithNum:{}",arithNum);
		if(arithNum==1){
			int a1=menuService.changeSortId(sortId, arithNum, parentId);
			int a2=menuService.changeSortId2(sortId, arithNum, menuId);
			log.info("a1：{}",a1);
			log.info("a2：{}",a2);
		}
		else{
			int a1=menuService.changeSortId(sortId, arithNum, parentId);
			int a2=menuService.changeSortId2(sortId, arithNum, menuId);
			log.info("a1：{}",a1);
			log.info("a2：{}",a2);
		}
		menuService.findMenuSys(req);
		return "systemcontrol/menumanage";
	}
	
	
	@RequestMapping("menuedit")
	public String newpage(HttpServletRequest req){
		HttpSession session=req.getSession();
		String getId=null;
		
		if(!StringUtils.isEmpty(req.getParameter("id"))){
			getId=req.getParameter("id");
			Long id=Long.parseLong(getId);
			SystemMenu menuObj=iDao.findOne(id);
			req.setAttribute("menuObj", menuObj);
			if(!StringUtils.isEmpty(req.getParameter("add"))){
				String getAdd=req.getParameter("add");
				req.setAttribute("getAdd", getAdd);
				log.info("getAdd:{}",getAdd);
			}
			else{
				session.setAttribute("getId", getId);
				log.info("getId:{}",getId);
			}
			
		}
		
		return "systemcontrol/menuedit";
	}
	
	@RequestMapping("changemess")
	public String changeMess(HttpServletRequest req, SystemMenu menu){
		String checkid= req.getParameter("checkid");	//获取checkbox的值，如果是选中状态，为“on”；否则为“null”
		String name= req.getParameter("name");			//获取前台名称
		String icon= req.getParameter("icon");			//获取前台图标
		String url= req.getParameter("url");			//获取前台url
		Integer sort= Integer.parseInt(req.getParameter("sort"));
		//获取前台排序值
		Long parent = null;
		if(!StringUtils.isEmpty(req.getParameter("parent"))){
			parent=Long.parseLong(req.getParameter("parent"));
			System.out.println("不为空");
		}
		else{
			System.out.println("空的");
		}
//		Long parent= Long.parseLong(req.getParameter("parent"));	//获取前台父级值
		HttpSession session=req.getSession();
		
		System.out.println(checkid);
		Long menuId=null;
		Integer isshow=null;
		
		
//		
		if(StringUtils.isEmpty(checkid)){
			isshow=0;
		}else{
			isshow=1;
		}
		System.out.println(checkid);
		
//		判断从编辑进入的界面
		if(!StringUtils.isEmpty(session.getAttribute("getId"))){
			menuId=Long.parseLong((String) session.getAttribute("getId"));		//获取进入编辑界面的menuID值
			menu=iDao.findOne(menuId);
			log.info("getId:{}",session.getAttribute("getId"));
			session.removeAttribute("getId");
		}
//		新增进入的界面
		else{
			log.info("不知道这里有没有错误{}",name);
			menu=new SystemMenu();
		}
		menu.setIsShow(isshow);
		menu.setMenuName(name);
		menu.setMenuIcon(icon);
		menu.setMenuUrl(url);
		menu.setSortId(sort);
		if(!StringUtils.isEmpty(parent)){
			menu.setParentId(parent);
		}
		
		
		menuService.save(menu);
		log.info("menu的值：{}",menu);
		return "redirect:/testsysmenu";
		
	}
	

}
