package cn.gson.oasys.controller.note;


import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URLDecoder;
import java.util.ArrayList;
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
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;

import com.github.pagehelper.util.StringUtil;

import cn.gson.oasys.common.formValid.BindingResultVOUtil;
import cn.gson.oasys.common.formValid.MapToList;
import cn.gson.oasys.common.formValid.ResultEnum;
import cn.gson.oasys.common.formValid.ResultVO;
import cn.gson.oasys.controller.attendce.AttendceController;
import cn.gson.oasys.model.dao.notedao.AttachmentDao;
import cn.gson.oasys.model.dao.notedao.CatalogDao;
import cn.gson.oasys.model.dao.notedao.CatalogService;
import cn.gson.oasys.model.dao.notedao.NoteDao;
import cn.gson.oasys.model.dao.notedao.NoteService;
import cn.gson.oasys.model.dao.notedao.NoteUserDao;
import cn.gson.oasys.model.dao.system.StatusDao;
import cn.gson.oasys.model.dao.system.TypeDao;
import cn.gson.oasys.model.dao.user.DeptDao;
import cn.gson.oasys.model.dao.user.PositionDao;
import cn.gson.oasys.model.dao.user.UserDao;
import cn.gson.oasys.model.entity.note.Attachment;
import cn.gson.oasys.model.entity.note.Catalog;
import cn.gson.oasys.model.entity.note.Note;
import cn.gson.oasys.model.entity.note.Noteuser;
import cn.gson.oasys.model.entity.system.SystemStatusList;
import cn.gson.oasys.model.entity.system.SystemTypeList;
import cn.gson.oasys.model.entity.user.Dept;
import cn.gson.oasys.model.entity.user.Position;
import cn.gson.oasys.model.entity.user.User;
import cn.gson.oasys.services.file.FileServices;
import cn.gson.oasys.services.process.ProcessService;

@Controller
@RequestMapping("/")
public class NoteController {

	Logger log = LoggerFactory.getLogger(getClass());

	@Autowired
	private FileServices fs;
	@Autowired
	private NoteDao noteDao;
	@Autowired
	private NoteService NoteService;
	@Autowired
	private CatalogDao catalogDao;
	@Autowired
	private CatalogService catalogService;
	@Autowired
	private TypeDao typeDao;
	@Autowired
	private StatusDao statusDao;
	@Autowired
	private UserDao userDao;
	@Autowired
	private AttachmentDao attDao;
	@Autowired
	private NoteUserDao noteUserDao;
	@Autowired
	private ProcessService pservice;
	@Autowired
	private DeptDao ddao;
	@Autowired
	private PositionDao pdao;
	
	Attachment att;
	List<Note> noteList;
	List<Catalog> cataloglist=new ArrayList<Catalog>();
	List<SystemTypeList> type;
	List<SystemStatusList> status;
	// 收藏查询
	@RequestMapping("collectfind")
	public String dsafdsf(Model model, HttpServletRequest request, @RequestParam("iscollect") String iscollected,@RequestParam("cata") Long cid, 
			HttpSession session,@RequestParam(value="page",defaultValue="0")int page,@RequestParam(value="baseKey",required=false)String baseKey
			,@RequestParam(value = "type", required = false) String type,
			@RequestParam(value = "status", required = false) String status,
			@RequestParam(value = "time", required = false) String time,
			@RequestParam(value = "icon", required = false) String icon
			) {
		if(cid==-2)
			cid=null;
		Long userid = Long.valueOf(session.getAttribute("userId") + "");
		long collect = Long.valueOf(iscollected);
		
		System.out.println("收集"+collect);
		if (collect == 1) {
			setSomething(baseKey, type, status, time, icon, model,cid,null);
			Page<Note> upage= NoteService.sortpage(page, null, userid, collect, cid, null, type, status, time);
			model.addAttribute("url", "collectfind");
			paging(model, upage);
			//获得数据之后就将cid重新设置
			if(cid==null)
				cid=-2l;
			model.addAttribute("sort", "&iscollect="+collect+"&cata="+cid);
			model.addAttribute("sort2", "&iscollect="+collect+"&cata="+cid);
			model.addAttribute("collect", 0);
		} else if (collect == 0) {
			setSomething(baseKey, type, status, time, icon, model,cid,null);
			Page<Note> upage=NoteService.sortpage(page, null, userid, null, cid, null, type, status, time);
			model.addAttribute("url", "notewrite");
			paging(model, upage);
			model.addAttribute("sort", "&userid="+userid);
			model.addAttribute("sort2", "&userid="+userid);
			model.addAttribute("collect", 1);
		}
		
		typestatus(request);
		
		return "note/notewrite";
	}

	

