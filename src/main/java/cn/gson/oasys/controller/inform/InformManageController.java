package cn.gson.oasys.controller.inform;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class InformManageController {
	
	@RequestMapping("infrommanage")
	public String infromManage(){
		return "inform/informmanage";
	}

}
