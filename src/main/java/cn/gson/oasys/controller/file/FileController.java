package cn.gson.oasys.controller.file;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.IOUtils;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.alibaba.fastjson.JSONArray;

import cn.gson.oasys.model.dao.filedao.FileListdao;
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
	private FileListdao fldao;
	@Autowired
	private UserDao udao;

	/**
	 * 第一次进入
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping("filemanage")
	public String usermanage(@SessionAttribute("userId")Long userid,Model model) {
		System.out.println(userid);
		User user = udao.findOne(userid);
		
		FilePath filepath = fpdao.findByPathName(user.getUserName());
		
		model.addAttribute("nowpath", filepath);
		model.addAttribute("paths", fs.findpathByparent(filepath.getId()));
		model.addAttribute("files", fs.findfileBypath(filepath));
		
		model.addAttribute("userrootpath",filepath);
		model.addAttribute("mcpaths",fs.findpathByparent(filepath.getId()));
		return "file/filemanage";
	}

	/**
	 * 进入指定文件夹 的controller方法
	 * 
	 * @param pathid
	 * @param model
	 * @return
	 */
	@RequestMapping("filetest")
	public String text(@SessionAttribute("userId")Long userid,@RequestParam("pathid") Long pathid, Model model) {
		User user = udao.findOne(userid);
		
		FilePath userrootpath = fpdao.findByPathName(user.getUserName());
		
		
		// 查询当前目录
		FilePath filepath = fpdao.findOne(pathid);

		// 查询当前目录的所有父级目录
		List<FilePath> allparentpaths = new ArrayList<>();
		fs.findAllParent(filepath, allparentpaths);
		Collections.reverse(allparentpaths);

		model.addAttribute("allparentpaths", allparentpaths);
		model.addAttribute("nowpath", filepath);
		model.addAttribute("paths", fs.findpathByparent(filepath.getId()));
		model.addAttribute("files", fs.findfileBypath(filepath));
		//复制移动显示 目录
		model.addAttribute("userrootpath",userrootpath);
		model.addAttribute("mcpaths",fs.findpathByparent(userrootpath.getId()));
		return "file/filemanage";
	}

	/**
	 * 文件上传 controller方法
	 * 
	 * @param file
	 * @param pathid
	 * @param session
	 * @param model
	 * @return
	 * @throws IllegalStateException
	 * @throws IOException
	 */
	@RequestMapping("fileupload")
	public String uploadfile(@RequestParam("file") MultipartFile file, @RequestParam("pathid") Long pathid,
			HttpSession session, Model model) throws IllegalStateException, IOException {
		Long userid = Long.parseLong(session.getAttribute("userId") + "");
		User user = udao.findOne(userid);
		FilePath nowpath = fpdao.findOne(pathid);
		// true 表示从文件使用上传
		FileList uploadfile = (FileList) fs.savefile(file, user, nowpath, true);
		System.out.println(uploadfile);
		model.addAttribute("pathid", pathid);
		return "forward:/filetest";
	}

	/**
	 * 删除前台选择的文件以及文件夹
	 * 
	 * @param pathid
	 * @param checkpathids
	 * @param checkfileids
	 * @param model
	 * @return
	 */
	@RequestMapping("deletefile")
	public String deletefile(@RequestParam("pathid") Long pathid, @RequestParam("checkpathids") List<Long> checkpathids,
			@RequestParam("checkfileids") List<Long> checkfileids, Model model) {
		System.out.println(checkfileids);
		System.out.println(checkpathids);

		if (!checkfileids.isEmpty()) {
			// 删除文件
			fs.deleteFile(checkfileids);
		}
		if (!checkpathids.isEmpty()) {
			// 删除文件夹
			fs.deletePath(checkpathids);
		}

		model.addAttribute("pathid", pathid);
		return "forward:/filetest";
	}

	/**
	 * 新建文件夹
	 * 
	 * @param pathid
	 * @param pathname
	 * @param model
	 * @return
	 */
	@RequestMapping("createpath")
	public String createpath(@RequestParam("pathid") Long pathid, @RequestParam("pathname") String pathname,
			Model model) {
		System.out.println(pathid + "aaaaaa" + pathname);
		FilePath filepath = fpdao.findOne(pathid);
		String newname = fs.onlyname(pathname, filepath, null, 1, false);

		FilePath newfilepath = new FilePath(pathid, newname);

		System.out.println(newname);
		System.out.println(newfilepath);
		fpdao.save(newfilepath);

		model.addAttribute("pathid", pathid);
		return "forward:/filetest";
	}

	@RequestMapping("imgshow")
	public void imgshow(HttpServletResponse response, @RequestParam("fileid") Long fileid) {
		try {
			FileList filelist = fldao.findOne(fileid);
			File file = fs.getFile(filelist.getFilePath());
			writefile(response, file);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@RequestMapping("downfile")
	public void downFile(HttpServletResponse response, @RequestParam("fileid") Long fileid) {
		try {
			FileList filelist = fldao.findOne(fileid);
			File file = fs.getFile(filelist.getFilePath());
			response.setContentLength(filelist.getSize().intValue());
			response.setContentType(filelist.getContentType());
			response.setHeader("Content-Disposition","attachment;filename=" + new String(filelist.getFileName().getBytes("UTF-8"), "ISO8859-1"));
			writefile(response, file);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * 写文件
	 * 
	 * @param response
	 * @param file
	 * @throws IOException 
	 */
	public void writefile(HttpServletResponse response, File file) throws IOException {
		ServletOutputStream sos = response.getOutputStream();
		// 读取文件问字节码
		byte[] data = new byte[(int) file.length()];
		IOUtils.readFully(new FileInputStream(file), data);
		// 将文件流输出到浏览器
		IOUtils.write(data, sos);
	
	}

	// @RequestMapping(value = "pathin",method = RequestMethod.POST)
	// public @ResponseBody Map<Integer, Object>
	// pathin(@RequestParam("pathid")Long pathid){
	// FilePath filepath = fpdao.findOne(pathid);
	// if(null == filepath)
	// return null;
	//
	// Map<Integer, Object> maps = new HashMap<>();
	// maps.put(1, fs.findpath(filepath.getId()));
	// maps.put(2, fs.findfileBypath(filepath));
	// System.out.println(maps);
	// return maps;
	// }

}
