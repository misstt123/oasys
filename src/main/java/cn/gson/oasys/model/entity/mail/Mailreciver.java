package cn.gson.oasys.model.entity.mail;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="aoa_mail_reciver")
//内部邮件收件人中间表
public  class Mailreciver {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="pk_id")
	private Long pkId;
	
	@Column(name="mail_id")
	private Long mailId;//内部邮件id
	
	@Column(name="reciver_id")
	private Long reciverId;//内部用户id
	
	@Column(name="is_read",nullable=false)
	private Integer isRead;//是否已读
	
	
	public Mailreciver(){}
	
	public Long getPkId() {
		return pkId;
	}
	
	public void setPkId(Long pkId) {
		this.pkId = pkId;
	}

	public Long getMailId() {
		return mailId;
	}

	public void setMailId(Long mailId) {
		this.mailId = mailId;
	}

	public Long getReciverId() {
		return reciverId;
	}

	public void setReciverId(Long reciverId) {
		this.reciverId = reciverId;
	}

	public Integer getIsRead() {
		return isRead;
	}

	public void setIsRead(Integer isRead) {
		this.isRead = isRead;
	}

	@Override
	public String toString() {
		return "Mailreciver [pkId=" + pkId + ", mailId=" + mailId + ", reciverId=" + reciverId + ", isRead=" + isRead
				+ "]";
	}

	public Mailreciver(Long mailId, Long reciverId, Integer isRead) {
		super();
		this.mailId = mailId;
		this.reciverId = reciverId;
		this.isRead = isRead;
	}

	
	
	
}
