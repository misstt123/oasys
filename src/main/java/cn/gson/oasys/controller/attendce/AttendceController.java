package cn.gson.oasys.controller.attendce;


import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.gson.oasys.model.dao.BlogDao;
import cn.gson.oasys.model.dao.notedao.CatalogDao;
import cn.gson.oasys.model.dao.notedao.NoteDao;
import cn.gson.oasys.model.entity.Blog;


@Controller
@RequestMapping("/")
public class AttendceController {
		
	Logger log=LoggerFactory.getLogger(getClass());
	

	
	@RequestMapping("attendceatt")
	public String test(){
		return "attendce/att";
	}
	
	@RequestMapping("attendcemonth")
	public String test2(){
		return "attendce/attmonth";
	}
	
	@RequestMapping("attendceweek")
	public String test3(){
		return "attendce/attweek";
	}
	
	@RequestMapping("attendceedit")
	public String test4(@Param("aid")String aid,Model model ){
		System.out.println(aid);
		model.addAttribute("aid", aid);
		return "attendce/att2";
	}

}
