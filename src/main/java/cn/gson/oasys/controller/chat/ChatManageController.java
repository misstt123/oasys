package cn.gson.oasys.controller.chat;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class ChatManageController {

	@RequestMapping("chatmanage")
	public String chatManage(){
		return "chat/chatmanage";
	}
	
	@RequestMapping("replymanage")
	public String replyManage(){
		return "chat/replaymanage";
	}
	
	@RequestMapping("writechat")
	public String writeChat(HttpServletRequest req){
		req.getParameterValues("fd");
		return "chat/writechat";
	}

}
