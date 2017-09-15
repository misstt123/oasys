package cn.gson.oasys.controller.system;


import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.gson.oasys.model.dao.BlogDao;
import cn.gson.oasys.model.dao.system.StatusDao;
import cn.gson.oasys.model.entity.Blog;
import cn.gson.oasys.model.entity.system.SystemStatusList;


@Controller
@RequestMapping("/")
public class StatusSysController {
	
	Logger log=LoggerFactory.getLogger(getClass());
	
	@Autowired
	private StatusDao statusDao;
	
	@RequestMapping("testsysstatus")
	public String testsysstatus(HttpServletRequest req){
		Iterable<SystemStatusList> statusList=statusDao.findAll();
		req.setAttribute("statusList", statusList);
		return "systemcontrol/statusmanage";
	}
	
	@RequestMapping("statusedit")
	public String typeEdit(){
		return "systemcontrol/statusedit";
	}
	

}
