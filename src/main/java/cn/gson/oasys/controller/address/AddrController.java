package cn.gson.oasys.controller.address;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class AddrController {
	
	@RequestMapping("addrmanage")
	private String addrmanage() {
		return "address/addrindex";
	}
}