	// 收藏
	@RequestMapping("collect")
	public String dsaf(Model model,HttpServletRequest request,
			HttpSession session,@RequestParam(value="page",defaultValue="0")int page,@RequestParam(value="baseKey",required=false)String baseKey
			,@RequestParam(value = "type", required = false) String type,
			@RequestParam(value = "status", required = false) String status,
			@RequestParam(value = "time", required = false) String time,
			@RequestParam(value = "icon", required = false) String icon
			) {
		Long userid = Long.valueOf(session.getAttribute("userId") + "");
		String id = request.getParameter("id");
		String iscollected = request.getParameter("iscollected");
		NoteService.updatecollect(Long.valueOf(iscollected), Long.valueOf(id));
		setSomething(baseKey, type, status, time, icon,model,null,null);
		Page<Note> upage=NoteService.sortpage(page, null, userid, null, null, null, type, status, time);
		model.addAttribute("url", "notewrite");
		paging(model, upage);
		model.addAttribute("sort", "&userid="+userid);
		typestatus(request);
		return "note/notewrite";
	}

	// 保存的get方法
	@RequestMapping(value = "notesave", method = RequestMethod.GET)
	public void testdfd(@RequestParam("file") MultipartFile file, HttpServletRequest request) {
	}

	// 保存的post方法
	@RequestMapping(value = "notesave", method = RequestMethod.POST)
	public String testdfddf(@RequestParam("file") MultipartFile file, @Valid Note note2, BindingResult br,
			HttpServletRequest request, HttpSession session) throws IllegalStateException, IOException {
		Note note = null;
		Long attid = null;
		Set<User> userss = null;
		Long userid = Long.parseLong(session.getAttribute("userId") + "");
		User user = userDao.findOne(userid);
		Long nid = Long.valueOf(request.getParameter("id"));
		// 接下来就是获取的数据
		String catalogname = request.getParameter("catalogname");
		String catalogName = catalogname.substring(1, catalogname.length());
		long catalogId = catalogDao.findByCatalogName(catalogName);
		String typename = request.getParameter("type");
		long typeId = typeDao.findByTypeModelAndTypeName("aoa_note_list", typename).getTypeId();
		String statusName = request.getParameter("status");
		long statusId = statusDao.findByStatusModelAndStatusName("aoa_note_list", statusName).getStatusId();

		// 这里返回ResultVO对象，如果校验通过，ResultEnum.SUCCESS.getCode()返回的值为200；否则就是没有通过；
		ResultVO res = BindingResultVOUtil.hasErrors(br);
		if (!ResultEnum.SUCCESS.getCode().equals(res.getCode())) {
			List<Object> list = new MapToList<>().mapToList(res.getData());
			request.setAttribute("errormess", list.get(0).toString());
		} else {
			// nid为-1就是新建或者是从某个目录新建
			if (nid == -1 || nid == -3) {
				// 判断文件是否为空
				if (!file.isEmpty()) {
					att = (Attachment) fs.savefile(file, user, null, false);
					attid = att.getAttachmentId();
				} else if (file.isEmpty())
					attid = null;

				// 0l表示新建的时候默认为没有收藏
				note = new Note(note2.getTitle(), note2.getContent(), catalogId, typeId, statusId, attid, new Date(),
						0l);
				// 判断是否共享
				if (request.getParameter("receiver") != null && (request.getParameter("receiver").trim().length() > 0)) {
					userss = new HashSet<>();
					String receivers = request.getParameter("receiver");
					note.setReceiver(receivers);

					String[] receiver = receivers.split(";");
					// 先绑定自己再
					userss.add(user);
					// 再绑定其他人
					for (String re : receiver) {
						System.out.println(re);
						User user2 = userDao.findid(re);
						if (user2 == null) {
						} else
							userss.add(user2);
					}

				} else {
					// 保存为该用户的笔记 绑定用户id
					userss = new HashSet<>();
					userss.add(user);
				}
			}
			// nid大于0就是修改某个对象
			if (nid > 0) {
				note = noteDao.findOne(nid);
				if (note.getAttachId() == null) {
					if (!file.isEmpty()) {
						att = (Attachment) fs.savefile(file, user, null, false);
						attid = att.getAttachmentId();
						note.setAttachId(attid);
						noteDao.save(note);
					}
				}
				if (note.getAttachId() != null)
					fs.updateatt(file, user, null, note.getAttachId());

			// 判断是否共享
			if (request.getParameter("receiver") != null && (request.getParameter("receiver").trim().length() > 0)) {
				userss = new HashSet<>();
				String receivers = request.getParameter("receiver");
				note.setReceiver(receivers);

				String[] receiver = receivers.split(";");
				// 先绑定自己再
				userss.add(user);
				// 再绑定其他人
				for (String re : receiver) {
					System.out.println(re);
					User user2 = userDao.findid(re);
					if (user2 == null) {
					} else
						userss.add(user2);
				}

			} else {
				// 保存为该用户的笔记 绑定用户id
				userss = new HashSet<>();
				userss.add(user);
			}
			NoteService.updatenote(catalogId, typeId, statusId, note2.getTitle(), note2.getContent(), nid);
			}
			request.setAttribute("success", "后台验证成功");
		}
		// 设置创建人
		note.setCreatemanId(userid);
		note.setUserss(userss);
		noteDao.save(note);
		request.setAttribute("note2", note2);
		return "forward:/noteedit";
	}

	
	// 笔记批量删除
	@RequestMapping("notesomedelete")
	public String dsafds(HttpServletRequest request, HttpSession session) {
		long realuserId = Long.valueOf(session.getAttribute("userId") + "");
		String sum = request.getParameter("sum");
		String[] strings = sum.split(";");
		for (String s : strings) {
			long noteids = Long.valueOf(s);
			notedelete(realuserId, noteids);
		}
		return "redirect:/noteview";
	}

