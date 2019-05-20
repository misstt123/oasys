package cn.gson.oasys.services.mail;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Properties;
import java.util.StringTokenizer;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.annotation.PostConstruct;
import javax.mail.BodyPart;
import javax.mail.Multipart;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.transaction.Transactional;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.domain.Sort.Order;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.util.ResourceUtils;
import org.springframework.web.multipart.MultipartFile;

import com.github.pagehelper.util.StringUtil;

import cn.gson.oasys.model.dao.maildao.InMailDao;
import cn.gson.oasys.model.dao.maildao.MailnumberDao;
import cn.gson.oasys.model.dao.maildao.MailreciverDao;
import cn.gson.oasys.model.dao.notedao.AttachmentDao;
import cn.gson.oasys.model.dao.system.StatusDao;
import cn.gson.oasys.model.dao.system.TypeDao;
import cn.gson.oasys.model.entity.mail.Inmaillist;
import cn.gson.oasys.model.entity.mail.Mailnumber;
import cn.gson.oasys.model.entity.mail.Pagemail;
import cn.gson.oasys.model.entity.note.Attachment;
import cn.gson.oasys.model.entity.system.SystemStatusList;
import cn.gson.oasys.model.entity.system.SystemTypeList;
import cn.gson.oasys.model.entity.user.User;

@Service
@Transactional
public class MailServices {
	@Autowired
	private StatusDao sdao;
	@Autowired
	private TypeDao tydao;
	@Autowired
	private MailnumberDao mdao;
	@Autowired
	private MailreciverDao mrdao;
	
	@Autowired
	private InMailDao imdao;

	private String rootpath;

	@PostConstruct
	public void UserpanelController(){
		try {
			rootpath= ResourceUtils.getURL("classpath:").getPath().replace("/target/classes/","/static/attachment");
			System.out.println(rootpath);

		}catch (IOException e){
			System.out.println("获取项目路径异常");
		}
	}
	/**
	 * 收件箱
	 */
	public Page<Pagemail> recive(int page,int size,User tu,String val,String title){
		Page<Pagemail> pagelist=null;
		Pageable pa=new PageRequest(page, size);
		List<Order> orders = new ArrayList<>();
		SystemStatusList status=sdao.findByStatusModelAndStatusName("aoa_in_mail_list", val);
		SystemTypeList type=tydao.findByTypeModelAndTypeName("aoa_in_mail_list", val);
		if(("收件箱").equals(title)){
			if(StringUtil.isEmpty(val)){
				orders.add(new Order(Direction.ASC, "read"));
				Sort sort = new Sort(orders);
				pa=new PageRequest(page, size,sort);
				pagelist=mrdao.findmail(tu,false,pa);
			}else if(!Objects.isNull(status)){
				pagelist=mrdao.findmailbystatus(tu,status.getStatusId(),false,pa);
			}else if(!Objects.isNull(type)){
				pagelist=mrdao.findmailbytype(tu,type.getTypeId(),false,pa);
			}else{
				pagelist=mrdao.findmails(tu,false, val, pa);
			}
		}else{
			if(StringUtil.isEmpty(val)){
				orders.add(new Order(Direction.ASC, "read"));
				Sort sort = new Sort(orders);
				pa=new PageRequest(page, size,sort);
				pagelist=mrdao.findmail(tu,true,pa);
			}else if(!Objects.isNull(status)){
				pagelist=mrdao.findmailbystatus(tu,status.getStatusId(),true,pa);
			}else if(!Objects.isNull(type)){
				pagelist=mrdao.findmailbytype(tu,type.getTypeId(),false,pa);
			}else{
				pagelist=mrdao.findmails(tu, true,val, pa);
			}
		}
		return pagelist;
	}
	
	
	/**
	 * 封装json
	 */
	public List<Map<String,Object>> mail(Page<Pagemail> mail){
		List<Pagemail> maillist=mail.getContent();
		List<Map<String, Object>> list = new ArrayList<>();
		for (int i = 0; i < maillist.size(); i++) {
			Map<String,Object> result=new HashMap<>();
			String typename=tydao.findname(maillist.get(i).getMailType());
			SystemStatusList status=sdao.findOne(maillist.get(i).getMailStatusid());
			result.put("typename", typename);
			result.put("statusname", status.getStatusName());
			result.put("statuscolor", status.getStatusColor());
			result.put("star", maillist.get(i).getStar());
			result.put("read", maillist.get(i).getRead());
			result.put("time", maillist.get(i).getMailCreateTime());
			result.put("reciver", maillist.get(i).getInReceiver());
			result.put("title", maillist.get(i).getMailTitle());
			result.put("mailid", maillist.get(i).getMailId());
			result.put("fileid", maillist.get(i).getMailFileid());
			list.add(result);
			
		}
		return list;
	}
	
