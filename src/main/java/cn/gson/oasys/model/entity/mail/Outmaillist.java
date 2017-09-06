package cn.gson.oasys.model.entity.mail;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="aoa_out_mail_list")
//外部邮件表
public class Outmaillist {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="mail_id")
	private Long mailId;//邮件id
	
	@Column(name="mail_type")
	private Long mailType;//邮件类型（邮件，公告，通知）
	
	@Column(name="mail_status_id")
	private Long mailStatusid;//邮件状态（一般，紧急，重要）
	
	@ManyToOne
	@JoinColumn(name="mail_number_id")
	private Mailnumber mailNumberid;//外部邮件账号id
	
	@Column(name="title",nullable=false)
	private String title;//邮件主题
	
	@Column(name="mail_content")
	private String mailContent;//邮件内容
	
	@Column(name="mail_fileid")
	private Long mailFileid;//邮件附件id
	
	@Column(name="out_receiver",nullable=false)
	private String outReceiver;//接收人（可以是多个）
	
	@Column(name="mail_create_time")
	private Date mailCreateTime;//发送时间
	
	@Column(name="is_read")
	private Integer isRead;//是否已读
	
	public Outmaillist(){}
	
	

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

	public Long getMailStatusid() {
		return mailStatusid;
	}

	public void setMailStatusid(Long mailStatusid) {
		this.mailStatusid = mailStatusid;
	}

	

	public Mailnumber getMailNumberid() {
		return mailNumberid;
	}

	public void setMailNumberid(Mailnumber mailNumberid) {
		this.mailNumberid = mailNumberid;
	}

	public Date getMailCreateTime() {
		return mailCreateTime;
	}

	public void setMailCreateTime(Date mailCreateTime) {
		this.mailCreateTime = mailCreateTime;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
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

	public String getOutReceiver() {
		return outReceiver;
	}

	public void setOutReceiver(String outReceiver) {
		this.outReceiver = outReceiver;
	}

	public Integer getIsRead() {
		return isRead;
	}

	public void setIsRead(Integer isRead) {
		this.isRead = isRead;
	}

	
	@Override
	public String toString() {
		return "Outmaillist [mailId=" + mailId + ", mailType=" + mailType + ", mailStatusid=" + mailStatusid
				+ ", title=" + title + ", mailContent=" + mailContent + ", mailFileid=" + mailFileid + ", outReceiver="
				+ outReceiver + ", mailCreateTime=" + mailCreateTime + ", isRead=" + isRead + "]";
	}
	

}
