package cn.gson.oasys.model.entity.task;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="aoa_task_list")
//任务表
public class Tasklist {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="task_id")
	private Long taskId;//任务id主键
	
	@Column(name="type_id")
	private Long typeId;//任务类型（公事，私事）
	
	@Column(name="publish_time")
	private Date publishTime;//发布时间
	
	@Column(name="star_time")
	private Date starTime;//任务开始时间
	
	@Column(name="end_time")
	private Date endTime;//任务结束时间
	
	@Column(name="modify_time")
	private Date modifyTime;//任务修改时间
	
	@Column(name="title",nullable=false)
	private String title;//任务主题
	
	@Column(name="user_id")
	private Long userId;//发布人id
	
	@Column(name="describe",nullable=false)
	private String describe;//任务描述
	
	@Column(name="comment")
	private String comment;//任务评价
	
	@Column(name="is_top")
	private Integer isTop;//任务是否置顶
	
	@Column(name="is_cancel")
	private Integer isCancel;//是否取消任务
	
	@Column(name="ticking")
	private String ticking;//任务结束后反馈
	
	@Column(name="status_id")
	private Integer statusId;//任务状态id
	
	
	public Tasklist(){}

	public Long getTaskId() {
		return taskId;
	}

	public void setTaskId(Long taskId) {
		this.taskId = taskId;
	}

	public Long getTypeId() {
		return typeId;
	}

	public void setTypeId(Long typeId) {
		this.typeId = typeId;
	}

	public Date getPublishTime() {
		return publishTime;
	}

	public void setPublishTime(Date publishTime) {
		this.publishTime = publishTime;
	}

	public Date getStarTime() {
		return starTime;
	}

	public void setStarTime(Date starTime) {
		this.starTime = starTime;
	}

	public Date getEndTime() {
		return endTime;
	}

	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}

	public Date getModifyTime() {
		return modifyTime;
	}

	public void setModifyTime(Date modifyTime) {
		this.modifyTime = modifyTime;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public String getDescribe() {
		return describe;
	}

	public void setDescribe(String describe) {
		this.describe = describe;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public Integer getIsTop() {
		return isTop;
	}

	public void setIsTop(Integer isTop) {
		this.isTop = isTop;
	}

	public Integer getIsCancel() {
		return isCancel;
	}

	public void setIsCancel(Integer isCancel) {
		this.isCancel = isCancel;
	}

	public String getTicking() {
		return ticking;
	}

	public void setTicking(String ticking) {
		this.ticking = ticking;
	}
	
	

	public Integer getStatusId() {
		return statusId;
	}

	public void setStatusId(Integer statusId) {
		this.statusId = statusId;
	}

	@Override
	public String toString() {
		return "Tasklist [taskId=" + taskId + ", typeId=" + typeId + ", publishTime=" + publishTime + ", starTime="
				+ starTime + ", endTime=" + endTime + ", modifyTime=" + modifyTime + ", title=" + title + ", userId="
				+ userId + ", describe=" + describe + ", comment=" + comment + ", isTop=" + isTop + ", isCancel="
				+ isCancel + ", ticking=" + ticking + ", statusId=" + statusId + "]";
	}

	public Tasklist(Long typeId, Date publishTime, Date starTime, Date endTime, Date modifyTime, String title,
			Long userId, String describe, String comment, Integer isTop, Integer isCancel, String ticking,
			Integer statusId) {
		super();
		this.typeId = typeId;
		this.publishTime = publishTime;
		this.starTime = starTime;
		this.endTime = endTime;
		this.modifyTime = modifyTime;
		this.title = title;
		this.userId = userId;
		this.describe = describe;
		this.comment = comment;
		this.isTop = isTop;
		this.isCancel = isCancel;
		this.ticking = ticking;
		this.statusId = statusId;
	}

	
}
