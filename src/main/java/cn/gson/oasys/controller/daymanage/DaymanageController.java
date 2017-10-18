package cn.gson.oasys.controller.daymanage;

import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

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
import org.springframework.web.bind.annotation.SessionAttribute;

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
		
		Sort sort=new Sort(new Order(Direction.ASC,"user"));
		Pageable pa=new PageRequest(page, size,sort);
		Page<ScheduleList> aboutmepage = dayser.aboutmeschedule(userid, pa);
		
		List<ScheduleList> scheduleLists = aboutmepage.getContent();
		
		model.addAttribute("schedules",scheduleLists);
		model.addAttribute("types",types);
		model.addAttribute("statuses",statuses);
		model.addAttribute("page", aboutmepage);
		model.addAttribute("url", "daymanagepaging");
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
		Page<ScheduleList> aboutmepage = dayser.aboutmeschedule(userid, pa);
		
		List<ScheduleList> scheduleLists = aboutmepage.getContent();
		model.addAttribute("types",types);
		model.addAttribute("statuses",statuses);
		model.addAttribute("schedules",scheduleLists);
		model.addAttribute("page", aboutmepage);
		model.addAttribute("url", "daymanagepaging");
		return "daymanage/daymanagepaging";
	}
	
	@RequestMapping("daycalendar")
	private String daycalendar() {
		return "daymanage/daycalendarindex";
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
}
