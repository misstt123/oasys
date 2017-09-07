package cn.gson.oasys.controller.plan;


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
public class PlanController {
		
	Logger log=LoggerFactory.getLogger(getClass());
	

	//计划管理
	@RequestMapping("planview")
	public String test(){
		return "plan/planview";
	}
	//我的计划
	@RequestMapping("myplan")
	public String test2(){
		return "plan/plantable";
	}
	//我的编辑
		@RequestMapping("planedit")
		public String test3(@Param("pid")String pid,Model model){ 
			model.addAttribute("pid", pid);
			return "plan/planedit";
		}
	
	
	
	

}