	/**
	 * 发件箱
	 */
	public Page<Inmaillist> inmail(int page,int size,User tu,String val,String title){
		Page<Inmaillist> pagemail=null;
		Pageable pa=new PageRequest(page, size);
		List<Order> orders = new ArrayList<>();
		SystemStatusList status=sdao.findByStatusModelAndStatusName("aoa_in_mail_list", val);
		SystemTypeList type=tydao.findByTypeModelAndTypeName("aoa_in_mail_list", val);
		if(("发件箱").equals(title)){
		if(StringUtil.isEmpty(val)){
			orders.add(new Order(Direction.DESC, "mailStatusid"));
			Sort sort = new Sort(orders);
			pa=new PageRequest(page, size,sort);
			pagemail=imdao.findByPushAndMailUseridAndDelOrderByMailCreateTimeDesc(true,tu,false,pa);
		}else if(!Objects.isNull(status)){
			pagemail=imdao.findByMailUseridAndMailStatusidAndPushAndDelOrderByMailCreateTimeDesc(tu, status.getStatusId(),true,false, pa);
		}else if(!Objects.isNull(type)){
			pagemail=imdao.findByMailUseridAndMailTypeAndPushAndDelOrderByMailCreateTimeDesc(tu, type.getTypeId(),true,false, pa);
		}else{
			pagemail=imdao.findbymailUseridAndPushAndDel(tu,true,false,val,pa);
		}
		}else{
			//草稿箱
			if(StringUtil.isEmpty(val)){
				orders.add(new Order(Direction.DESC, "mailStatusid"));
				Sort sort = new Sort(orders);
				pa=new PageRequest(page, size,sort);
				pagemail=imdao.findByPushAndMailUseridAndDelOrderByMailCreateTimeDesc(false,tu,false,pa);
			}else if(!Objects.isNull(status)){
				pagemail=imdao.findByMailUseridAndMailStatusidAndPushAndDelOrderByMailCreateTimeDesc(tu, status.getStatusId(),false,false, pa);
			}else if(!Objects.isNull(type)){
				pagemail=imdao.findByMailUseridAndMailTypeAndPushAndDelOrderByMailCreateTimeDesc(tu, type.getTypeId(),true,false, pa);
			}else{
				pagemail=imdao.findbymailUseridAndPushAndDel(tu,false,false,val,pa);
			}
		}
		return pagemail;
		
	}
	/**
	 * 发件箱封装
	 */
	public List<Map<String,Object>> maillist(Page<Inmaillist> mail){
		List<Inmaillist> maillist=mail.getContent();
		List<Map<String, Object>> list = new ArrayList<>();
		for (int i = 0; i < maillist.size(); i++) {
			Map<String,Object> result=new HashMap<>();
			String typename=tydao.findname(maillist.get(i).getMailType());
			SystemStatusList status=sdao.findOne(maillist.get(i).getMailStatusid());
			result.put("typename", typename);
			result.put("statusname", status.getStatusName());
			result.put("statuscolor", status.getStatusColor());
			result.put("star", maillist.get(i).getStar());
			result.put("read", true);
			result.put("time", maillist.get(i).getMailCreateTime());
			result.put("reciver", maillist.get(i).getInReceiver());
			result.put("title", maillist.get(i).getMailTitle());
			result.put("mailid", maillist.get(i).getMailId());
			result.put("fileid", maillist.get(i).getMailFileid());
			list.add(result);
			
		}
		return list;
	}
	
