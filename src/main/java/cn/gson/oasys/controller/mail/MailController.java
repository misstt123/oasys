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
		
		return "mail/mail";
	}
	/**
	 * 账号管理
	 */
	@RequestMapping("accountmanage")
	public String account(){
		return "mail/mailmanage";
	}
	/**
	 * 新增账号
	 */
	@RequestMapping("addaccount")
	public String add(){
		return "mail/editaccount";
	}
	
	/**
	 * 写信
	 */
	@RequestMapping("wmail")
	public  String index2() {
		
		return "mail/wirtemail";
	}
	
	/**
	 * 最近邮件
	 */
	@RequestMapping("amail")
	public  String index3() {
		
		return "mail/allmail";
	}
	
	/**
	 * 查看邮件
	 */
	@RequestMapping("smail")
	public  String index4() {
		
		return "mail/seemail";
	}
	
}
