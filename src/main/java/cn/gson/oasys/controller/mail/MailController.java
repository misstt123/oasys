package cn.gson.oasys.controller.mail;


import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Objects;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.util.StringUtil;

import cn.gson.oasys.common.formValid.BindingResultVOUtil;
import cn.gson.oasys.common.formValid.MapToList;
import cn.gson.oasys.common.formValid.ResultEnum;
import cn.gson.oasys.common.formValid.ResultVO;
import cn.gson.oasys.model.dao.maildao.MailnumberDao;
import cn.gson.oasys.model.dao.system.StatusDao;
import cn.gson.oasys.model.dao.system.TypeDao;
import cn.gson.oasys.model.dao.user.UserDao;
import cn.gson.oasys.model.entity.mail.Mailnumber;
import cn.gson.oasys.model.entity.system.SystemStatusList;
import cn.gson.oasys.model.entity.system.SystemTypeList;
import cn.gson.oasys.model.entity.user.User;
import cn.gson.oasys.services.mail.MailServices;

@Controller
@RequestMapping("/")
public class MailController {
	
	@Autowired
	private UserDao udao;
	
	@Autowired
	private MailnumberDao mndao;
	
	@Autowired
	private StatusDao sdao;
	@Autowired
	private TypeDao tydao;
	@Autowired
	private MailServices mservice;
	
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
	public String account(HttpSession session, Model model,
			@RequestParam(value = "page", defaultValue = "0") int page,
			@RequestParam(value = "size", defaultValue = "10") int size){
		
		String userId = ((String) session.getAttribute("userId")).trim();
		Long userid = Long.parseLong(userId);
		
		// 通过邮箱建立用户id找用户对象
		User tu = udao.findOne(userid);
		
		Page<Mailnumber> pagelist=mservice.index(page, size, tu, null);
		List<Map<String, Object>> list=mservice.up(pagelist);
		
		model.addAttribute("account", list);
		model.addAttribute("page", pagelist);
		return "mail/mailmanage";
	}
	/**
	 * 各种排序
	 * 和查询
	 */
	@RequestMapping("mailpaixu")
	public String paixu(HttpServletRequest request, HttpSession session, Model model,
			@RequestParam(value = "page", defaultValue = "0") int page,
			@RequestParam(value = "size", defaultValue = "10") int size){
		
		String userId = ((String) session.getAttribute("userId")).trim();
		Long userid = Long.parseLong(userId);
		// 通过发布人id找用户
		User tu = udao.findOne(userid);
		//得到传过来的值
		String val =null;
		if(!StringUtil.isEmpty(request.getParameter("val"))){
			
		 val = request.getParameter("val");
		}
		Page<Mailnumber> pagelist=mservice.index(page, size, tu, val);
		List<Map<String, Object>> list=mservice.up(pagelist);
		model.addAttribute("account", list);
		model.addAttribute("page", pagelist);
		return "mail/mailtable";
	}

