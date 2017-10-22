package cn.gson.oasys.controller.file;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;

import cn.gson.oasys.model.dao.filedao.FileListdao;
import cn.gson.oasys.model.dao.filedao.FilePathdao;
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
	FilePathdao fpdao;
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

	/**
	 * 文件类型筛选显示load
	 * @param userid
	 * @param type
	 * @param model
	 * @return
	 */
	@RequestMapping("filetypeload")
	public String filetypeload(@SessionAttribute("userId")Long userid,
			@RequestParam("type") String type,
			Model model){
		User user = udao.findOne(userid);
		String contenttype;
		List<FileList> fileLists = null;
		List<FilePath> filePaths = null;
		switch (type) {
		
		case "document":
			fileLists = fldao.finddocument(user);
			System.out.println(fileLists);
			model.addAttribute("files", fileLists);
			model.addAttribute("isload",1);
			break;
			
		case "picture":
			contenttype = "image/%";
			fileLists = fldao.findByUserAndContentTypeLikeAndFileIstrash(user, contenttype, 0L);
			System.out.println(fileLists);
			model.addAttribute("files", fileLists);
			model.addAttribute("isload",1);
			break;
			
		case "music":
			contenttype = "audio/%";
			fileLists = fldao.findByUserAndContentTypeLikeAndFileIstrash(user, contenttype, 0L);
			System.out.println(fileLists);
			model.addAttribute("files", fileLists);
			model.addAttribute("isload",1);
			break;
			
		case "video":
			contenttype = "video/%";
			fileLists = fldao.findByUserAndContentTypeLikeAndFileIstrash(user, contenttype, 0L);
			System.out.println(fileLists);
			model.addAttribute("files", fileLists);
			model.addAttribute("isload",1);
			break;
		case "yasuo":
			contenttype = "application/x%";
			fileLists = fldao.findByUserAndContentTypeLikeAndFileIstrash(user, contenttype, 0L);
			System.out.println(fileLists);
			model.addAttribute("files", fileLists);
			model.addAttribute("isload",1);
			break;
			
		case "trash":
			filePaths = fpdao.findByPathUserIdAndPathIstrash(userid, 1L);
			fileLists = fldao.findByUserAndFileIstrash(user, 1L);
			
			model.addAttribute("paths", filePaths);
			model.addAttribute("files", fileLists);
			model.addAttribute("istrash", 1);
			model.addAttribute("isload",1);
			break;
			
		case "share":
			fileLists = fldao.findByFileIsshareAndFileIstrash(1L, 0L);
			model.addAttribute("files", fileLists);
			model.addAttribute("isshare", 1);
			model.addAttribute("isload",1);
			model.addAttribute("userid",userid);
			break;
			

		default:
			break;
		}
		
		model.addAttribute("type", type);
		return "file/filetypeload";
	
	}
	
	
	@RequestMapping("findfileandpath")
	public String findfileandpath(@SessionAttribute("userId") Long userid,
			@RequestParam(value = "findfileandpath",required=false) String findfileandpath,
			@RequestParam(value = "type",defaultValue="all") String type,
			Model model){
		System.out.println("查找！~~~~~~");
		String findlike = "%" +findfileandpath+ "%";
		User user = udao.findOne(userid);
		FilePath fpath = fpdao.findByParentIdAndPathUserId(1L, userid);
		String contenttype;
		List<FileList> fileLists = null;
		List<FilePath> filePaths = null;
		System.out.println(type);
		switch (type) {
		
		case "document":
			fileLists = fldao.finddocumentlike(user, findlike);
			model.addAttribute("files", fileLists);
			model.addAttribute("isload",1);
			break;
			
		case "picture":
			contenttype = "image/%";
			fileLists = fldao.findByUserAndFileIstrashAndContentTypeLikeAndFileNameLike(user, 0L, contenttype, findlike);
			model.addAttribute("files", fileLists);
			model.addAttribute("isload",1);
			break;
			
		case "music":
			contenttype = "audio/%";
			fileLists = fldao.findByUserAndFileIstrashAndContentTypeLikeAndFileNameLike(user, 0L, contenttype, findlike);
			model.addAttribute("files", fileLists);
			model.addAttribute("isload",1);
			break;
			
		case "video":
			contenttype = "video/%";
			fileLists = fldao.findByUserAndFileIstrashAndContentTypeLikeAndFileNameLike(user, 0L, contenttype, findlike);
			model.addAttribute("files", fileLists);
			model.addAttribute("isload",1);
			break;
			
		case "yasuo":
			contenttype = "application/x%";
			fileLists = fldao.findByUserAndFileIstrashAndContentTypeLikeAndFileNameLike(user, 0L, contenttype, findlike);
			model.addAttribute("files", fileLists);
			model.addAttribute("isload",1);
			break;
			
		case "trash":
			filePaths = fpdao.findByPathUserIdAndPathIstrashAndPathNameLikeAndParentIdNot(userid, 1L, findlike, 1L);
			fileLists = fldao.findByUserAndFileIstrashAndContentTypeLikeAndFileNameLike(user, 1L, "%%", findlike);
			model.addAttribute("istrash", 1);
			model.addAttribute("isload",1);
			model.addAttribute("paths", filePaths);
			model.addAttribute("files", fileLists);
			break;
			
		case "share":
			fileLists = fldao.findByFileIsshareAndFileNameLike(1L, findlike);
			model.addAttribute("files", fileLists);
			model.addAttribute("isshare", 1);
			model.addAttribute("isload",1);
			break;
			
		default:
			System.out.println("什么都不是");
			filePaths = fpdao.findByPathUserIdAndPathIstrashAndPathNameLikeAndParentIdNot(userid, 0L, findlike, 1L);
			fileLists = fldao.findByUserAndFileIstrashAndFileNameLike(user, 0L,findlike);
			model.addAttribute("files", fileLists);
			model.addAttribute("paths", filePaths);
			model.addAttribute("isload",1);
			break;
		}
		
		model.addAttribute("type", type);
		return "file/filetypeload";
		
	}
	
	@RequestMapping("fileloadshare")
	public String fileloadshare(@RequestParam("type") String type,
			@RequestParam(value="checkfileids[]",required=false) List<Long> checkfileids,
			Model model
			){
		if (checkfileids!=null) {
			fs.doshare(checkfileids);
		}
		
		model.addAttribute("message","分享成功");
		model.addAttribute("type", type);
		return "forward:/filetypeload";
	}
	
	/**
	 * load删除controller
	 * @param type
	 * @param checkpathids
	 * @param checkfileids
	 * @param model
	 * @return
	 */
	@RequestMapping("fileloaddeletefile")
	public String fileloaddeletefile(@RequestParam("type") String type,
			@RequestParam(value="checkpathids[]",required=false) List<Long> checkpathids,
			@RequestParam(value="checkfileids[]",required=false) List<Long> checkfileids,
			Model model){
		
		System.out.println(type+checkpathids+checkfileids);
		if (checkfileids!=null) {
			// 删除文件
			fs.deleteFile(checkfileids);
		}
		if (checkpathids!=null) {
			// 删除文件夹
			fs.deletePath(checkpathids);
		}
		
		model.addAttribute("type", type);
		return "forward:/filetypeload";
	}
	/**
	 * 将文件放入回收战
	 * @param userid
	 * @param type
	 * @param checkpathids
	 * @param checkfileids
	 * @param model
	 * @return
	 */
	@RequestMapping("fileloadtrashfile")
	public String fileloadtrashfile(@SessionAttribute("userId") Long userid,
			@RequestParam("type") String type,
			@RequestParam(value="checkpathids[]",required=false) List<Long> checkpathids,
			@RequestParam(value="checkfileids[]",required=false) List<Long> checkfileids,
			Model model){
		
		System.out.println(type+checkpathids+checkfileids);
		if (checkfileids!=null) {
			// 文件放入回收站
			fs.trashfile(checkfileids, 1L,userid);
		}
		if (checkpathids!=null) {
			// 删除文件夹
			fs.trashpath(checkpathids,1L,true);
			//fs.trashPath(checkpathids);
		}
		
		model.addAttribute("type", type);
		return "forward:/filetypeload";
	}
	
	/**
	 * load重命名
	 * @param type
	 * @param renamefp
	 * @param creatpathinput
	 * @param isfile
	 * @param pathid
	 * @param model
	 * @return
	 */
	@RequestMapping("fileloadrename")
	public String fileloadrename(@RequestParam("type") String type,
			@RequestParam("renamefp") Long renamefp,
			@RequestParam("creatpathinput") String creatpathinput,
			@RequestParam("isfile") boolean isfile,
			@RequestParam(value="pathid",required=false) Long pathid,
			Model model){
		System.out.println(type+renamefp+creatpathinput+isfile);
		
		fs.rename(creatpathinput, renamefp, pathid, isfile);
		
		model.addAttribute("type", type);
		return "forward:/filetypeload";
	}
	
	
	/**
	 * 回收站load 复原
	 * @param userid
	 * @param type
	 * @param checkpathids
	 * @param checkfileids
	 * @param model
	 * @return
	 */
	@RequestMapping("filereturnback")
	public String filereturnback(@SessionAttribute("userId") Long userid,
			@RequestParam("type") String type,
			@RequestParam(value="checkpathids[]",required=false) List<Long> checkpathids,
			@RequestParam(value="checkfileids[]",required=false) List<Long> checkfileids,
			Model model){
		if (checkfileids!=null) {
			fs.filereturnback(checkfileids,userid);
		}
		if (checkpathids!=null) {
			fs.pathreturnback(checkpathids, userid);
		}
		
		model.addAttribute("type", type);
		return "forward:/filetypeload";
		
	}
}
