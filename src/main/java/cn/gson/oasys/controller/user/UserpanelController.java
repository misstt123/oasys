package cn.gson.oasys.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class UserpanelController {
	
	@RequestMapping("userpanel")
	public String index(){
		return "user/userpanelindex";
	}
}
