package cn.gson.oasys.controller.daymanage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class DaymanageController {
	
	@RequestMapping("daymanage")
	private String daymanage() {
		return "daymanage/dayindex";
	}
	
	@RequestMapping("daycalendar")
	private String daycalendar() {
		return "daymanage/daycalendarindex";
	}
	
	@RequestMapping("dayedit")
	private String dayedit() {
		return "daymanage/dayedit";
	}

}