	/**
	 * 账号
	 * @param page
	 * @param size
	 * @param tu
	 * @param val
	 * @return
	 */
	public Page<Mailnumber> index(int page,int size,User tu,String val,Model model){
		Page<Mailnumber> account=null;
		List<Order> orders = new ArrayList<>();
		Pageable pa=new PageRequest(page, size);
		if(StringUtil.isEmpty(val)){
			orders.addAll(Arrays.asList(new Order(Direction.ASC, "status"), new Order(Direction.DESC, "mailCreateTime")));
			Sort sort = new Sort(orders);
			pa=new PageRequest(page, size, sort);
			account=mdao.findByMailUserId(tu,pa);
		}else if (("类型").equals(val)) {
			account=mdao.findByMailUserIdOrderByMailType(tu,pa);
			model.addAttribute("sort", "&val="+val);
		}else if(("状态").equals(val)){
			account=mdao.findByMailUserIdOrderByStatus(tu,pa);
			model.addAttribute("sort", "&val="+val);
		}else if(("创建时间").equals(val)){
			account=mdao.findByMailUserIdOrderByMailCreateTimeDesc(tu,pa);
			model.addAttribute("sort", "&val="+val);
		}else{
			//名字的模糊查询
			account = mdao.findByMailUserNameLikeAndMailUserId(val,tu,pa);
			model.addAttribute("sort", "&val="+val);
		}
		return account;
	}
	
	public List<Map<String, Object>> up(Page<Mailnumber> num){
		List<Mailnumber> account=num.getContent();
		List<Map<String, Object>> list = new ArrayList<>();
		for (int i = 0; i < account.size(); i++) {
			Map<String, Object> result=new HashMap<>();
			SystemStatusList status=sdao.findOne(account.get(i).getStatus());
			result.put("accountid", account.get(i).getMailNumberId());
			result.put("typename", tydao.findname(account.get(i).getMailType()));
			result.put("statusname", status.getStatusName());
			result.put("statuscolor", status.getStatusColor());
			result.put("accountname", account.get(i).getMailUserName());
			result.put("creattime", account.get(i).getMailCreateTime());
			list.add(result);
		}
		return list;
	}
	
	/**
	 * 上传附件
	 * @throws IOException 
	 * @throws IllegalStateException 
	 */
	public Attachment upload(MultipartFile file,User mu) throws IllegalStateException, IOException{
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy/MM");
		File root = new File(rootpath,simpleDateFormat.format(new Date()));
		File savepath = new File(root,mu.getUserName());
		
		if (!savepath.exists()) {
			savepath.mkdirs();
		}
		String fileName=file.getOriginalFilename();
		if(!StringUtil.isEmpty(fileName)){
			String suffix=FilenameUtils.getExtension(fileName);
			String newFileName = UUID.randomUUID().toString().toLowerCase()+"."+suffix;
			File targetFile = new File(savepath,newFileName);
			file.transferTo(targetFile);
			
			Attachment attachment=new Attachment();
			attachment.setAttachmentName(file.getOriginalFilename());
			attachment.setAttachmentPath(targetFile.getAbsolutePath().replace("\\", "/").replace(rootpath, ""));
			attachment.setAttachmentShuffix(suffix);
			attachment.setAttachmentSize(file.getSize());
			attachment.setAttachmentType(file.getContentType());
			attachment.setUploadTime(new Date());
			attachment.setUserId(mu.getUserId()+"");
			
			return attachment;
		}
		return null;
	}
	
	/**
	 * 删除账号
	 */
	public void dele(Long id){
		mdao.delete(id);
	}
	
	/**
	 * 校验中文
	 * @param str
	 * @return
	 */
	public  boolean isContainChinese(String str) {
		 
        Pattern p = Pattern.compile("[\u4e00-\u9fa5]");
        Matcher m = p.matcher(str);
        if (m.find()) {
            return true;
        }
        return false;
    }
	
