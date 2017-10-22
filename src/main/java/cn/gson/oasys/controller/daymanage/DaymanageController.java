package cn.gson.oasys.controller.daymanage;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.domain.Sort.Order;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.alibaba.fastjson.JSONObject;

import cn.gson.oasys.model.dao.daymanagedao.DaymanageDao;
import cn.gson.oasys.model.dao.system.StatusDao;
import cn.gson.oasys.model.dao.system.TypeDao;
import cn.gson.oasys.model.dao.user.UserDao;
import cn.gson.oasys.model.entity.schedule.ScheduleList;
import cn.gson.oasys.model.entity.system.SystemStatusList;
import cn.gson.oasys.model.entity.system.SystemTypeList;
import cn.gson.oasys.model.entity.user.User;
import cn.gson.oasys.services.daymanage.DaymanageServices;
import cn.gson.oasys.services.process.ProcessService;

@Controller
@RequestMapping("/")
public class DaymanageController {
	@Autowired
	DaymanageDao daydao;
	@Autowired
	UserDao udao;
	@Autowired
	DaymanageServices dayser;
	@Autowired
	StatusDao statusdao;
	@Autowired
	TypeDao typedao;
	@Autowired
	ProcessService ps;
	
	@RequestMapping("daymanage")
	private String daymanage(@SessionAttribute("userId") Long userid,
			Model model,@RequestParam(value="page",defaultValue="0") int page,
			@RequestParam(value="size",defaultValue="10") int size
			) {
		List<SystemTypeList> types = typedao.findByTypeModel("aoa_schedule_list");
		List<SystemStatusList> statuses = statusdao.findByStatusModel("aoa_schedule_list");
		List<Order> orders=new ArrayList<>();
		orders.add(new Order(Direction.DESC, "statusId"));
		orders.add(new Order(Direction.DESC, "createTime"));
		Sort sort=new Sort(orders);
		Pageable pa=new PageRequest(page, size,sort);
		User user = udao.findOne(userid);
		Page<ScheduleList> myday = daydao.findByUser(user, pa);
		
		List<ScheduleList> scheduleLists = myday.getContent();
		
		model.addAttribute("schedules",scheduleLists);
		model.addAttribute("types",types);
		model.addAttribute("statuses",statuses);
		model.addAttribute("page", myday);
		model.addAttribute("url", "daymanagepaging");
		model.addAttribute("ismyday", 1);
		return "daymanage/daymanage";
	}
	
	@RequestMapping("daymanagepaging")
	private String daymanagepaging(@SessionAttribute("userId") Long userid,
			Model model,@RequestParam(value="page",defaultValue="0") int page,
			@RequestParam(value="size",defaultValue="10") int size
			){
		
		List<SystemTypeList> types = typedao.findByTypeModel("aoa_schedule_list");
		List<SystemStatusList> statuses = statusdao.findByStatusModel("aoa_schedule_list");
		
		Sort sort=new Sort(new Order(Direction.ASC,"user"));
		Pageable pa=new PageRequest(page, size,sort);
		User user = udao.findOne(userid);
		Page<ScheduleList> myday = daydao.findByUser(user, pa);
		
		List<ScheduleList> scheduleLists = myday.getContent();
		model.addAttribute("types",types);
		model.addAttribute("statuses",statuses);
		model.addAttribute("schedules",scheduleLists);
		model.addAttribute("page", myday);
		model.addAttribute("url", "daymanagepaging");
		model.addAttribute("ismyday", 1);
		return "daymanage/daymanagepaging";
	}
	@RequestMapping("aboutmeday")
	private String aboutmeday(@SessionAttribute("userId") Long userid,
			Model model,@RequestParam(value="page",defaultValue="0") int page,
			@RequestParam(value="size",defaultValue="10") int size
			){
		
		List<SystemTypeList> types = typedao.findByTypeModel("aoa_schedule_list");
		List<SystemStatusList> statuses = statusdao.findByStatusModel("aoa_schedule_list");
		
		Sort sort=new Sort(new Order(Direction.ASC,"user"));
		Pageable pa=new PageRequest(page, size,sort);
		User user = udao.findOne(userid);
		List<User> users = new ArrayList<>();
		users.add(user);
		Page<ScheduleList> aboutmeday = daydao.findByUsers(users, pa);
		
		List<ScheduleList> scheduleLists = aboutmeday.getContent();
		
		model.addAttribute("schedules",scheduleLists);
		model.addAttribute("types",types);
		model.addAttribute("statuses",statuses);
		model.addAttribute("page", aboutmeday);
		model.addAttribute("url", "aboutmedaypaging");
		
		return "daymanage/daymanage";
	}
	
