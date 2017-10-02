package cn.gson.oasys.controller.chat;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import cn.gson.oasys.model.dao.discuss.CommentDao;
import cn.gson.oasys.model.dao.discuss.DiscussDao;
import cn.gson.oasys.model.dao.discuss.ReplyDao;
import cn.gson.oasys.model.dao.user.UserDao;
import cn.gson.oasys.model.entity.discuss.Comment;
import cn.gson.oasys.model.entity.discuss.Discuss;
import cn.gson.oasys.model.entity.discuss.Reply;
import cn.gson.oasys.model.entity.user.User;
import cn.gson.oasys.services.discuss.CommentService;
import cn.gson.oasys.services.discuss.ReplyService;

@Controller
@RequestMapping("/")
public class ReplyController {
	@Autowired
	private ReplyDao replyDao;
	@Autowired
	private ReplyService replyService;
	@Autowired
	private UserDao uDao;
	@Autowired
	private DiscussDao discussDao;
	@Autowired
	private CommentDao commentDao;
	@Autowired
	private CommentService commentservice;
	/**
	 * 回复处理
	 * @param req
	 * @return
	 */
	@RequestMapping("replyhandle")
	public String reply(HttpServletRequest req,@SessionAttribute("userId") Long userId,Model model){
		Long num=null;
		Long discussId=Long.parseLong(req.getParameter("replyId"));
		String module=req.getParameter("module");	//用来判断是保存在哪个表
		String comment=req.getParameter("comment");
		User user=uDao.findOne(userId);
		System.out.println(discussId);
		System.out.println(module);
		System.out.println(comment);
		if("discuss".equals(module)){
			//说明是回复-楼主
			System.out.println("回复-楼主");
			Discuss discuss=discussDao.findOne(discussId);
			Reply reply=new Reply(new Date(), comment, user, discuss);
			num=discuss.getDiscussId();
			replyService.save(reply);
		}else{ //说明是回复-评论
			System.out.println("回复-评论");
			Reply reply=replyDao.findOne(discussId);
			Comment comment2=new Comment(new Date(), comment, user, reply);
			commentservice.save(comment2);
			num=reply.getDiscuss().getDiscussId();
		}
		
		return "chat/replytable";
	}

}
