package cn.gson.oasys.controller.user;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	
	@RequestMapping("useredit")
	public String useredit(@Param("where") String where,Model model) {
		System.out.println(where);
		model.addAttribute("where",where);
		return "user/useredit";
	}

}
