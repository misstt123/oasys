package cn.gson.oasys.controller.system;


import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.gson.oasys.model.dao.BlogDao;
import cn.gson.oasys.model.dao.system.TypeDao;
import cn.gson.oasys.model.entity.Blog;
import cn.gson.oasys.model.entity.system.SystemTypeList;


@Controller
@RequestMapping("/")
public class TypeSysController {
	
	Logger log=LoggerFactory.getLogger(getClass());
	
	@Autowired
	private TypeDao typeDao;
	
	
	@RequestMapping("testsystype")
	public String testsystype(HttpServletRequest req){
		Iterable<SystemTypeList> typeList=typeDao.findAll();
		req.setAttribute("typeList", typeList);
		return "systemcontrol/typemanage";
	}
	
	@RequestMapping("typeedit")
	public String typeEdit(){
		return "systemcontrol/typeedit";
	}

}
