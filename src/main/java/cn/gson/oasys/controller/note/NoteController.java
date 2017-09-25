package cn.gson.oasys.controller.note;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
	
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.commons.io.IOUtils;
import org.apache.ibatis.annotations.Param;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import cn.gson.oasys.model.dao.notedao.AttachmentDao;
import cn.gson.oasys.model.dao.notedao.CatalogDao;
import cn.gson.oasys.model.dao.notedao.NoteDao;
import cn.gson.oasys.model.dao.notedao.NoteService;
import cn.gson.oasys.model.dao.system.StatusDao;
import cn.gson.oasys.model.dao.system.TypeDao;
import cn.gson.oasys.model.dao.user.UserDao;
import cn.gson.oasys.model.entity.note.Attachment;
import cn.gson.oasys.model.entity.note.Catalog;
import cn.gson.oasys.model.entity.note.Note;
import cn.gson.oasys.model.entity.system.SystemStatusList;
import cn.gson.oasys.model.entity.system.SystemTypeList;
import cn.gson.oasys.model.entity.user.User;
import cn.gson.oasys.services.file.FileServices;


@Controller
@RequestMapping("/")
public class NoteController {
		
	Logger log=LoggerFactory.getLogger(getClass());
	
	@Autowired
	private FileServices fs;
	@Autowired 
	private NoteDao noteDao;
	@Autowired
	private NoteService NoteService;
	@Autowired
	private CatalogDao catalogDao;
	@Autowired
	private TypeDao typeDao;
	@Autowired
	private StatusDao statusDao;
	@Autowired
	private UserDao userDao;
	@Autowired
	private AttachmentDao attDao;
	
	Attachment att;
	List<Note> noteList;
	List<Catalog> cataloglist;
    
	//收藏查询
		@RequestMapping("collectfind")
		public String dsafdsf(Model model,HttpServletRequest request,@RequestParam("iscollect")String iscollected,HttpSession session){
			Long userid=Long.valueOf(session.getAttribute("userId")+"");			
			long collect=Long.valueOf(iscollected);
			if(collect==1){
			noteList=noteDao.findByIsCollected(collect);
			model.addAttribute("collect", 0);
			}
			else if(collect==0){
				noteList=(List<Note>) noteDao.finduser(userid);
				model.addAttribute("collect", 1);
			}
			List<SystemTypeList>  type= (List<SystemTypeList>) typeDao.findByTypeModel("aoa_note_list");
			List<SystemStatusList>  status=(List<SystemStatusList>) statusDao.findByStatusModel("aoa_note_list");
			request.setAttribute("type", type);
			request.setAttribute("status", status);
			model.addAttribute("nlist", noteList);
			return "note/notewrite";
		}
	
	//收藏
	@RequestMapping("collect")
	public String dsaf(HttpServletRequest request){
		String id=request.getParameter("id");
		String iscollected=request.getParameter("iscollected");
		NoteService.updatecollect(Long.valueOf(iscollected), Long.valueOf(id));
		return "note/notewrite";
	}
	
	
	//保存的get方法
	@RequestMapping(value="notesave",method=RequestMethod.GET)
	public void testdfd(@RequestParam("file") MultipartFile file,HttpServletRequest request){
	}
	
	//保存的post方法
		@RequestMapping(value="notesave",method=RequestMethod.POST)
		public String testdfddf(@RequestParam("file") MultipartFile file,@Valid @RequestParam("title")String title,  HttpServletRequest request,HttpSession session) throws IllegalStateException, IOException{
			Note note = null;
			Long attid=null;
			Set<User> userss=null;
			Long  userid=Long.parseLong(session.getAttribute("userId")+"");
			User user=userDao.findOne(userid);
			Long nid=Long.valueOf(request.getParameter("nid"));
			//接下来就是获取的数据
			String catalogname=request.getParameter("catalogname");
			String catalogName=catalogname.substring(1,catalogname.length());
			long catalogId=catalogDao.findByCatalogName(catalogName);
			String typename=request.getParameter("type");
			long typeId=typeDao.findByTypeModelAndTypeName("aoa_note_list",typename).getTypeId();
			String statusName=request.getParameter("status");
			long statusId=statusDao.findByStatusModelAndStatusName("aoa_note_list",statusName).getStatusId();
			String content=request.getParameter("content");
			//nid为-1就是新建
			if(nid==-1){
				//判断文件是否为空
				if(!file.isEmpty())
					{
					att =(Attachment) fs.savefile(file, user, null, false);
				    attid=att.getAttachmentId();
					}
				else if(file.isEmpty())
					attid=null;
				
			
			//0l表示新建的时候默认为没有收藏
			 note=new Note(title, content, catalogId, typeId, statusId, attid, new Date(),0l);
			
			}
			//nid大于0就是修改某个对象
			if(nid>0){
				note=noteDao.findOne(nid);
				if(note.getAttachId()==null){
				if(!file.isEmpty())
				{
				att =(Attachment) fs.savefile(file, user, null, false);
			    attid=att.getAttachmentId();
			    note.setAttachId(attid);
			    noteDao.save(note);
			    }
				}
				if(note.getAttachId()!=null)
				fs.updateatt(file, user, null, note.getAttachId());
				
				NoteService.updatenote(catalogId, typeId, statusId, title, content, nid);
				
			}
			//判断是否共享
			if(request.getParameter("receiver")!=null&&(request.getParameter("receiver").trim().length()>0))
			{  
				userss=new HashSet<>();
				String receivers=request.getParameter("receiver");
				String[] receiver=receivers.split(";");
				for (String re : receiver) {
					System.out.println(re);
					User user2=userDao.findid(re);
					userss.add(user2);
				}
				
			}
			else 
			{ 
				//保存为该用户的笔记 绑定用户id
				userss=new HashSet<>();
			    userss.add(user);
			}
			//设置创建人
			 note.setCreatemanId(userid);
			 note.setUserss(userss);
			 noteDao.save(note);
			return "redirect:/noteview";
		}
	
