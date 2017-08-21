package cn.gson.oasys.model.entity.mail;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="in_mail_list")
public class Inmaillist {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name="mail_id")
	private Long mailId;//内部邮件id
	
	@Column(name="mail-type")
	private Long mailType;//邮件类型（通知，公告，邮件）
	
	@Column(name="mail_user_id")
	private Long mailUserid;//发件人id
	
	@Column(name="mail_title")
	private String mailTitle;//邮件主题
	
	@Column(name="mail_content")
	private String mailContent;//邮件内容
	
	@Column(name="mail_file_id")
	private Long mailFileid;//邮件附件id
	
	@Column(name="mail_create_time")
	private Date mailCreateTime;//邮件创建时间
	
	public Inmaillist(){}

	public Long getMailId() {
		return mailId;
	}

	public void setMailId(Long mailId) {
		this.mailId = mailId;
	}

	public Long getMailType() {
		return mailType;
	}

	public void setMailType(Long mailType) {
		this.mailType = mailType;
	}

	public Long getMailUserid() {
		return mailUserid;
	}

	public void setMailUserid(Long mailUserid) {
		this.mailUserid = mailUserid;
	}

	public String getMailTitle() {
		return mailTitle;
	}

	public void setMailTitle(String mailTitle) {
		this.mailTitle = mailTitle;
	}

	public String getMailContent() {
		return mailContent;
	}

	public void setMailContent(String mailContent) {
		this.mailContent = mailContent;
	}

	public Long getMailFileid() {
		return mailFileid;
	}

	public void setMailFileid(Long mailFileid) {
		this.mailFileid = mailFileid;
	}

	public Date getMailCreateTime() {
		return mailCreateTime;
	}

	public void setMailCreateTime(Date mailCreateTime) {
		this.mailCreateTime = mailCreateTime;
	}

	public Inmaillist(Long mailType, Long mailUserid, String mailTitle, String mailContent,
			Long mailFileid, Date mailCreateTime) {
		super();
		
		this.mailType = mailType;
		this.mailUserid = mailUserid;
		this.mailTitle = mailTitle;
		this.mailContent = mailContent;
		this.mailFileid = mailFileid;
		this.mailCreateTime = mailCreateTime;
	}
	
	
}
