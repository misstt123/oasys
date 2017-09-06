package cn.gson.oasys.controller;


import javax.servlet.http.HttpServletRequest;

import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.gson.oasys.model.dao.BlogDao;
import cn.gson.oasys.model.dao.notedao.CatalogDao;
import cn.gson.oasys.model.dao.notedao.NoteDao;
import cn.gson.oasys.model.entity.Blog;


@Controller
@RequestMapping("/")
public class IndexController {
		
	Logger log=LoggerFactory.getLogger(getClass());
	
	@Autowired
	private BlogDao bDao;
	
	@RequestMapping("index")
	public String index(HttpServletRequest req){
		return "index/index";
	}
	
	@RequestMapping("test2")
	public String test2(){
		return "systemcontrol/control";
	}
	@RequestMapping("test3")
	public String test3(){
		return "note/noteview";
	}
	@RequestMapping("test4")
	public String test4(){
		return "mail/editaccount";
	}
//	测试系统管理
	@RequestMapping("testsysmenu")
	public String testsysmenu(){
		return "systemcontrol/menumanage";
	}
	@RequestMapping("testsysstatus")
	public String testsysstatus(){
		return "systemcontrol/statusmanage";
	}
	@RequestMapping("testsystype")
	public String testsystype(){
		return "systemcontrol/typemanage";
	}
	
	
	
	
	

}