	//查找类型
	@RequestMapping("notetype")
	public String test43(Model model,HttpServletRequest request,@Param("typeid")String id,HttpSession session){
		Long userid=Long.valueOf(session.getAttribute("userId")+"");
		long typeid=Long.valueOf(id);
		noteList =noteDao.findByTypeId(typeid,userid);
		System.out.println(noteList);
		List<SystemTypeList>  type= (List<SystemTypeList>) typeDao.findByTypeModel("aoa_note_list");
		List<SystemStatusList>  status=(List<SystemStatusList>) statusDao.findByStatusModel("aoa_note_list");
		request.setAttribute("type", type);
		request.setAttribute("status", status);
		model.addAttribute("nlist", noteList);
		return "note/notewrite";
	}
	
	//笔记批量删除
	@RequestMapping("notesomedelete")
	public String dsafds(HttpServletRequest request){
		String sum=request.getParameter("sum");
		String[] strings= sum.split(";");
		for (String s : strings) {
			long noteids=Long.valueOf(s);
			noteDao.delete(noteids);
		}
		return "redirect:/noteview";
	}
	
	//笔记删除
	@RequestMapping("notedelete")
	public String testrw(Model model,HttpServletRequest request){
		String nid=request.getParameter("nid");
		long noteid=Long.valueOf(nid);
	    noteDao.delete(noteid);
		return "redirect:/noteview";
	}
	
	//目录删除
	@RequestMapping("catadelete")
	public String testrwd(Model model,HttpServletRequest request){
		String cid=request.getParameter("cid");
		long catalogid=Long.valueOf(cid);
		catalogDao.delete(catalogid);
		return "redirect:/noteview";
	}
	
	//笔记主界面
	@RequestMapping(value="noteview",method=RequestMethod.GET)
	public String test(Model model,HttpServletRequest request,HttpSession session){
		Long  userid=Long.parseLong(session.getAttribute("userId")+"");
		noteList = (List<Note>) noteDao.finduser(userid);
		cataloglist=(List<Catalog>) catalogDao.findAll();
		
//		long typeid=Long.valueOf(typeId);
//		noteList =noteDao.findByTypeId(typeid);
		List<SystemTypeList>  type= (List<SystemTypeList>) typeDao.findByTypeModel("aoa_note_list");
		List<SystemStatusList>  status=(List<SystemStatusList>) statusDao.findByStatusModel("aoa_note_list");
		request.setAttribute("type", type);
		request.setAttribute("status", status);
		System.out.println(noteList);
		model.addAttribute("nlist", noteList);
		System.out.println(cataloglist);
		model.addAttribute("calist", cataloglist);
		return "note/noteview";
	}
	
	//post请求 添加类型
		@RequestMapping(value="noteview",method=RequestMethod.POST)
		public String test3332(HttpServletRequest request,@Param("title")String title){
			String catalogName=request.getParameter("name");
			catalogDao.save(new Catalog(catalogName));
			return "redirect:/noteview";
		}
	
	//显示具体信息
	@RequestMapping("noteinfo")
	public String test3(@Param("id")String id,HttpServletRequest Request,HttpServletResponse response,HttpSession session) throws IOException{
		
		Attachment attachment=null;
		FileInputStream fis=null;
		OutputStream os=null;
		Long nid=Long.valueOf(id);
		Note note=noteDao.findOne(nid);
		User user=userDao.findOne(note.getCreatemanId());
		if(note.getAttachId()!=null){
		att=attDao.findByAttachmentId(note.getAttachId());
		}
		
//		//读取文件流
//		ServletOutputStream sos = response.getOutputStream();
//		byte[] data = new byte[att.getAttachmentSize().intValue()];
//		IOUtils.readFully(new FileInputStream("F:/OAFILE"+att.getAttachmentPath()), data);
//		IOUtils.write(data, sos);
		
		Request.setAttribute("note", note);
		Request.setAttribute("user", user);
		Request.setAttribute("att", att);
		return "note/noteinfo";
	}
	
