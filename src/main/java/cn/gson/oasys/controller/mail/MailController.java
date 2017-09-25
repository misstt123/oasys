package cn.gson.oasys.controller.mail;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Objects;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

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
	private MailnumberDao mdao;
	
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
	public String account(HttpSession session, Model model){
		
		String userId = ((String) session.getAttribute("userId")).trim();
		Long userid = Long.parseLong(userId);
		List<Map<String, Object>> list = new ArrayList<>();
		
		// 通过邮箱建立用户id找用户对象
		User tu = udao.findOne(userid);
		
		//通过user和statusid找邮箱账号
		
		List<Mailnumber> account=mdao.findByStatusAndMailUserIdOrderByMailCreateTimeDesc(1L, tu);
		List<Mailnumber> account2=mdao.findByStatusAndMailUserIdOrderByMailCreateTimeDesc(2L, tu);
		if(account2.size()>0){
			
			account.addAll(account2);
		}
		list=mservice.up(account);
		
	
		
		model.addAttribute("account", list);
		return "mail/mailmanage";
	}
	/**
	 * 各种排序
	 */
	@RequestMapping("mailpaixu")
	public String paixu(HttpServletRequest request, HttpSession session, Model model){
		
		String userId = ((String) session.getAttribute("userId")).trim();
		Long userid = Long.parseLong(userId);
		List<Mailnumber> account = null;
		List<Map<String, Object>> list = new ArrayList<>();
		// 通过发布人id找用户
		User tu = udao.findOne(userid);
		//得到传过来的值
		String val = request.getParameter("val");
		if (("类型").equals(val)) {
			account=mdao.findByMailUserIdOrderByMailType(tu);
		}else if(("状态").equals(val)){
			account=mdao.findByMailUserIdOrderByStatus(tu);
		}else{
			account=mdao.findByMailUserIdOrderByMailCreateTimeDesc(tu);
		}
		list=mservice.up(account);
		model.addAttribute("account", list);
		return "mail/accounttbody";
	}
	/**
	 * title查询
	 */
	@RequestMapping("serach")
	public String serach(HttpServletRequest request, HttpSession session, Model model){
		String userId = ((String) session.getAttribute("userId")).trim();
		Long userid = Long.parseLong(userId);
		
		List<Mailnumber> account = null;
		List<Map<String, Object>> list = new ArrayList<>();
		// 通过用户id找用户
		User tu = udao.findOne(userid);
		//得到传过来的值
		String val = request.getParameter("title");
		if(StringUtil.isEmpty(val)){
			account=mdao.findByStatusAndMailUserIdOrderByMailCreateTimeDesc(1L, tu);
			List<Mailnumber> account2=mdao.findByStatusAndMailUserIdOrderByMailCreateTimeDesc(2L, tu);
			if(account2.size()>0){
				
				account.addAll(account2);
			}
		}else{
			account = mdao.findByMailUserNameLikeAndMailUserId(val,tu);
		}
		list=mservice.up(account);
		model.addAttribute("account", list);
		return "mail/accounttbody";
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
			Mailnumber mailnum=mdao.findOne(id);
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
				mdao.save(mail);
			}else{
				Mailnumber mails=mdao.findOne(mail.getMailNumberId());
				mails.setMailType(mail.getMailType());
				mails.setStatus(mail.getStatus());
				mails.setMailDes(mail.getMailDes());
				mails.setMailAccount(mail.getMailAccount());
				mails.setPassword(mail.getPassword());
				mails.setMailUserName(mail.getMailUserName());
				mdao.save(mails);
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
		Mailnumber mail=mdao.findOne(accountid);
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