	/**
	 * 新增账号
	 * 修改账号
	 */
	@RequestMapping("addaccount")
	public String add(HttpSession session, Model model,HttpServletRequest req){
		String userId = ((String) session.getAttribute("userId")).trim();
		Long userid = Long.parseLong(userId);
		// 通过用户id找用户
		User tu = udao.findOne(userid);
		
		Mailnumber mailn=null;
		if(StringUtil.isEmpty(req.getParameter("id"))){
			List<SystemTypeList> typelist=tydao.findByTypeModel("aoa_mailnumber");
			List<SystemStatusList> statuslist=sdao.findByStatusModel("aoa_mailnumber");
			model.addAttribute("typelist", typelist);
			model.addAttribute("statuslist", statuslist);
			
			if(!StringUtil.isEmpty((String) req.getAttribute("errormess"))){
				mailn=(Mailnumber) req.getAttribute("mail");
				 req.setAttribute("errormess",req.getAttribute("errormess"));
				 model.addAttribute("mails", mailn);
				 model.addAttribute("type", tydao.findname(mailn.getMailType()));
				 model.addAttribute("status", sdao.findname(mailn.getStatus()));
				 
			}else if(!StringUtil.isEmpty((String) req.getAttribute("success"))){
				mailn=(Mailnumber) req.getAttribute("mail"); 
				req.setAttribute("success","fds");
				model.addAttribute("mails", mailn);
				model.addAttribute("type", tydao.findname(mailn.getMailType()));
				model.addAttribute("status", sdao.findname(mailn.getStatus()));
			}
		}else{
			
			Long id=Long.parseLong(req.getParameter("id"));
			Mailnumber mailnum=mndao.findOne(id);
			model.addAttribute("type", tydao.findname(mailnum.getMailType()));
			model.addAttribute("status", sdao.findname(mailnum.getStatus()));
			model.addAttribute("mails", mailnum);
		
			
		}
		model.addAttribute("username", tu.getUserName());
		return "mail/addaccounts";
	}
	/**
	 * 存邮箱账号
	 */
	@RequestMapping("saveaccount")
	public String save(HttpServletRequest request,@Valid Mailnumber mail,BindingResult br, HttpSession session){
		String userId = ((String) session.getAttribute("userId")).trim();
		Long userid = Long.parseLong(userId);
		User tu=udao.findOne(userid);
		request.setAttribute("mail", mail);
		ResultVO res = BindingResultVOUtil.hasErrors(br);
		if (!ResultEnum.SUCCESS.getCode().equals(res.getCode())) {
			List<Object> list = new MapToList<>().mapToList(res.getData());
			request.setAttribute("errormess", list.get(0).toString());
			
			System.out.println("list错误的实体类信息：" + mail);
			System.out.println("list错误详情:" + list);
			System.out.println("list错误第一条:" + list.get(0));
			System.out.println("啊啊啊错误的信息——：" + list.get(0).toString());
			
		}else{
			if(Objects.isNull(mail.getMailNumberId())){
				mail.setMailUserId(tu);
				mail.setMailCreateTime(new Date());
				mndao.save(mail);
			}else{
				Mailnumber mails=mndao.findOne(mail.getMailNumberId());
				mails.setMailType(mail.getMailType());
				mails.setStatus(mail.getStatus());
				mails.setMailDes(mail.getMailDes());
				mails.setMailAccount(mail.getMailAccount());
				mails.setPassword(mail.getPassword());
				mails.setMailUserName(mail.getMailUserName());
				mndao.save(mails);
			}
			request.setAttribute("success", "执行成功！");
			
		}
		System.out.println(mail);
		return "forward:/addaccount";
	}
	/**
	 * 删除账号
	 */
	@RequestMapping("dele")
	public String edit(HttpServletRequest request,HttpSession session){
		String userId = ((String) session.getAttribute("userId")).trim();
		Long userid = Long.parseLong(userId);
		//得到账号id
		Long accountid=Long.parseLong(request.getParameter("id"));
		Mailnumber mail=mndao.findOne(accountid);
		if(mail.getMailUserId().getUserId().equals(userid)){
			mservice.dele(accountid);
		}else{
			return "redirect:/notlimit";
		}
		return "redirect:/mailmanage";
	}
	
	/**
	 * 写信
	 */
	@RequestMapping("wmail")
	public  String index2(Model model, HttpSession session) {
		String userId = ((String) session.getAttribute("userId")).trim();
		Long userid = Long.parseLong(userId);
		User mu=udao.findOne(userid);
		List<SystemTypeList> typelist=tydao.findByTypeModel("aoa_in_mail_list");
		List<SystemStatusList>  statuslist=sdao.findByStatusModel("aoa_in_mail_list");
		List<Mailnumber> mailnum=mndao.findByStatusAndMailUserId(1L, mu);
		model.addAttribute("typelist", typelist);
		model.addAttribute("statuslist", statuslist);
		model.addAttribute("mailnum", mailnum);
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
