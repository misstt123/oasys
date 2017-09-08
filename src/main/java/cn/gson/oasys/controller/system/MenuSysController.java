package cn.gson.oasys.controller.system;


import javax.servlet.http.HttpServletRequest;

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
	public String testsysmenu(){
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
	public String newpage(HttpServletRequest req ){
		String getId=req.getParameter("id");
		if(!StringUtils.isEmpty(getId)){
			Long id=Long.parseLong(getId);
			SystemMenu menuObj=iDao.findOne(id);
			req.setAttribute("menuObj", menuObj);
		}
		return "systemcontrol/menuedit";
	}
	
	
	

}
