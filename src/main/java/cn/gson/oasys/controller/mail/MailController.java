package cn.gson.oasys.controller.mail;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class MailController {
	
	/**
	 * 邮件管理主页
	 * @return
	 */
	@RequestMapping("mail")
	public  String index() {
		
		return "mail/mailindex";
	}
	
	@RequestMapping("/addaccount")
	public String index2(){
		return "mail/addcounindex";
	}
}