	/**
	 * 发外部邮件
	 * @return 
	 */
		public void pushmail(String account,String password,String reciver,
				String name,String title,String content,String affix,String filename){
			String file=null;
			if(!StringUtil.isEmpty(affix)){
				File root = new File(rootpath,affix);
				file=root.getAbsolutePath();
			}	
			// 发件人的 邮箱 和 密码（替换为自己的邮箱和密码）
			String myEmailAccount = account;
		    String myEmailPassword = password;
		    
		 // 网易163邮箱的 SMTP 服务器地址为: smtp.163.com
		 //qq  smtp.qq.com
		    String myEmailSMTPHost = "smtp.qq.com";
		    
		 // 收件人邮箱（替换为自己知道的有效邮箱）
		  //  String receiveMailAccount = "1533047354@qq.com";
		    
		 // 1. 创建参数配置, 用于连接邮件服务器的参数配置
	        Properties props = new Properties();                    // 参数配置
	        props.setProperty("mail.transport.protocol", "smtp");   // 使用的协议（JavaMail规范要求）
	        props.setProperty("mail.smtp.host", myEmailSMTPHost);   // 发件人的邮箱的 SMTP 服务器地址
	        props.setProperty("mail.smtp.auth", "true");            // 需要请求认证
	    	
	       // 开启 SSL 安全连接。
	        // SMTP 服务器的端口 (非 SSL 连接的端口一般默认为 25, 可以不添加, 如果开启了 SSL 连接,
	        //                  需要改为对应邮箱的 SMTP 服务器的端口, 具体可查看对应邮箱服务的帮助,
	        //                  QQ邮箱的SMTP(SLL)端口为465或587, 其他邮箱自行去查看)
	        final String smtpPort = "465";
	        props.setProperty("mail.smtp.port", smtpPort);
	        props.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
	        props.setProperty("mail.smtp.socketFactory.fallback", "false");
	        props.setProperty("mail.smtp.socketFactory.port", smtpPort);
	        
	    	
	     // 2. 根据配置创建会话对象, 用于和邮件服务器交互
	        Session session = Session.getDefaultInstance(props);
	        session.setDebug(true);                                 // 设置为debug模式, 可以查看详细的发送 log
	        
	        // 3. 创建一封邮件
	        MimeMessage message;
			try {
				message = createMimeMessage(session, myEmailAccount, reciver,name ,title, content,file,filename);
				
				 // 4. 根据 Session 获取邮件传输对象
		        Transport transport = session.getTransport();
		        
		        // 5. 使用 邮箱账号 和 密码 连接邮件服务器, 这里认证的邮箱必须与 message 中的发件人邮箱一致, 否则报错
		        transport.connect(myEmailAccount, myEmailPassword);

		     // 6. 发送邮件, 发到所有的收件地址, message.getAllRecipients() 获取到的是在创建邮件对象时添加的所有收件人, 抄送人, 密送人
		       transport.sendMessage(message, message.getAllRecipients());
				
		        // 7. 关闭连接
		        transport.close();
				
			} catch (Exception e) {
				e.printStackTrace();
			}
	        
	       
			
		}
	   public static MimeMessage createMimeMessage(Session session, String sendMail, String receiveMail,
			   String name,String title,String content,String affix,String filename) throws Exception {
	        // 1. 创建一封邮件
	        MimeMessage message = new MimeMessage(session);

	        // 2. From: 发件人（昵称有广告嫌疑，避免被邮件服务器误认为是滥发广告以至返回失败，请修改昵称）
	        message.setFrom(new InternetAddress(sendMail, name, "UTF-8"));

	        // 3. To: 收件人（可以增加多个收件人、抄送、密送）
	        message.setRecipient(MimeMessage.RecipientType.TO, new InternetAddress(receiveMail, "XX用户", "UTF-8"));

	        // 4. Subject: 邮件主题（标题有广告嫌疑，避免被邮件服务器误认为是滥发广告以至返回失败，请修改标题）
	        message.setSubject(title, "UTF-8");

	    if(!StringUtil.isEmpty(affix)){
	
			// 向multipart对象中添加邮件的各个部分内容，包括文本内容和附件
			Multipart multipart = new MimeMultipart();
			// 设置邮件的文本内容
			BodyPart contentPart = new MimeBodyPart();
			contentPart.setContent(content, "text/html;charset=UTF-8");
			multipart.addBodyPart(contentPart);
			// 添加附件
			BodyPart messageBodyPart = new MimeBodyPart();
			DataSource source = new FileDataSource(affix);//附件路径
			// 添加附件的内容
			messageBodyPart.setDataHandler(new DataHandler(source));
			// 添加附件的标题
			// 这里很重要，通过下面的Base64编码的转换可以保证你的中文附件标题名在发送时不会变成乱码
			sun.misc.BASE64Encoder enc = new sun.misc.BASE64Encoder();
			messageBodyPart.setFileName("=?GBK?B?"+ enc.encode(filename.getBytes()) + "?=");
			multipart.addBodyPart(messageBodyPart);
			
			// 将multipart对象放到message中
			message.setContent(multipart,"text/html;charset=UTF-8");
		}else{
			 // 5. Content: 邮件正文（可以使用html标签）（内容有广告嫌疑，避免被邮件服务器误认为是滥发广告以至返回失败，请修改发送内容）
	        message.setContent(content, "text/html;charset=UTF-8");
		}
	        // 6. 设置发件时间
	        message.setSentDate(new Date());

	        // 7. 保存设置
	        message.saveChanges();
	        
	        

	        return message;
	    }
}
