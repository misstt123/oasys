package cn.gson.oasys.controller.attendce;


import static org.hamcrest.CoreMatchers.nullValue;

import java.util.List;

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
import cn.gson.oasys.model.dao.attendcedao.AttendceDao;
import cn.gson.oasys.model.dao.notedao.CatalogDao;
import cn.gson.oasys.model.dao.notedao.NoteDao;
import cn.gson.oasys.model.entity.Blog;
import cn.gson.oasys.model.entity.attendce.Attends;


@Controller
@RequestMapping("/")
public class AttendceController {
		
	Logger log=LoggerFactory.getLogger(getClass());
	
	@Autowired 
	AttendceDao attenceDao;
	
	List<Attends> alist;
	
	@RequestMapping("attendceatt")
	public String test(HttpServletRequest request){
		alist=(List<Attends>) attenceDao.findAll();
		request.setAttribute("alist", alist);
		return "attendce/attendceview";
	}
	
	//删除
	@RequestMapping("attdelete")
	public String dsfa(@Param("aid")long aid){
		attenceDao.delete(aid);
		return "redirect:/attendceatt";
	}
	
	@RequestMapping("attendcemonth")
	public String test2(){
		return "attendce/monthtable";
	}
	
	@RequestMapping("attendceweek")
	public String test3(){
		return "attendce/weektable";
	}
	
	@RequestMapping(value="attendceedit",method=RequestMethod.GET)
	public String test4(@Param("aid")String aid,Model model,HttpSession session){
		Long userid=Long.valueOf(session.getAttribute("userId")+"");
		if(aid==null){
			model.addAttribute("write", 0);
		}
		else if(aid!=null)
		{
		long id=Long.valueOf(aid);
		Attends attends=attenceDao.findOne(id);
		model.addAttribute("write", 1);
		model.addAttribute("attends", attends);
		}
		return "attendce/attendceedit";
	}
	
	@RequestMapping(value="attendceedit",method=RequestMethod.POST)
	public String test4(Model model,HttpSession session,HttpServletRequest request){
		Long userid=Long.valueOf(session.getAttribute("userId")+"");
		
		return "attendce/attendceedit";
	}
	

}
