package cn.gson.oasys.model.entity.process;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class ProcedureController {

	@RequestMapping("xinxeng")
	public String index(){
		
		return "process/procedure";
	}
	
	@RequestMapping("burse")
	public String bursement(){
		return "process/bursement";
	}
}
