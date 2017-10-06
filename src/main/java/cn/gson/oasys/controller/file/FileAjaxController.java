package cn.gson.oasys.controller.file;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cn.gson.oasys.model.entity.file.FilePath;
import cn.gson.oasys.services.file.FileServices;

@Controller
@RequestMapping("/")
public class FileAjaxController {
	
	@Autowired
	FileServices fs;
	
	@RequestMapping("mcloadpath")
	public String mcloadpath(@RequestParam("mctoid") Long mctoid,@RequestParam("mcpathids") List<Long> mcpathids,Model model){
		System.out.println("进来了是吧！~~");
		System.out.println(mctoid);
		System.out.println(mcpathids);
		
		List<FilePath> showsonpaths = fs.mcpathload(mctoid, mcpathids);
		model.addAttribute("mcpaths",showsonpaths);
		return "file/mcpathload";
	}

}
