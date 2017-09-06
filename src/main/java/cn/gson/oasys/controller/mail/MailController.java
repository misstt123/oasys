package cn.gson.oasys.controller.mail;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/")
public class MailController {
	
	/**
	 * 邮件管理主页
	 * @return
	 */
	@RequestMapping("mail")
	public  String index() {
		
		return "mail/mail";
	}
	/**
	 * 邮件管理
	 * @return
	 */
	@RequestMapping("accountmanage")
	public String accountManage(){
		return "mail/mailmanage";
	}
	
	/**
	 * 新增账号
	 * @return
	 */
	@RequestMapping("addaccount")
	public String index2(){
		return "mail/editaccountindex";
	}
	
	/**
	 * 修改账号
	 * 要传参数过来
	 */
	@RequestMapping("/editaccount")
	public String editAccount(){
		
		return "mail/editaccountindex";
	}
}
