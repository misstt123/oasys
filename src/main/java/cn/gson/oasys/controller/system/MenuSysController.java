package cn.gson.oasys.controller.system;


import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.gson.oasys.model.dao.BlogDao;
import cn.gson.oasys.model.entity.Blog;


@Controller
@RequestMapping("/")
public class MenuSysController {
		
	
	@RequestMapping("menusys")
	public String index(){
		return "index/menuindex";
	}
	
	@RequestMapping("typesys")
	public String typeSys(){
		return "index/typeindex";
	}
	
	@RequestMapping("statussys")
	public String statusSys(){
		return "index/statusindex";
	}
	
	@RequestMapping("infrommanage")
	public String infromManage(){
		return "index/infromindex";
	}
	
	@RequestMapping("chatmanage")
	public String chatManage(){
		return "index/chatindex";
	}
	

}
