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

import cn.gson.oasys.model.entity.note.Attachment;
import cn.gson.oasys.model.entity.user.User;

@Entity
@Table(name="aoa_in_mail_list")
//内部邮件
public class Inmaillist {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name="mail_id")
	private Long mailId;//内部邮件id
	
	@Column(name="mail_type")
	private Long mailType;//邮件类型（通知，公告，邮件）
	
	
	@ManyToOne
	@JoinColumn(name="mail_in_push_user_id")
	private User mailUserid;//发件人id
	
	@Column(name="mail_title",nullable=false)
	private String mailTitle;//邮件主题
	
	@Column(name="mail_content")
	private String mailContent;//邮件内容
	
	
	@ManyToOne
	@JoinColumn(name="mail_file_id")
	private Attachment mailFileid;//邮件附件id
	
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

	

	public User getMailUserid() {
		return mailUserid;
	}

	public void setMailUserid(User mailUserid) {
		this.mailUserid = mailUserid;
	}

	public Attachment getMailFileid() {
		return mailFileid;
	}

	public void setMailFileid(Attachment mailFileid) {
		this.mailFileid = mailFileid;
	}

	public Date getMailCreateTime() {
		return mailCreateTime;
	}

	public void setMailCreateTime(Date mailCreateTime) {
		this.mailCreateTime = mailCreateTime;
	}

	@Override
	public String toString() {
		return "Inmaillist [mailId=" + mailId + ", mailType=" + mailType + ", mailTitle=" + mailTitle + ", mailContent="
				+ mailContent + ", mailCreateTime=" + mailCreateTime + "]";
	}

	
	
}
