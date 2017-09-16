package cn.gson.oasys.controller.file;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
import cn.gson.oasys.model.dao.user.UserDao;
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
	private UserDao udao;
	
	/**
	 * 第一次进入
	 * @param model
	 * @return
	 */
	@RequestMapping("filemanage")
	public String usermanage(Model model) {
		FilePath filepath = fpdao.findOne(6L);
		model.addAttribute("nowpath", filepath);
		model.addAttribute("paths", fs.findpathByparent(6L));
		model.addAttribute("files", fs.findfileBypath(filepath));
		return "file/filemanage";
	}
	
	/**
	 * 进入指定目录 的controller方法
	 * @param pathid
	 * @param model
	 * @return
	 */
	@RequestMapping("filetest")
	public String text(@RequestParam("pathid")Long pathid,Model model){
		//查询当前目录
		FilePath filepath = fpdao.findOne(pathid);
		
		//查询当前目录的所有父级目录
		List<FilePath> allparentpaths = new ArrayList<>();
		fs.findAllParent(filepath, allparentpaths);
		Collections.reverse(allparentpaths);
		
		model.addAttribute("allparentpaths",allparentpaths);
		model.addAttribute("nowpath",filepath);
		model.addAttribute("paths", fs.findpathByparent(filepath.getId()));
		model.addAttribute("files", fs.findfileBypath(filepath));
		return "file/filemanage";
	}
	
	/**
	 * 文件上传 controller方法
	 * @param file
	 * @param pathid
	 * @param session
	 * @param model
	 * @return
	 * @throws IllegalStateException
	 * @throws IOException
	 */
	@RequestMapping("fileupload")
	public String uploadfile(@RequestParam("file") MultipartFile file,@RequestParam("pathid")Long pathid,HttpSession session,Model model) throws IllegalStateException, IOException{
		Long userid = Long.parseLong(session.getAttribute("userId")+"");
		User user = udao.findOne(userid);
		FilePath nowpath = fpdao.findOne(pathid);
		//true 表示从文件使用上传
		FileList uploadfile = (FileList) fs.savefile(file, user, nowpath,true);
		System.out.println(uploadfile);
		model.addAttribute("pathid",pathid);
		return "forward:/filetest";
	}
	
	@RequestMapping("deletefile")
	public String deletefile(@RequestParam("pathid")Long pathid,@RequestParam("checkpathids")List<Long> checkpathids,@RequestParam("checkfileids")List<Long> checkfileids,Model model){
		System.out.println(checkpathids);
		System.out.println(checkfileids);
		
		//删除文件
		fs.deleteFile(checkfileids);
		
		//删除文件夹
		fs.deletePath(checkpathids);
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
