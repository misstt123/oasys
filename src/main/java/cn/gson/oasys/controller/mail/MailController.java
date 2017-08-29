package cn.gson.oasys.controller.mail;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/mail")
public class MailController {
	
	/**
	 * 邮件管理主页
	 * @return
	 */
	@RequestMapping
	public  String index() {
		
		return "mail/mailindex";
	}
	
	
	/**
	 * 写信
	 * @return
	 */
	@RequestMapping("/writemail")
	public String index2(){
		return "";
	}

}
