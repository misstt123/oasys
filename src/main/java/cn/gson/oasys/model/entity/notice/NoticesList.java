package cn.gson.oasys.model.entity.notice;

import java.util.Date;

import javax.persistence.*;

/**
 * 通知模块通知总表
 * 
 * @author luoxiang
 *
 */
@Entity
@Table(name = "aoa_notice_list")
public class NoticesList {

	@Id
	@Column(name = "notice_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long noticeId; // 通知id	

	@Column(name = "user_id")
	private Long userId; // 用户id

	@Column(name = "type_id")
	private Long typeId; // 类型id

	@Column(name = "status_id")
	private Long statusId; // 状态id

	private String title; // 通知标题

	private String content; // 通知内容

	private String url; // 通知内的链接

	@Column(name = "is_top")
	private Boolean top=false; // 该调通知是否置顶

	@Column(name = "notice_time")
	private Date noticeTime; // 发布通知的时间

	@Column(name = "modify_time")
	private Date modifyTime=new Date(); // 修改时间

	public NoticesList() {
	}

	public Long getNoticeId() {
		return noticeId;
	}

	public void setNoticeId(Long noticeId) {
		this.noticeId = noticeId;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public Long getTypeId() {
		return typeId;
	}

	public void setTypeId(Long typeId) {
		this.typeId = typeId;
	}

	public Long getStatusId() {
		return statusId;
	}

	public void setStatusId(Long statusId) {
		this.statusId = statusId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}
	

	public Boolean getTop() {
		return top;
	}

	public void setTop(Boolean top) {
		this.top = top;
	}

	public Date getNoticeTime() {
		return noticeTime;
	}

	public void setNoticeTime(Date noticeTime) {
		this.noticeTime = noticeTime;
	}

	public Date getModifyTime() {
		return modifyTime;
	}

	public void setModifyTime(Date modifyTime) {
		this.modifyTime = modifyTime;
	}

	@Override
	public String toString() {
		return "NoticesList [noticeId=" + noticeId + ", userId=" + userId + ", typeId=" + typeId + ", statusId="
				+ statusId + ", title=" + title + ", content=" + content + ", url=" + url + ", top=" + top
				+ ", noticeTime=" + noticeTime + ", modifyTime=" + modifyTime + "]";
	}

}
