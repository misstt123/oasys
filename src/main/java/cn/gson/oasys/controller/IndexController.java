package cn.gson.oasys.controller;


import javax.servlet.http.HttpServletRequest;

import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
	
	@RequestMapping
	public String index(HttpServletRequest req){
		Iterable<Blog> rows=bDao.findAll();
		req.setAttribute("rows", rows);
		for (Blog blog : rows) {
			log.info("{}",blog);
		}
		System.out.println("fdsa");
		
		return "index/index";
	}
}
