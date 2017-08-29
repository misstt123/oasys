package cn.gson.oasys.controller.address;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class AddressManageController {

	@RequestMapping("addressmanage")
	public String addressManage(){
		return "index/addressindex";
	}

}
