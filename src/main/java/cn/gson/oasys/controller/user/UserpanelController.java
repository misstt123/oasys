package cn.gson.oasys.controller.user;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.github.pagehelper.util.StringUtil;

import cn.gson.oasys.model.dao.informdao.InformRelationDao;
import cn.gson.oasys.model.dao.maildao.InMailDao;
import cn.gson.oasys.model.dao.maildao.MailreciverDao;
import cn.gson.oasys.model.dao.processdao.NotepaperDao;
import cn.gson.oasys.model.dao.user.DeptDao;
import cn.gson.oasys.model.dao.user.PositionDao;
import cn.gson.oasys.model.dao.user.UserDao;
import cn.gson.oasys.model.entity.mail.Mailreciver;
import cn.gson.oasys.model.entity.notice.NoticeUserRelation;
import cn.gson.oasys.model.entity.process.Notepaper;
import cn.gson.oasys.model.entity.user.User;
import cn.gson.oasys.services.user.NotepaperService;

@Controller
@RequestMapping("/")
public class UserpanelController {
	@Autowired
	private UserDao udao;
	
	@Autowired
	private DeptDao ddao;
	@Autowired
	private PositionDao pdao;
	@Autowired
	private InformRelationDao irdao;
	@Autowired
	private MailreciverDao mdao;
	@Autowired
	private NotepaperDao ndao;
	@Autowired
	private NotepaperService nservice;
	
	@RequestMapping("userpanel")
	public String index(HttpSession session,Model model){
		String userId = ((String) session.getAttribute("userId")).trim();
		Long userid = Long.parseLong(userId);
		
		//找到这个用户
		User user=udao.findOne(userid);
		
		//找到部门名称
		String deptname=ddao.findname(user.getDept().getDeptId());
		
		//找到职位名称
		String positionname=pdao.findById(user.getPosition().getId());
		
		//找未读通知消息
		List<NoticeUserRelation> noticelist=irdao.findByReadAndUserId(false, user);
		
		//找未读邮件
		List<Mailreciver> maillist=mdao.findByReadAndReciverId(false, user);
		
		//找便签
		List<Notepaper> notepaperlist=ndao.findByUserIdOrderByCreateTimeDesc(user);
		
		
		model.addAttribute("user", user);
		model.addAttribute("deptname", deptname);
		model.addAttribute("positionname", positionname);
		model.addAttribute("noticelist", noticelist.size());
		model.addAttribute("maillist", maillist.size());
		model.addAttribute("notepaperlist", notepaperlist);
		
	
		return "user/userpanel";
	}
	/**
	 * 存便签
	 */
	@RequestMapping("writep")
	public String savepaper(Notepaper npaper,HttpSession session){
		String userId = ((String) session.getAttribute("userId")).trim();
		Long userid = Long.parseLong(userId);
		User user=udao.findOne(userid);
		npaper.setCreateTime(new Date());
		npaper.setUserId(user);
		
		ndao.save(npaper);
		
		return "redirect:/userpanel";
	}
	/**
	 * 删除便签
	 */
	@RequestMapping("notepaper")
	public String deletepaper(HttpServletRequest request){
		String paperid=request.getParameter("id");
		Long lpid = Long.parseLong(paperid);
		nservice.delete(lpid);
		return "redirect:/userpanel";
		
	}
}
