package cn.gson.oasys.controller.login;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class LoginsController {
	
	@RequestMapping("logins")
	public String login(){
		return "login/login";
	}

}
