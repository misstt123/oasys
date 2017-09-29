package cn.gson.oasys.model.entity.mail;

import java.util.Date;



public class Pagemail {

	private Long mailId;//邮件id
	
	private Long mailType;//邮件类型（通知，公告，邮件）
	
	private Long mailStatusid;//邮件状态（一般，紧急，重要）
	
	private String mailTitle;//邮件主题
	
	private String inReceiver;//接收人（可以是多个）
	
	private Long mailFileid;//邮件附件id
	
	private Date mailCreateTime;//邮件创建时间
	
	private Boolean star=false;//是否星标
	
	private Boolean read=false;//是否已读
	
	public Pagemail(){}

	public Pagemail(Long mailId, Long mailType, Long mailStatusid, String mailTitle,String inReceiver,
			Long mailFileid, Date mailCreateTime, Boolean star, Boolean read) {
		super();
		this.mailId = mailId;
		this.mailType = mailType;
		this.mailStatusid = mailStatusid;
		this.mailTitle = mailTitle;
		this.inReceiver = inReceiver;
		this.mailFileid = mailFileid;
		this.mailCreateTime = mailCreateTime;
		this.star = star;
		this.read = read;
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

	public Long getMailStatusid() {
		return mailStatusid;
	}

	public void setMailStatusid(Long mailStatusid) {
		this.mailStatusid = mailStatusid;
	}

	public String getMailTitle() {
		return mailTitle;
	}

	public void setMailTitle(String mailTitle) {
		this.mailTitle = mailTitle;
	}

	

	public String getInReceiver() {
		return inReceiver;
	}

	public void setInReceiver(String inReceiver) {
		this.inReceiver = inReceiver;
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



	public Boolean getStar() {
		return star;
	}

	public void setStar(Boolean star) {
		this.star = star;
	}

	
	public Boolean getRead() {
		return read;
	}

	public void setRead(Boolean read) {
		this.read = read;
	}

	@Override
	public String toString() {
		return "Pagemail [mailId=" + mailId + ", mailType=" + mailType + ", mailStatusid=" + mailStatusid
				+ ", mailTitle=" + mailTitle + ", inReceiver=" + inReceiver + ", mailFileid=" + mailFileid
				+ ", mailCreateTime=" + mailCreateTime + ", star=" + star + ", read=" + read + "]";
	}

	
	
}
