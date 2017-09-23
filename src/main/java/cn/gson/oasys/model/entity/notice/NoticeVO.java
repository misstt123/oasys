package cn.gson.oasys.model.entity.notice;

import java.util.Date;

public class NoticeVO {

	private Long noticeId;		//公告通知id
	private String content;		//通知内容
	private Boolean top;		//此消息是否置顶
	private Date modifyTime;	//修改时间
	private Date noticeTime;	//发布时间
	private Long statusId;		//状态id
	private Long typeId;		//类型id
	private String title;		//标题
	private Boolean read;		//是否已读

	public NoticeVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public NoticeVO(Long noticeId, String content, Boolean top, Date modifyTime, Date noticeTime, Long statusId,
			Long typeId, String title, Boolean read) {
		super();
		this.noticeId = noticeId;
		this.content = content;
		this.top = top;
		this.modifyTime = modifyTime;
		this.noticeTime = noticeTime;
		this.statusId = statusId;
		this.typeId = typeId;
		this.title = title;
		this.read = read;
	}




	public Long getNoticeId() {
		return noticeId;
	}
	public void setNoticeId(Long noticeId) {
		this.noticeId = noticeId;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Boolean getTop() {
		return top;
	}
	public void setTop(Boolean top) {
		this.top = top;
	}
	public Date getModifyTime() {
		return modifyTime;
	}
	public void setModifyTime(Date modifyTime) {
		this.modifyTime = modifyTime;
	}
	public Date getNoticeTime() {
		return noticeTime;
	}
	public void setNoticeTime(Date noticeTime) {
		this.noticeTime = noticeTime;
	}
	public Long getStatusId() {
		return statusId;
	}
	public void setStatusId(Long statusId) {
		this.statusId = statusId;
	}
	public Long getTypeId() {
		return typeId;
	}
	public void setTypeId(Long typeId) {
		this.typeId = typeId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Boolean getRead() {
		return read;
	}
	public void setRead(Boolean read) {
		this.read = read;
	}

	@Override
	public String toString() {
		return "NoticeVO [noticeId=" + noticeId + ", content=" + content + ", top=" + top + ", modifyTime=" + modifyTime
				+ ", noticeTime=" + noticeTime + ", statusId=" + statusId + ", typeId=" + typeId + ", title=" + title
				+ ", read=" + read + "]";
	}
	
	
	

}