	@RequestMapping("aboutmedaypaging")
	public String aboutmedaypaging(@SessionAttribute("userId") Long userid,
			Model model,@RequestParam(value="page",defaultValue="0") int page,
			@RequestParam(value="size",defaultValue="10") int size
			){
		
		List<SystemTypeList> types = typedao.findByTypeModel("aoa_schedule_list");
		List<SystemStatusList> statuses = statusdao.findByStatusModel("aoa_schedule_list");
		
		Sort sort=new Sort(new Order(Direction.ASC,"user"));
		Pageable pa=new PageRequest(page, size,sort);
		User user = udao.findOne(userid);
		List<User> users = new ArrayList<>();
		users.add(user);
		Page<ScheduleList> aboutmeday = daydao.findByUsers(users, pa);
		
		List<ScheduleList> scheduleLists = aboutmeday.getContent();
		
		model.addAttribute("schedules",scheduleLists);
		model.addAttribute("types",types);
		model.addAttribute("statuses",statuses);
		model.addAttribute("page", aboutmeday);
		
		model.addAttribute("url", "aboutmedaypaging");
		
		return "daymanage/daymanagepaging";
	}
	
	@RequestMapping("dayedit")
	private String dayedit(@RequestParam(value="rcid",required=false) Long rcid,
			@RequestParam(value="page",defaultValue="0") int page,
			@RequestParam(value="size",defaultValue="10") int size,
			Model model
			){
		ps.user(page, size, model);
		List<SystemTypeList> types = typedao.findByTypeModel("aoa_schedule_list");
		List<SystemStatusList> statuses = statusdao.findByStatusModel("aoa_schedule_list");
		ScheduleList rc = null;
		if(rcid!=null){
			rc = daydao.findOne(rcid);
			System.out.println(rc);
		}
		
		model.addAttribute("types",types);
		model.addAttribute("statuses",statuses);
		model.addAttribute("rc",rc);
		return "daymanage/editday";
	}
	
	@RequestMapping("addandchangeday")
	public String addandchangeday(ScheduleList scheduleList,@RequestParam("shareuser") String shareuser,BindingResult br,
			@SessionAttribute("userId") Long userid){
		User user = udao.findOne(userid);
		System.out.println(shareuser);
		List<User> users = new ArrayList<>();
		
		System.out.println(users.size());
		StringTokenizer st = new StringTokenizer(shareuser, ";");
		
		while (st.hasMoreElements()) {
			users.add(udao.findByUserName(st.nextToken()));
		}
	
		scheduleList.setUser(user);
		if(users.size()>0){
			scheduleList.setUsers(users);
		}
		System.out.println(scheduleList);
		
		daydao.save(scheduleList);
		return "/daymanage";
	}
	
	@RequestMapping("dayremove")
	public String dayremove(@RequestParam(value="rcid") Long rcid){
		ScheduleList rc = daydao.findOne(rcid);
		
		daydao.delete(rc);
		
		return "/daymanage";
	}
	
	/**
	 * 一下是日历controller
	 * @return
	 */
	@RequestMapping("daycalendar")
	private String daycalendar() {
		return "daymanage/daycalendar";
	}

//	@RequestMapping("mycalendarload")
//	public void mycalendarload(@SessionAttribute("userId") Long userid,HttpServletResponse response) throws IOException{
//		List<ScheduleList> se = dayser.aboutmeschedule(userid);
//		
//		for (ScheduleList scheduleList : se) {
//			System.out.println(scheduleList);
//		}
//		
//		String json = JSONObject.toJSONString(se);
//		response.setHeader("Cache-Control", "no-cache");
//		response.setContentType("text/json;charset=UTF-8");
//		response.getWriter().write(json);
//		
//	}
	
	@RequestMapping("mycalendarload")
	public @ResponseBody List<ScheduleList> mycalendarload(@SessionAttribute("userId") Long userid,HttpServletResponse response) throws IOException{
		List<ScheduleList> se = dayser.aboutmeschedule(userid);
		
		return se;
	}
}
