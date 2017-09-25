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
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.NotEmpty;

import cn.gson.oasys.model.entity.user.User;

@Entity
@Table(name="aoa_mailnumber")
//邮箱账号表
public class Mailnumber {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="mail_number_id")
	private Long mailNumberId; //邮箱的主键id
	
	@Column(name="mail_type")
	private Long mailType;//邮件账号类型
	
	@Column(name="status")
	private Long status;//邮件状态（是否可用）
	
	@ManyToOne
	@JoinColumn(name="mail_num_user_id")
	private User mailUserId;//用户id
	
	@Column(name="mail_user_name",nullable=false)
	@NotEmpty(message="发件昵称不能为空")
	private String mailUserName;//用户别名
	
	@Column(name="mail_create_time")
	private Date mailCreateTime;//账号创建时间
	
	@Column(name="mail_account",nullable=false)
	@NotEmpty(message="邮件账号不能为空")
	@Pattern(regexp="^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\\.[a-zA-Z0-9_-]{2,3}){1,2})$",message="请填写正确邮箱号")
	private String mailAccount;//邮件账号
	
	@Column(name="password",nullable=false)
	@NotEmpty(message="授权码不能为空")
	private String password;//账号授权码
	
	@Column(name="mail_des")
	private String mailDes;//账号信息备注
	
	public Mailnumber(){}
	

	public Long getMailNumberId() {
		return mailNumberId;
	}

	public void setMailNumberId(Long mailNumberId) {
		this.mailNumberId = mailNumberId;
	}

	public Long getMailType() {
		return mailType;
	}

	public void setMailType(Long mailType) {
		this.mailType = mailType;
	}

	public Long getStatus() {
		return status;
	}

	public void setStatus(Long status) {
		this.status = status;
	}

	public User getMailUserId() {
		return mailUserId;
	}

	public void setMailUserId(User mailUserId) {
		this.mailUserId = mailUserId;
	}

	public String getMailUserName() {
		return mailUserName;
	}

	public void setMailUserName(String mailUserName) {
		this.mailUserName = mailUserName;
	}

	public Date getMailCreateTime() {
		return mailCreateTime;
	}

	public void setMailCreateTime(Date mailCreateTime) {
		this.mailCreateTime = mailCreateTime;
	}

	public String getMailAccount() {
		return mailAccount;
	}

	public void setMailAccount(String mailAccount) {
		this.mailAccount = mailAccount;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getMailDes() {
		return mailDes;
	}

	public void setMailDes(String mailDes) {
		this.mailDes = mailDes;
	}

	@Override
	public String toString() {
		return "Mailnumber [mailNumberId=" + mailNumberId + ", mailType=" + mailType + ", status=" + status
				+ ", mailUserName=" + mailUserName + ", mailCreateTime=" + mailCreateTime
				+ ", mailAccount=" + mailAccount + ", password=" + password + ", mailDes=" + mailDes + "]";
	}
	
	
}
