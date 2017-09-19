package cn.gson.oasys.controller.attendce;


import static org.hamcrest.CoreMatchers.nullValue;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.support.DefaultConversionService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.gson.oasys.common.StringtoDate;
import cn.gson.oasys.model.dao.BlogDao;
import cn.gson.oasys.model.dao.attendcedao.AttendceDao;
import cn.gson.oasys.model.dao.attendcedao.AttendceService;
import cn.gson.oasys.model.dao.notedao.CatalogDao;
import cn.gson.oasys.model.dao.notedao.NoteDao;
import cn.gson.oasys.model.dao.user.UserDao;
import cn.gson.oasys.model.entity.Blog;
import cn.gson.oasys.model.entity.attendce.Attends;
import cn.gson.oasys.model.entity.user.User;


@Controller
@RequestMapping("/")
public class AttendceController {
		
	Logger log=LoggerFactory.getLogger(getClass());
	
	@Autowired 
	AttendceDao attenceDao;
	@Autowired
	AttendceService attendceService;
	@Autowired
	UserDao uDao;
	
	List<Attends> alist;
	List<User> uList;
	
	//格式转化导入
	 DefaultConversionService service=new DefaultConversionService();
    
	
	//考情列表 给单个用户使用
	@RequestMapping("attendcelist")
	public String test(HttpServletRequest request,HttpSession session){
		Long  userid=Long.valueOf( session.getAttribute("userId")+"");
		User user=uDao.findOne(userid);
		alist=attenceDao.findByUser(user);
		System.out.println(alist);
		request.setAttribute("alist", alist);
		return "attendce/attendcelist";
	}
	
	//考勤管理
	@RequestMapping("attendceatt")
	public String testdasf(HttpServletRequest request){
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
	
	//月报表
	@RequestMapping("attendcemonth")
	public String test2(){
		return "attendce/monthtable";
	}
	
	@RequestMapping("realmonthtable")
	public String dfshe(HttpServletRequest request, Model model){
		String month=request.getParameter("month");
	    uList= (List<User>) uDao.findAll();
	    Map<String,List<Integer>> uMap=new HashMap<>();
	    List<Integer> result=null;
	    	 for (User user : uList) {
	    		 result=new ArrayList<>();
	    		 for (long statusId = 10; statusId < 14; statusId++) {
		    		result.add(attenceDao.countnum(month, statusId,user.getUserId()));
		    	 }
	    		 uMap.put(user.getUserName(), result);
	    	}
	    model.addAttribute("uMap", uMap);	 
	    model.addAttribute("ulist", uList);
		return "attendce/realmonthtable";
	}
	
	//周报表
	@RequestMapping("attendceweek")
	public String test3(){
		return "attendce/weektable";
	}
	
	@RequestMapping("realweektable")
	public String dsaf(HttpServletRequest request){
		String starttime=request.getParameter("starttime");
	     String endtime=request.getParameter("endtime");
	     //格式转化
	     service.addConverter(new StringtoDate());
	     Date startdate=service.convert(starttime, Date.class);
	     Date enddate=service.convert(endtime, Date.class);
	     
	     //从后台匹配数据
	     uList= (List<User>) uDao.findAll();
	     alist=attenceDao.findoneweek(startdate, enddate);
	     Set<Attends> attenceset=new HashSet<>();
	     for (User user : uList) {
	    	 for (Attends attence : alist) {
	    		 if(attence.getUser().getUserId()==user.getUserId()){
	    		 attenceset.add(attence);}
	    	}
	    	 user.setaSet(attenceset);
	    }
	
	String[] weekday={"星期一","星期二","星期三","星期四","星期五","星期六","星期日"};
	request.setAttribute("ulist", uList);
	request.setAttribute("weekday", weekday);
		return "attendce/realweektable";
		
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
		Long userid=(Long)session.getAttribute("userId");
		String remark=request.getParameter("remark");
		long id=Long.parseLong(request.getParameter("id"));
		attendceService.updatereamrk(remark, id);
		return "attendce/attendceedit";
	}
	

}
