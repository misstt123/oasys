package cn.gson.oasys.controller.flow;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class FlowManageController {

	@RequestMapping("flowmanage")
	public String flowManage(){
		return "flow/flowmanage";
	}

}
