package cn.gson.oasys.controller.file;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.gson.oasys.model.dao.filedao.FilePathdao;
import cn.gson.oasys.model.entity.file.FilePath;
import cn.gson.oasys.services.file.FileServices;

@Controller
@RequestMapping("/")
public class FileController {
	@Autowired
	private FileServices fs;
	@Autowired
	private FilePathdao fpdao;
	
	@RequestMapping("filemanage")
	public String usermanage(Model model) {
		FilePath filepath = fpdao.findOne(1L);
		model.addAttribute("paths", fs.findpath(1L));
		model.addAttribute("files", fs.findfileBypath(filepath));
		return "file/filemanage";
	}

}
