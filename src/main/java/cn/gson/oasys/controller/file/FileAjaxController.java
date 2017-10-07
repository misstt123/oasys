package cn.gson.oasys.controller.file;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;

import cn.gson.oasys.model.dao.filedao.FileListdao;
import cn.gson.oasys.model.dao.user.UserDao;
import cn.gson.oasys.model.entity.file.FileList;
import cn.gson.oasys.model.entity.file.FilePath;
import cn.gson.oasys.model.entity.user.User;
import cn.gson.oasys.services.file.FileServices;

@Controller
@RequestMapping("/")
public class FileAjaxController {
	
	@Autowired
	FileServices fs;
	@Autowired
	FileListdao fldao;
	@Autowired
	UserDao udao;
	
	@RequestMapping("mcloadpath")
	public String mcloadpath(@RequestParam("mctoid") Long mctoid,@RequestParam("mcpathids") List<Long> mcpathids,Model model){
		System.out.println("进来了是吧！~~");
		System.out.println(mctoid);
		System.out.println(mcpathids);
		
		List<FilePath> showsonpaths = fs.mcpathload(mctoid, mcpathids);
		model.addAttribute("mcpaths",showsonpaths);
		return "file/mcpathload";
	}

	@RequestMapping("filetypeload")
	public String filetypeload(@SessionAttribute("userId")Long userid,@RequestParam("type") String type,Model model){
		User user = udao.findOne(userid);
		
		if("picture".equals(type)){
			String contenttype = "image/%";
			List<FileList> fileLists = fldao.findByUserAndContentTypeLike(user, contenttype);
			System.out.println(fileLists);
			model.addAttribute("files", fileLists);
			model.addAttribute("isload",1);
			model.addAttribute("type", type);
		}
		
		return "file/filetypeload";
	}
	
	
	@RequestMapping("fileloaddeletefile")
	public String fileloaddeletefile(@RequestParam("type") String type,@RequestParam(value="checkpathids[]",required=false) List<Long> checkpathids,@RequestParam(value="checkfileids[]",required=false) List<Long> checkfileids,Model model){
		
		System.out.println(type+checkpathids+checkfileids);
		if (!checkfileids.isEmpty()) {
			// 删除文件
			fs.deleteFile(checkfileids);
		}
		if (!checkpathids.isEmpty()) {
			// 删除文件夹
			fs.deletePath(checkpathids);
		}
		
		model.addAttribute("type", type);
		return "forward:/filetypeload";
	}
}