	//下载文件
	@RequestMapping("down")
	public void dsaf(HttpServletResponse response,
			HttpServletRequest request){
		if(StringUtils.isEmpty(request.getParameter("paid"))||request.getParameter("paid")==null||request.getParameter("paid").length()==0){}
		else {
			Long paid=Long.valueOf(request.getParameter("paid"));
			att=attDao.findByAttachmentId(paid);
		}
		if(StringUtils.isEmpty(request.getParameter("nid"))||request.getParameter("nid")==null||request.getParameter("nid").length()==0){}
		else {
			Long nid=Long.valueOf(request.getParameter("nid"));
			Note note=noteDao.findOne(nid);
			att=attDao.findByAttachmentId(note.getAttachId());
		}
		File file=fs.get(att);
		System.out.println(file.getAbsolutePath());
		try {
			//在浏览器里面显示
			response.setContentLength(att.getAttachmentSize().intValue());
			response.setContentType(att.getAttachmentType());
			response.setHeader("Content-Disposition", "attachment;filename="+
			new String(att.getAttachmentName().getBytes("UTF-8"), "ISO8859-1"));  
		ServletOutputStream sos = response.getOutputStream();
		byte[] data = new byte[att.getAttachmentSize().intValue()];
		IOUtils.readFully(new FileInputStream(file), data);
		IOUtils.write(data, sos);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	//显示所有
	@RequestMapping(value = "notewrite", method = RequestMethod.GET)
	public String test33(Model model,HttpServletRequest request,HttpSession session){
		Long  userid=Long.parseLong(session.getAttribute("userId")+"");
		if(!request.getParameter("id").equals("-2")){
			String cid=request.getParameter("id");
			Long id=Long.valueOf(cid);
			noteList=noteDao.findByCatalogId(id,userid);
			System.out.println(noteList);
		}
		else if(request.getParameter("id").equals("-2")){
			//返回的时候跳-2 
		noteList = (List<Note>) noteDao.finduser(userid);
		System.out.println(noteList);}
		List<SystemTypeList>  type= (List<SystemTypeList>) typeDao.findByTypeModel("aoa_note_list");
		List<SystemStatusList>  status=(List<SystemStatusList>) statusDao.findByStatusModel("aoa_note_list");
		request.setAttribute("type", type);
		request.setAttribute("status", status);
		model.addAttribute("nlist", noteList);
		return "note/notewrite";
	}
	
	//模糊查询或者是根据目录查找
	@RequestMapping(value="notewrite",method=RequestMethod.POST)
	public String test333(Model model,HttpServletRequest request,HttpSession session){
		Long userid=Long.valueOf(session.getAttribute("userId")+"");
		//模糊查找
		String title=request.getParameter("title");
		noteList =noteDao.findBytitle(title,userid);
		System.out.println(noteList);
		//根据目录
		List<SystemTypeList>  type= (List<SystemTypeList>) typeDao.findByTypeModel("aoa_note_list");
		List<SystemStatusList>  status=(List<SystemStatusList>) statusDao.findByStatusModel("aoa_note_list");
		request.setAttribute("type", type);
		request.setAttribute("status", status);
		model.addAttribute("nlist", noteList);
		return "note/notewrite";
	}
	
	//编辑
	@RequestMapping(value="noteedit",method=RequestMethod.GET)
	public String test4(@Param("id")String id,HttpServletRequest Request){
		//目录
		cataloglist=(List<Catalog>) catalogDao.findAll();
		Request.setAttribute("calist", cataloglist);
		
		//用户 就是联系人
		List<User> users=(List<User>) userDao.findAll();
		
		
		Long nid=Long.valueOf(id);
		//新建
		if(nid==-1){
			Request.setAttribute("note",null);
			Request.setAttribute("users", users);
			//新建id
			Request.setAttribute("nid", nid);
			System.out.println("保存一个对象");
		}
		
		//修改
		else if(nid>0){
			Note note=noteDao.findOne(nid);
			Request.setAttribute("note", note);
			Request.setAttribute("users", users);
			//修改id
			Request.setAttribute("nid", nid);
			System.out.println(note);
		}
		List<SystemTypeList>  type= (List<SystemTypeList>) typeDao.findByTypeModel("aoa_note_list");
		List<SystemStatusList>  status=(List<SystemStatusList>) statusDao.findByStatusModel("aoa_note_list");
		Request.setAttribute("type", type);
		Request.setAttribute("status", status);
		Request.setAttribute("id", nid);
		return "note/noteedit";
	}
	
	//编辑提交数据
		@RequestMapping(value="noteedit",method=RequestMethod.POST)
		public String test4e(@Param("id")String id,HttpServletRequest Request){
			
			return "note/noteedit";
		}
		
	
}
