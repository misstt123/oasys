package cn.gson.oasys.controller.note;


import static org.mockito.Matchers.longThat;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
public class NoteController {
		
	Logger log=LoggerFactory.getLogger(getClass());
	

	//笔记主界面
	@RequestMapping("noteview")
	public String test(){
		return "note/notev";
	}
	
	@RequestMapping("noteinfo")
	public String test3(@Param("id")String id,HttpServletRequest Request){
		Long nid=Long.valueOf(id);
		Request.setAttribute("id", nid);
		return "note/noteinfo";
	}
	
	@RequestMapping("notewrite")
	public String test33(){
		return "note/notewrite";
	}
	
	@RequestMapping("noteedit")
	public String test4(@Param("id")String id,HttpServletRequest Request){
		Long nid=Long.valueOf(id);
		//新建
		if(nid==-1){
			System.out.println("保存一个对象");
		}
		//修改
		else if(nid>0){
			System.out.println("取出一个对象 然后保存");
		}
		Request.setAttribute("id", nid);
		return "note/noteedit";
	}
	

}
