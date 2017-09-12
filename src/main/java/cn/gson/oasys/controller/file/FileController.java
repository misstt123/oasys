package cn.gson.oasys.controller.file;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.alibaba.fastjson.JSONArray;

import cn.gson.oasys.model.dao.filedao.FilePathdao;
import cn.gson.oasys.model.dao.userdao.Userdao;
import cn.gson.oasys.model.entity.file.FileList;
import cn.gson.oasys.model.entity.file.FilePath;
import cn.gson.oasys.model.entity.user.User;
import cn.gson.oasys.services.file.FileServices;

@Controller
@RequestMapping("/")
public class FileController {
	@Autowired
	private FileServices fs;
	@Autowired
	private FilePathdao fpdao;
	@Autowired
	private Userdao udao;
	
	@RequestMapping("filemanage")
	public String usermanage(Model model) {
		FilePath filepath = fpdao.findOne(6L);
		model.addAttribute("nowpath", filepath);
		model.addAttribute("paths", fs.findpathByparent(6L));
		model.addAttribute("files", fs.findfileBypath(filepath));
		return "file/filemanage";
	}
	
	@RequestMapping("filetest")
	public String text(@RequestParam("pathid")Long pathid,Model model){
		FilePath filepath = fpdao.findOne(pathid);
		List<FilePath> allparentpaths = new ArrayList<>();
//		List<FilePath> allparentpaths2 = new ArrayList<>();
		fs.findAllParent(filepath, allparentpaths);
//		fs.savepath(filepath, allparentpaths2);
//		fs.savefile(filepath);
		System.out.println(allparentpaths);
		Collections.reverse(allparentpaths);
		model.addAttribute("allparentpaths",allparentpaths);
		model.addAttribute("nowpath",filepath);
		model.addAttribute("paths", fs.findpathByparent(filepath.getId()));
		model.addAttribute("files", fs.findfileBypath(filepath));
		return "file/filemanage";
	}
	
	@RequestMapping("fileupload")
	public String uploadfile(@RequestParam("file") MultipartFile file,@RequestParam("pathid")Long pathid,Model model) throws IllegalStateException, IOException{
		User user = udao.findOne(1L);
		FilePath nowpath = fpdao.findOne(pathid);
		FileList uploadfile = fs.savefile(file, user, nowpath);
		System.out.println(uploadfile);
		model.addAttribute("pathid",pathid);
		return "forward:/filetest";
	}
	
//	@RequestMapping(value = "pathin",method = RequestMethod.POST)
//	public @ResponseBody Map<Integer, Object> pathin(@RequestParam("pathid")Long pathid){
//		FilePath filepath = fpdao.findOne(pathid);
//		if(null == filepath)
//			return null;
//		
//		Map<Integer, Object> maps = new HashMap<>();
//		maps.put(1, fs.findpath(filepath.getId()));
//		maps.put(2, fs.findfileBypath(filepath));
//		System.out.println(maps);
//		return maps;
//	}

}