	// 笔记删除
	@RequestMapping("notedelete")
	public String testrw(Model model, HttpServletRequest request, HttpSession session) {
		long realuserId = Long.valueOf(session.getAttribute("userId") + "");
		String nid = request.getParameter("nid");
		long noteid = Long.valueOf(nid);
		Noteuser u = noteDao.finduserid(noteid, realuserId);
		if (u != null) {
			notedelete(realuserId, noteid);
			return "redirect:/noteview";
		} else {
			System.out.println("权限不匹配，不能删除");
			return "redirect:/notlimit";

		}

	}



	

	// 目录删除
	@RequestMapping("catadelete")
	public String testrwd(Model model, HttpServletRequest request, HttpSession session) {
		long realuserId = Long.valueOf(session.getAttribute("userId") + "");
		String cid = request.getParameter("cid");
		long catalogid = Long.valueOf(cid);
//		Page<Note> upage= NoteService.paging(page, null, null, null, catalogid, null);
//		paging(model, upage);
		noteList=noteDao.findByCatalogId(catalogid, realuserId);
		// 没有做级联删除 先删除目录下的笔记 再删除目录
		for (Note note : noteList) {
			NoteService.delete(note.getNoteId());
		}
		catalogService.delete(catalogid);

		return "redirect:/noteview";
	}

