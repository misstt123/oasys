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
import javax.persistence.Transient;

import org.hibernate.validator.constraints.NotEmpty;

import cn.gson.oasys.model.entity.note.Attachment;
import cn.gson.oasys.model.entity.user.User;

@Entity
@Table(name="aoa_in_mail_list")
//内部邮件
public class Inmaillist {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name="mail_id")
	private Long mailId;//邮件id
	
	@Column(name="mail_type")
	private Long mailType;//邮件类型（通知，公告，邮件）
	
	@Column(name="mail_status_id")
	private Long mailStatusid;//邮件状态（一般，紧急，重要）
	
	@ManyToOne
	@JoinColumn(name="mail_in_push_user_id")
	private User mailUserid;//发件人id
	
	@Column(name="mail_title")
	@NotEmpty(message="邮件主题不能为空")
	private String mailTitle;//邮件主题
	
	@Column(name="mail_content")
	@NotEmpty(message="邮件内容不能为空")
	private String content;//邮件内容
	
	@Column(name="in_receiver")
	private String inReceiver;//接收人（可以是多个）
	
	@ManyToOne
	@JoinColumn(name="mail_file_id")
	private Attachment mailFileid;//邮件附件id
	
	@Column(name="mail_create_time")
	private Date mailCreateTime;//邮件创建时间
	
	@ManyToOne
	@JoinColumn(name="mail_number_id")
	private Mailnumber mailNumberid;//外部邮件账号id
	
	@Column(name="mail_del")
	private Boolean del=false;
	
	@Column(name="mail_push")
	private Boolean push=false;
	
	@Column(name="mail_star")
	private Boolean star=false;
	
	@Transient 
	private Long inmail;
	
	@Transient 
	private String huizhuan;
	
	public Inmaillist(){}
	
	public String getHuizhuan() {
		return huizhuan;
	}

	public void setHuizhuan(String huizhuan) {
		this.huizhuan = huizhuan;
	}

	public Boolean getStar() {
		return star;
	}



	public void setStar(Boolean star) {
		this.star = star;
	}



	public Boolean getDel() {
		return del;
	}



	public void setDel(Boolean del) {
		this.del = del;
	}



	public Boolean getPush() {
		return push;
	}



	public void setPush(Boolean push) {
		this.push = push;
	}



	public Long getInmail() {
		return inmail;
	}
	
	public void setInmail(Long inmail) {
		this.inmail = inmail;
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


	public String getInReceiver() {
		return inReceiver;
	}

	public void setInReceiver(String inReceiver) {
		this.inReceiver = inReceiver;
	}



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

	public String getContent() {
		return content;
	}



	public void setContent(String content) {
		this.content = content;
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
		return "Inmaillist [mailId=" + mailId + ", mailType=" + mailType + ", mailStatusid=" + mailStatusid
				+ ", mailTitle=" + mailTitle + ", content=" + content + ", inReceiver=" + inReceiver
				+ ", mailCreateTime=" + mailCreateTime + ", mailNumberid=" + mailNumberid + ", del=" + del + ", push="
				+ push + ", star=" + star + ", inmail=" + inmail + ", huizhuan=" + huizhuan + "]";
	}




	
	


	
	
	
}
