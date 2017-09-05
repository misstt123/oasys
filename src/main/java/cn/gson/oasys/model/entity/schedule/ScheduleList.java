package cn.gson.oasys.model.entity.schedule;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "aoa_schedule_list")
public class ScheduleList {

	
	@Id
	@Column(name = "rc_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long rcId;	//日程id
	
	@Column(name = "type_id")
	private Long typeId;	//类型id
	
	@Column(name = "status_id")
	private Long statusId;	//状态id
	
	@Column(name = "start_time")
	private Date startTime;	//开始时间
	
	@Column(name = "end_time")
	private Date endTime;	//结束时间
	
	@Column(name = "create_time")
	private Date createTime;	//开始时间
	
	private String title;	//日程标题
	
	@Column(name = "miaoshu")
	private String describe;	//日程描述
	
	@Column(name = "user_id")
	private Long userId;	//关联user表 
	
	@Column(name = "is_remind")
	private Integer isRemind;
	
	/**
	 * 多对多关系
	 * 
	 */

	public ScheduleList() {

	}

	public Long getRcId() {
		return rcId;
	}

	public void setRcId(Long rcId) {
		this.rcId = rcId;
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

	public Date getStartTime() {
		return startTime;
	}

	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}

	public Date getEndTime() {
		return endTime;
	}

	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	

	
	

	public String getDescribe() {
		return describe;
	}

	public void setDescribe(String describe) {
		this.describe = describe;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public Integer getIsRemind() {
		return isRemind;
	}

	public void setIsRemind(Integer isRemind) {
		this.isRemind = isRemind;
	}
	
	@Override
	public String toString() {
		return "ScheduleList [rcId=" + rcId + ", typeId=" + typeId + ", statusId=" + statusId + ", startTime="
				+ startTime + ", endTime=" + endTime + ", createTime=" + createTime + ", title=" + title
				+ ", describe=" + describe + ", userId=" + userId + ", isRemind=" + isRemind + "]";
	}

	public ScheduleList(Long rcId, Long typeId, Long statusId, Date startTime, Date endTime, Date createTime,
			String title, String describe, Long userId, Integer isRemind) {
		super();
		this.rcId = rcId;
		this.typeId = typeId;
		this.statusId = statusId;
		this.startTime = startTime;
		this.endTime = endTime;
		this.createTime = createTime;
		this.title = title;
		this.describe = describe;
		this.userId = userId;
		this.isRemind = isRemind;
	}

	
	
	
	
	
	
	
}