	// 笔记主界面
	@RequestMapping(value = "noteview", method = RequestMethod.GET)
	public String test(Model model, HttpServletRequest request, HttpSession session,
			@RequestParam(value = "page", defaultValue = "0") int page,
			@RequestParam(value = "baseKey", required = false) String baseKey,
			@RequestParam(value = "type", required = false) String type,
			@RequestParam(value = "status", required = false) String status,
			@RequestParam(value = "time", required = false) String time,
			@RequestParam(value = "icon", required = false) String icon) {
		Long userid = Long.parseLong(session.getAttribute("userId") + "");
		cataloglist = (List<Catalog>) catalogDao.findcatauser(userid);
		setSomething(baseKey, type, status, time, icon, model,null,null);
		Page<Note> upage=NoteService.sortpage(page, baseKey, userid,null,null,null, type, status, time);
		model.addAttribute("sort", "&userid="+userid);
		paging(model, upage);
		typestatus(request);
		model.addAttribute("url", "notewrite");
		model.addAttribute("calist", cataloglist);
		return "note/noteview";
	}


// post请求 添加类型
	@RequestMapping(value = "noteview", method = RequestMethod.POST)
	public String test3332(HttpServletRequest request, @Param("title") String title, HttpSession session) {
		int flag = 0;
		Long userid = Long.parseLong(session.getAttribute("userId") + "");
		User user = userDao.findOne(userid);
		String catalogName = request.getParameter("name");
		if (catalogName != null) {
			List<String> catanamelist = catalogDao.findcataname(userid);
			for (String caname : catanamelist) {
				if (caname.contains("(") && caname.contains(")"))
					caname = caname.substring(0, caname.indexOf("("));
				if (caname.equals(catalogName)) {
					flag++;
				}
			}
			if (flag == 0)
				catalogDao.save(new Catalog(catalogName, user));
			if (flag > 0)
				catalogDao.save(new Catalog(catalogName + "(" + flag + ")", user));
		}
		return "redirect:/noteview";
	}

	// 显示具体信息
	@RequestMapping("noteinfo")
	public String test3(@Param("id") String id, HttpServletRequest Request, HttpServletResponse response,
			HttpSession session) throws IOException {
		Attachment attachment = null;
		FileInputStream fis = null;
		OutputStream os = null;
		Long nid = Long.valueOf(id);
		Note note = noteDao.findOne(nid);
		User user = userDao.findOne(note.getCreatemanId());
		if (note.getAttachId() != null) {
			att = attDao.findByAttachmentId(note.getAttachId());
			Request.setAttribute("att", att);
		}
		Request.setAttribute("note", note);
		Request.setAttribute("user", user);
		return "note/noteinfo";
	}

