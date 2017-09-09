package cn.gson.oasys.controller.note;


import static org.mockito.Matchers.longThat;

import java.util.ArrayList;
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
import org.springframework.web.servlet.ModelAndView;

import cn.gson.oasys.model.dao.BlogDao;
import cn.gson.oasys.model.dao.notedao.CatalogDao;
import cn.gson.oasys.model.dao.notedao.NoteDao;
import cn.gson.oasys.model.entity.Blog;
import cn.gson.oasys.model.entity.note.Catalog;
import cn.gson.oasys.model.entity.note.Note;


@Controller
@RequestMapping("/")
public class NoteController {
		
	Logger log=LoggerFactory.getLogger(getClass());
	
	@Autowired 
	private NoteDao noteDao;
	@Autowired
	private CatalogDao catalogDao;
	
	List<Note> noteList;
	List<Catalog> cataloglist;
    
	//查找类型
	@RequestMapping("notetype")
	public String test43(Model model,HttpServletRequest request,@Param("typeid")String id){
		long typeid=Long.valueOf(id);
		noteList =noteDao.findByTypeId(typeid);
		System.out.println(noteList);
		model.addAttribute("nlist", noteList);
		return "note/notewrite";
	}
	
	//删除
	@RequestMapping("notedelete")
	public String testrw(Model model,HttpServletRequest request,@Param("nid")String nid){
		long noteid=Long.valueOf(nid);
		noteDao.delete(noteid);
		return "redirect:/noteview";
	}
	
	//笔记主界面
	@RequestMapping(value="noteview",method=RequestMethod.GET)
	public String test(Model model,HttpServletRequest request){
		cataloglist=(List<Catalog>) catalogDao.findAll();
		noteList = (List<Note>) noteDao.findAll();
//		long typeid=Long.valueOf(typeId);
//		noteList =noteDao.findByTypeId(typeid);
		System.out.println(noteList);
		model.addAttribute("nlist", noteList);
		System.out.println(cataloglist);
		model.addAttribute("calist", cataloglist);
		return "note/noteview";
	}
	
	//post请求
		@RequestMapping(value="noteview",method=RequestMethod.POST)
		public String test3332(HttpServletRequest request,@Param("title")String title){
			String catalogName=request.getParameter("name");
			catalogDao.save(new Catalog(catalogName));
			return "redirect:/noteview";
		}
	
	//显示具体信息
	@RequestMapping("noteinfo")
	public String test3(@Param("id")String id,HttpServletRequest Request){
		Long nid=Long.valueOf(id);
		Note note=noteDao.findOne(nid);
		Request.setAttribute("note", note);
		return "note/noteinfo";
	}
	
	//显示所有
	@RequestMapping(value = "notewrite", method = RequestMethod.GET)
	public String test33(Model model,HttpServletRequest request){
		noteList = (List<Note>) noteDao.findAll();
		System.out.println(noteList);
		model.addAttribute("nlist", noteList);
		return "note/notewrite";
	}
	
	//模糊查询
	@RequestMapping(value="notewrite",method=RequestMethod.POST)
	public String test333(Model model,HttpServletRequest request,@Param("title")String title){
		noteList =noteDao.findBytitle(title,title);
		System.out.println(noteList);
		model.addAttribute("nlist", noteList);
		return "note/notewrite";
	}
	
	//编辑
	@RequestMapping("noteedit")
	public String test4(@Param("id")String id,HttpServletRequest Request){
		//目录
		cataloglist=(List<Catalog>) catalogDao.findAll();
		Request.setAttribute("calist", cataloglist);
		
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
