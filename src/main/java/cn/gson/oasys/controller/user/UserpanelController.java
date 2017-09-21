package cn.gson.oasys.controller.user;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.gson.oasys.model.dao.informdao.InformRelationDao;
import cn.gson.oasys.model.dao.maildao.InMailDao;
import cn.gson.oasys.model.dao.maildao.MailreciverDao;
import cn.gson.oasys.model.dao.user.DeptDao;
import cn.gson.oasys.model.dao.user.PositionDao;
import cn.gson.oasys.model.dao.user.UserDao;
import cn.gson.oasys.model.entity.mail.Mailreciver;
import cn.gson.oasys.model.entity.notice.NoticeUserRelation;
import cn.gson.oasys.model.entity.user.User;

@Controller
@RequestMapping("/")
public class UserpanelController {
	@Autowired
	private UserDao udao;
	@Autowired
	private InMailDao imdao;
	@Autowired
	private DeptDao ddao;
	@Autowired
	private PositionDao pdao;
	@Autowired
	private InformRelationDao irdao;
	@Autowired
	private MailreciverDao mdao;
	
	@RequestMapping("userpanel")
	public String index(HttpSession session){
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
		
		return "user/userpanel";
	}
}