	// 下载文件
	@RequestMapping("down")
	public void dsaf(HttpServletResponse response, HttpServletRequest request) {
		if (StringUtils.isEmpty(request.getParameter("paid")) || request.getParameter("paid") == null
				|| request.getParameter("paid").length() == 0) {
		} else {
			Long paid = Long.valueOf(request.getParameter("paid"));
			att = attDao.findByAttachmentId(paid);
		}
		if (StringUtils.isEmpty(request.getParameter("nid")) || request.getParameter("nid") == null
				|| request.getParameter("nid").length() == 0) {
		} else {
			Long nid = Long.valueOf(request.getParameter("nid"));
			Note note = noteDao.findOne(nid);
			att = attDao.findByAttachmentId(note.getAttachId());
		}
		File file = fs.get(att);
		System.out.println(file.getAbsolutePath());
		try {
			// 在浏览器里面显示
			response.setContentLength(att.getAttachmentSize().intValue());
			response.setContentType(att.getAttachmentType());
			response.setHeader("Content-Disposition",
					"attachment;filename=" + new String(att.getAttachmentName().getBytes("UTF-8"), "ISO8859-1"));
			ServletOutputStream sos = response.getOutputStream();
			byte[] data = new byte[att.getAttachmentSize().intValue()];
			IOUtils.readFully(new FileInputStream(file), data);
			IOUtils.write(data, sos);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	// 显示表格所有
	@RequestMapping(value = "notewrite", method = RequestMethod.GET)
	public String test33(Model model, HttpServletRequest request,  HttpSession session,
			@RequestParam(value = "page", defaultValue = "0") int page,
			@RequestParam(value = "baseKey", required = false) String baseKey,
			@RequestParam(value = "type", required = false) String type,
			@RequestParam(value = "status", required = false) String status,
			@RequestParam(value = "time", required = false) String time,
			@RequestParam(value = "icon", required = false) String icon) {
		Long userid = Long.parseLong(session.getAttribute("userId") + "");
		
		setSomething(baseKey, type, status, time, icon, model,null,null);
			Page<Note> upage=NoteService.sortpage(page, baseKey, userid,null,null,null, type, status, time);
			typestatus(request);
			if(baseKey!=null){
				//如果有搜索关键字那么就记住它
				request.setAttribute("sort", "&baseKey="+baseKey);
			}
			//没有就默认查找所有
			else
			request.setAttribute("sort", "&userid="+userid);
			paging(model, upage);
			model.addAttribute("url", "notewrite");
		return "note/notewrite";
	}
	
	
	// 查找类型
		@RequestMapping("notetype")
		public String test43(Model model, HttpServletRequest request, @RequestParam("typeid") Long tid, @RequestParam("id") Long cid, HttpSession session,@RequestParam(value="page",defaultValue="0")int page
				,@RequestParam(value = "baseKey", required = false) String baseKey,@RequestParam(value = "type", required = false) String type,
				@RequestParam(value = "status", required = false) String status,
				@RequestParam(value = "time", required = false) String time,
				@RequestParam(value = "icon", required = false) String icon
				) {
			Long userid = Long.valueOf(session.getAttribute("userId") + "");
			System.out.println(tid);
			if(cid==-2)
				cid=null;
			System.out.println("目录"+cid);
			setSomething(baseKey, type, status, time, icon, model,cid,tid);
			Page<Note> upage=NoteService.sortpage(page, baseKey, userid, null, cid, tid, type, status, time);
			System.out.println(upage.getContent());
			//获得数据之后就将cid重新设置
			if(cid==null)
				cid=-2l;
			request.setAttribute("sort2", "&id="+cid+"&typeid="+tid);
			paging(model, upage);
			model.addAttribute("url", "notetype");
			typestatus(request);
			return "note/notewrite";
		}

	//查找目录
	@RequestMapping("notecata")
	public String sadf(Model model, HttpServletRequest request,  HttpSession session,
			@RequestParam("id")String cid, 
			@RequestParam(value = "page", defaultValue = "0") int page,
			@RequestParam(value = "baseKey", required = false) String baseKey
			,@RequestParam(value = "type", required = false) String type,
			@RequestParam(value = "status", required = false) String status,
			@RequestParam(value = "time", required = false) String time,
			@RequestParam(value = "icon", required = false) String icon
			){
		Long userid = Long.parseLong(session.getAttribute("userId") + "");
		model.addAttribute("catalog", "&id="+cid);
		//不为-2就是按照目录查找
		if (!request.getParameter("id").equals("-2")) {
			Long id = Long.valueOf(cid);
			setSomething(baseKey, type, status, time, icon, model,id,null);
			Page<Note> upage=NoteService.sortpage(page, baseKey, userid, null, id, null, type, status, time);
			request.setAttribute("sort2", "&id="+cid);
			paging(model, upage);
			model.addAttribute("url", "notecata");
			////为-2就是按照最近查找
		}
		typestatus(request);
		return "note/notewrite";
	}
	
	// 编辑
	@RequestMapping(value = "noteedit")
	public String test4(HttpServletRequest Request, HttpSession session,Model model,
			@RequestParam(value = "page", defaultValue = "0") int page,
			@RequestParam(value = "size", defaultValue = "10") int size) {
		//验证的重载
		if (!StringUtils.isEmpty(Request.getAttribute("errormess"))) {
			Request.setAttribute("errormess", Request.getAttribute("errormess"));
			Request.setAttribute("note", Request.getAttribute("note2"));
		} else if (!StringUtils.isEmpty(Request.getAttribute("success"))) {
			Request.setAttribute("success", Request.getAttribute("success"));
			Request.setAttribute("note", Request.getAttribute("note2"));
		}
		// 目录
		long userid = Long.valueOf(session.getAttribute("userId") + "");
		
		cataloglist = (List<Catalog>) catalogDao.findcatauser(userid);
		//将根目录放在第一
		if(cataloglist.size()==0)
			cataloglist.add(catalogDao.findOne(33l));
		else
		cataloglist.set(0, catalogDao.findOne(33l));
		
		System.out.println("目录"+cataloglist);
		// 用户 就是联系人
		List<User> users = (List<User>) userDao.findAll();
		String nId = Request.getParameter("id");
		if (nId.contains("cata")) {
			//从目录编辑那里进来的
			String newnid = nId.substring(4, nId.length());
			long ca = Long.valueOf(newnid);
			Catalog cate = catalogDao.findOne(ca);
			Request.setAttribute("cata", cate);
			Request.setAttribute("note", null);
			Request.setAttribute("id", -3);
		} else {
			Long nid = Long.valueOf(nId);
			// 新建
			if (nid == -1) {
				Request.setAttribute("note", null);
				// 新建id
				Request.setAttribute("id", nid);
			}

			// 修改
			else if (nid > 0) {
				Note note = noteDao.findOne(nid);
				long ca = Long.valueOf(note.getCatalogId());
				Catalog cate = catalogDao.findOne(ca);
				Request.setAttribute("cata", cate);
				Request.setAttribute("note", note);
				// 修改id
				Request.setAttribute("id", nid);
			}
			// Request.setAttribute("id", nid);
		}
		userget(page, size, model);
		
		Request.setAttribute("users", users);
		Request.setAttribute("calist", cataloglist);
		typestatus(Request);
		return "note/noteedit";
	}
	
	public void userget(int page,int size,Model model){
		Pageable pa=new PageRequest(page, size);
		//查看用户并分页
		Page<User> pageuser=userDao.findAll(pa);
		List<User> userlist=pageuser.getContent();
		// 查询部门表
		Iterable<Dept> deptlist = ddao.findAll();
		// 查职位表
		Iterable<Position> poslist = pdao.findAll();
		model.addAttribute("page", pageuser);
		model.addAttribute("emplist", userlist);
		model.addAttribute("deptlist", deptlist);
		model.addAttribute("poslist", poslist);
		model.addAttribute("url", "namereceive");
	}
	
	@RequestMapping("namereceive")
	public String serch(Model model,HttpServletRequest req, @SessionAttribute("userId") Long userId,
			@RequestParam(value = "page", defaultValue = "0") int page,
			@RequestParam(value = "size", defaultValue = "10") int size){
		Pageable pa=new PageRequest(page, size);
		String name=null;
		String qufen=null;
		Page<User> pageuser=null;
		List<User> userlist=null;
		
		if(!StringUtil.isEmpty(req.getParameter("title"))){
			name=req.getParameter("title").trim();
		}
		if(!StringUtil.isEmpty(req.getParameter("qufen"))){
			qufen=req.getParameter("qufen").trim();
			
			System.out.println("111");
			if(StringUtil.isEmpty(name)){
				// 查询部门下面的员工
				pageuser = userDao.findByFatherId(userId,pa);
			}else{
				// 查询名字模糊查询员工
				pageuser = userDao.findbyFatherId(name,userId,pa);
			}
			
		}else{
			System.out.println("222");
			if(StringUtil.isEmpty(name)){
				//查看用户并分页
				pageuser=userDao.findAll(pa);
			}else{
				pageuser=userDao.findbyUserNameLike(name, pa);
			}
		}
		userlist=pageuser.getContent();
		// 查询部门表
		Iterable<Dept> deptlist = ddao.findAll();
		// 查职位表
		Iterable<Position> poslist = pdao.findAll();
		model.addAttribute("emplist", userlist);
		model.addAttribute("page", pageuser);
		model.addAttribute("deptlist", deptlist);
		model.addAttribute("poslist", poslist);
		model.addAttribute("url", "namereceive");
		
		return "common/noterecivers";
		
	}
	private void notedelete(long realuserId, long noteid) {
		//删除共享笔记就是只删除中间表noteid对应的那个userid
		Note note =noteDao.findOne(noteid);
		if(note.getTypeId()==7)
		{
			noteUserDao.delete(noteUserDao.findid(noteid, realuserId));
		}
		//如果笔记的类型不是共享类型的就直接删除
		else
		NoteService.delete(noteid);
	}
	private void typestatus(HttpServletRequest request) {
		type = (List<SystemTypeList>) typeDao.findByTypeModel("aoa_note_list");
		 status = (List<SystemStatusList>) statusDao.findByStatusModel("aoa_note_list");
		request.setAttribute("typelist", type);
		request.setAttribute("statuslist", status);
	}
	//分页
	private void paging(Model model, Page<Note> upage) {
		model.addAttribute("nlist", upage.getContent());
		model.addAttribute("page", upage);
//		model.addAttribute("url", "notewrite");
	}
   
	public void setSomething(String baseKey, String type, String status, String time, String icon, Model model,Long cataid,Long typeid) {
		if(!StringUtils.isEmpty(icon)){
			model.addAttribute("icon", icon);
			if(!StringUtils.isEmpty(type)){
				model.addAttribute("type", type);
				setthree("type",type, icon, model, cataid, typeid);
			}
			if(!StringUtils.isEmpty(status)){
				model.addAttribute("status", status);
				setthree("status",status, icon, model, cataid, typeid);
			}
			if(!StringUtils.isEmpty(time)){
				model.addAttribute("time", time);
				setthree("time",time, icon, model, cataid, typeid);
			}
			
		}
		if(StringUtils.isEmpty(icon)){
		//目录类型查找
		if(!StringUtils.isEmpty(cataid)&&!StringUtils.isEmpty(typeid))
			model.addAttribute("sort", "&id="+cataid+"&typeid="+typeid);
		//目录单纯查找
		if(!StringUtils.isEmpty(cataid)&&StringUtils.isEmpty(typeid))
			model.addAttribute("sort", "&id="+cataid);
		//单纯类型查找
		if(StringUtils.isEmpty(cataid)&&!StringUtils.isEmpty(typeid))
			model.addAttribute("sort", "&typeid="+typeid);
		}
		
		if(!StringUtils.isEmpty(baseKey)&&StringUtils.isEmpty(cataid)){
			model.addAttribute("sort", "&baseKey="+baseKey);
		}
		if(!StringUtils.isEmpty(baseKey)&&!StringUtils.isEmpty(cataid)){
			model.addAttribute("sort", "&baseKey="+baseKey+"&id="+cataid);
		}
		
	}



	private void setthree(String x,String name, String icon, Model model, Long cataid, Long typeid) {
		//单纯根据目录
		if(!StringUtils.isEmpty(cataid)&&StringUtils.isEmpty(typeid))
		model.addAttribute("sort", "&"+x+"="+name+"&icon="+icon+"&id="+cataid);
		//单纯的根据类型
		if(StringUtils.isEmpty(cataid)&&!StringUtils.isEmpty(typeid))
			model.addAttribute("sort", "&"+x+"="+name+"&icon="+icon+"&typeid="+typeid);
		//根据目录和类型
		if(!StringUtils.isEmpty(cataid)&&!StringUtils.isEmpty(typeid))
			model.addAttribute("sort", "&"+x+"="+name+"&icon="+icon+"&id="+cataid+"&typeid="+typeid);
		else if(StringUtils.isEmpty(cataid)&&StringUtils.isEmpty(typeid))
		model.addAttribute("sort", "&"+x+"="+name+"&icon="+icon);
	}
}
