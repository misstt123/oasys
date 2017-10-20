package cn.gson.oasys.controller.login;

import java.io.IOException;
import java.util.Objects;
import java.util.Random;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import ch.qos.logback.core.net.SyslogOutputStream;
import cn.gson.oasys.model.dao.user.UserDao;
import cn.gson.oasys.model.entity.user.User;



@Controller
@RequestMapping("/")
public class LoginsController {
	
	@Autowired
	private UserDao uDao;
	
	public static final String CAPTCHA_KEY = "session_captcha";

	private Random rnd = new Random();
	
	/**
	 * 登录界面的显示
	 * @return
	 */
	@RequestMapping(value="logins",method=RequestMethod.GET)
	public String login(){
		return "login/login";
	}
	
	@RequestMapping("loginout")
	public String loginout(HttpSession session){
		session.removeAttribute("userId");
		return "redirect:/logins";
	}
	
	/**
	 * 登录检查；
	 * 1、根据(用户名或电话号码)+密码进行查找
	 * 2、判断使用是否被冻结；
	 * @return
	 */
	@RequestMapping(value="logins",method = RequestMethod.POST)
	public String loginCheck(HttpSession session,HttpServletRequest req,Model model){
		String userName=req.getParameter("userName").trim();
		String password=req.getParameter("password");
		String ca=req.getParameter("code");
		String sesionCode = (String) req.getSession().getAttribute(CAPTCHA_KEY);
		System.out.println(userName);
		System.out.println(password);
		System.out.println(ca);
		System.out.println(sesionCode);
		model.addAttribute("userName", userName);
		if(!ca.equals(sesionCode)){
			System.out.println("验证码输入错误!");
			model.addAttribute("errormess", "验证码输入错误!");
			req.setAttribute("errormess","验证码输入错误!");
			return "login/login";
		}
		/*
		 * 将用户名分开查找；用户名或者电话号码；
		 * */
		System.out.println("执行到这里了么？");
		User user=uDao.findOneUser(userName, password);
		if(Objects.isNull(user)){
			System.out.println(user);
			System.out.println("账号或密码错误!");
			model.addAttribute("errormess", "账号或密码错误!");
			return "login/login";
		}
		System.out.println("是否被锁："+user.getIsLock());
		if(user.getIsLock()==1){
			System.out.println("账号已被冻结!");
			model.addAttribute("errormess", "账号已被冻结!");
			return "login/login";
		}
		System.out.println(user);
		session.setAttribute("userId", user.getUserId());
		return "redirect:/index";
	}
	
	
	@RequestMapping("captcha")
	public void captcha(HttpServletRequest request, HttpServletResponse response,HttpSession session) throws IOException{
		response.setHeader("Pragma", "No-cache");
		response.setHeader("Cache-Control", "no-cache");
		response.setDateHeader("Expires", 0);
		response.setContentType("image/jpeg");

		// 生成随机字串
		String verifyCode = VerifyCodeUtils.generateVerifyCode(4);
		
		// 生成图片
		int w = 135, h = 40;
		VerifyCodeUtils.outputImage(w, h, response.getOutputStream(), verifyCode);

		// 将验证码存储在session以便登录时校验
		session.setAttribute(CAPTCHA_KEY, verifyCode.toLowerCase());
	}
	

}
