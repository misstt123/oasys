package cn.gson.oasys.controller.note;

import java.awt.Dialog.ModalExclusionType;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
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
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import cn.gson.oasys.common.formValid.BindingResultVOUtil;
import cn.gson.oasys.common.formValid.MapToList;
import cn.gson.oasys.common.formValid.ResultEnum;
import cn.gson.oasys.common.formValid.ResultVO;
import cn.gson.oasys.model.dao.notedao.AttachmentDao;
import cn.gson.oasys.model.dao.notedao.CatalogDao;
import cn.gson.oasys.model.dao.notedao.CatalogService;
import cn.gson.oasys.model.dao.notedao.NoteDao;
import cn.gson.oasys.model.dao.notedao.NoteService;
import cn.gson.oasys.model.dao.system.StatusDao;
import cn.gson.oasys.model.dao.system.TypeDao;
import cn.gson.oasys.model.dao.user.UserDao;
import cn.gson.oasys.model.entity.note.Attachment;
import cn.gson.oasys.model.entity.note.Catalog;
import cn.gson.oasys.model.entity.note.Note;
import cn.gson.oasys.model.entity.note.Noteuser;
import cn.gson.oasys.model.entity.system.SystemStatusList;
import cn.gson.oasys.model.entity.system.SystemTypeList;
import cn.gson.oasys.model.entity.user.User;
import cn.gson.oasys.services.file.FileServices;

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

	Attachment att;
	List<Note> noteList;
	List<Catalog> cataloglist;

	// 收藏查询
	@RequestMapping("collectfind")
	public String dsafdsf(Model model, HttpServletRequest request, @RequestParam("iscollect") String iscollected,
			HttpSession session,@RequestParam(value="page",defaultValue="0")int page,@RequestParam(value="baseKey",required=false)String baseKey) {
		Long userid = Long.valueOf(session.getAttribute("userId") + "");
		long collect = Long.valueOf(iscollected);
		if (collect == 1) {
			Page<Note> upage= NoteService.collectpaging(page, collect, userid);
			paging(model, upage);
			model.addAttribute("collect", 0);
		} else if (collect == 0) {
			Page<Note> upage=NoteService.userpaging(page, null, userid);
			paging(model, upage);
			model.addAttribute("collect", 1);
		}
		typestatus(request);
		
		return "note/notewrite";
	}

	

	// 收藏
	@RequestMapping("collect")
	public String dsaf(HttpServletRequest request) {
		String id = request.getParameter("id");
		String iscollected = request.getParameter("iscollected");
		NoteService.updatecollect(Long.valueOf(iscollected), Long.valueOf(id));
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

				NoteService.updatenote(catalogId, typeId, statusId, note2.getTitle(), note2.getContent(), nid);

			}
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
			request.setAttribute("success", "后台验证成功");
		}
		// 设置创建人
		note.setCreatemanId(userid);
		note.setUserss(userss);
		noteDao.save(note);
		request.setAttribute("note2", note2);
		return "forward:/noteedit";
	}

	// 查找类型
	@RequestMapping("notetype")
	public String test43(Model model, HttpServletRequest request, @Param("typeid") String id, HttpSession session,@RequestParam(value="page",defaultValue="0")int page) {
		Long userid = Long.valueOf(session.getAttribute("userId") + "");
		long typeid = Long.valueOf(id);
		Page<Note> upage=NoteService.typepaging(page, typeid, userid);
		paging(model, upage);
		System.out.println(noteList);
		typestatus(request);
		model.addAttribute("nlist", noteList);
		return "note/notewrite";
	}

	// 笔记批量删除
	@RequestMapping("notesomedelete")
	public String dsafds(HttpServletRequest request) {
		String sum = request.getParameter("sum");
		String[] strings = sum.split(";");
		for (String s : strings) {
			long noteids = Long.valueOf(s);
			NoteService.delete(noteids);
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
			NoteService.delete(noteid);
			return "redirect:/noteview";
		} else {
			System.out.println("权限不匹配，不能删除");
			return "redirect:/notlimit";

		}

	}

	// 目录删除
	@RequestMapping("catadelete")
	public String testrwd(Model model, HttpServletRequest request, HttpSession session,@RequestParam(value="page",defaultValue="0")int page) {
		long realuserId = Long.valueOf(session.getAttribute("userId") + "");
		String cid = request.getParameter("cid");
		long catalogid = Long.valueOf(cid);
		Page<Note> upage= NoteService.catapaging(page, catalogid, realuserId);
		paging(model, upage);
		// 没有做级联删除 先删除目录下的笔记 再删除目录
		for (Note note : noteList) {
			NoteService.delete(note.getNoteId());
		}
		catalogService.delete(catalogid);

		return "redirect:/noteview";
	}

	// 笔记主界面
	@RequestMapping(value = "noteview", method = RequestMethod.GET)
	public String test(Model model, HttpServletRequest request, HttpSession session,@RequestParam(value="page",defaultValue="0")int page) {
		Long userid = Long.parseLong(session.getAttribute("userId") + "");
		cataloglist = (List<Catalog>) catalogDao.findcatauser(userid);
		typestatus(request);
		Page<Note> upage=NoteService.userpaging(page, null, userid);
		paging(model, upage);
		System.out.println(cataloglist);
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
		}

		// 读取文件流并且关闭
		// File file=new File("F:/OAFILE"+att.getAttachmentPath());
		// fis =new FileInputStream(file);
		// byte[] data = new byte[att.getAttachmentSize().intValue()];
		// fis.read(data);
		// fis.close();
		// os.close();
		// 读取文件流
		// ServletOutputStream sos = response.getOutputStream();
		// byte[] data = new byte[att.getAttachmentSize().intValue()];
		// IOUtils.readFully(new
		// FileInputStream("F:/OAFILE"+att.getAttachmentPath()), data);
		// IOUtils.write(data, sos);
		// sos.flush();
		// IOUtils.closeQuietly(sos);

		Request.setAttribute("note", note);
		Request.setAttribute("user", user);
		Request.setAttribute("att", att);
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

	// 显示所有
	@RequestMapping(value = "notewrite", method = RequestMethod.GET)
	public String test33(Model model, HttpServletRequest request, HttpSession session, @RequestParam(value = "page", defaultValue = "0") int page,
			@RequestParam(value = "baseKey", required = false) String baseKey) {
		
		Long userid = Long.parseLong(session.getAttribute("userId") + "");
		typestatus(request);
		if(request.getParameter("id")==null||request.getParameter("id").length()==0){
			Page<Note> upage=NoteService.userpaging(page, baseKey, userid);
			paging(model, upage);
		}
		else{
		//不为-2就是按照目录查找
		if (!request.getParameter("id").equals("-2")) {
			String cid = request.getParameter("id");
			Long id = Long.valueOf(cid);
			Page<Note> upage=NoteService.catapaging(page, id, userid);
			paging(model, upage);
			////为-2就是按照最近查找
		} else if (request.getParameter("id").equals("-2")) {
			Page<Note> upage=NoteService.userpaging(page, baseKey, userid);
			paging(model, upage);
		}
		typestatus(request);
		}
		
		return "note/notewrite";
	}

	// 模糊查询或者是根据目录查找
	@RequestMapping(value = "notewrite", method = RequestMethod.POST)
	public String test333(Model model, HttpServletRequest request, HttpSession session) {
		Long userid = Long.valueOf(session.getAttribute("userId") + "");
		// 模糊查找
		String title = request.getParameter("title");
		noteList = noteDao.findBytitle(title, userid);
		System.out.println(noteList);
		typestatus(request);
		model.addAttribute("nlist", noteList);
		return "note/notewrite";
	}

	// 编辑
	@RequestMapping(value = "noteedit")
	public String test4(HttpServletRequest Request, HttpSession session) {
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
		Request.setAttribute("calist", cataloglist);
		// 用户 就是联系人
		List<User> users = (List<User>) userDao.findAll();

		String nId = Request.getParameter("id");
		System.out.println("牛人id" + nId);
		if (nId.contains("cata")) {
			String newnid = nId.substring(4, nId.length());
			long ca = Long.valueOf(newnid);
			Catalog cate = catalogDao.findOne(ca);
			Request.setAttribute("cata", cate);
			Request.setAttribute("nid", -3);
		} else {
			Long nid = Long.valueOf(nId);
			// 新建
			if (nid == -1) {
				Request.setAttribute("note", null);
				Request.setAttribute("users", users);
				// 新建id
				Request.setAttribute("id", nid);
				System.out.println("保存一个对象");
			}

			// 修改
			else if (nid > 0) {
				Note note = noteDao.findOne(nid);
				long ca = Long.valueOf(note.getCatalogId());
				Catalog cate = catalogDao.findOne(ca);
				Request.setAttribute("cata", cate);
				Request.setAttribute("note", note);
				Request.setAttribute("users", users);
				// 修改id
				Request.setAttribute("id", nid);
				System.out.println(note);
			}
			// Request.setAttribute("id", nid);
		}

		typestatus(Request);

		return "note/noteedit";
	}
	
	private void typestatus(HttpServletRequest request) {
		List<SystemTypeList> type = (List<SystemTypeList>) typeDao.findByTypeModel("aoa_note_list");
		List<SystemStatusList> status = (List<SystemStatusList>) statusDao.findByStatusModel("aoa_note_list");
		request.setAttribute("type", type);
		request.setAttribute("status", status);
	}
	//分页
	private void paging(Model model, Page<Note> upage) {
		model.addAttribute("nlist", upage.getContent());
		model.addAttribute("page", upage);
		model.addAttribute("url", "notewrite");
	}

}
