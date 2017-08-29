package cn.gson.oasys.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class UserController {
	
	@RequestMapping("usermanage")
	public String usermanage() {
		return "user/userindex";
	}
	
	@RequestMapping("deptmanage")
	public String deptmanage() {
		return "user/deptindex";
	}
	
	@RequestMapping("positionmanage")
	public String positionmanage() {
		return "user/positionindex";
	}
	
	@RequestMapping("userlogmanage")
	public String userlogmanage() {
		return "user/userlogindex";
	}

}
