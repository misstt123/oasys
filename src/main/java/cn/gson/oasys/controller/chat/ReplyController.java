package cn.gson.oasys.controller.chat;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
import cn.gson.oasys.services.discuss.DiscussService;
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
	private DiscussService disService;
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
	public String reply(HttpServletRequest req,
			@RequestParam(value="page",defaultValue="0") int page,
			@RequestParam(value="size",defaultValue="5") int size,
			@SessionAttribute("userId") Long userId,Model model){
		System.out.println("fdsf");
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
		disService.setDiscussMess(model, num,userId,page,size);
//		return "chat/replaymanage";
//		disService.setDiscussMess(model, num,userId,page,size);
		return "chat/replytable";
	}
	
	//点赞处理
	@RequestMapping("likethis")
	public void likeThis(HttpServletRequest req,HttpServletResponse resp,@SessionAttribute("userId") Long userId){
		resp.setCharacterEncoding("utf-8");
		PrintWriter out = null;
		Long replyId=Long.parseLong(req.getParameter("replyId"));
		User user=uDao.findOne(userId);
		Reply reply=replyDao.findOne(replyId);
		Set<User> users=reply.getUsers();
		int likenum=reply.getUsers().size();
		int number;
		if(!reply.getUsers().contains(user)){
			System.out.println("保存一个点赞记录");
			users.add(user);
			number=1;
		}else{
			System.out.println("删除掉一个点赞记录");
			users.remove(user);
			number =-1;
		}
		reply.setUsers(users);
		replyService.save(reply);
		try {
			out = resp.getWriter();
			if(number==1){
				out.println("已赞("+(likenum+1)+")");
			}else{
				out.println("赞("+(likenum-1)+")");
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		out.flush();
		out.close();
	}
	
	@RequestMapping("/replypaging")
	public String  replyPaging(HttpServletRequest req,
			@RequestParam(value="page",defaultValue="0") int page,
			@RequestParam(value="size",defaultValue="5") int size,
			@SessionAttribute("userId") Long userId,Model model){
		Long num=Long.parseLong(req.getParameter("num"));
		disService.setDiscussMess(model, num,userId,page,size);
		System.out.println(size);
		System.out.println(page);
		return "chat/replytable";
	}
	

}
