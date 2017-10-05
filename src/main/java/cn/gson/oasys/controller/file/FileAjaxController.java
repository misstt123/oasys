package cn.gson.oasys.controller.file;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class FileAjaxController {
	@RequestMapping("mcloadpath")
	public String mcloadpath(){
		System.out.println("进来了是吧！~~");
		
		return "";
	}

}
