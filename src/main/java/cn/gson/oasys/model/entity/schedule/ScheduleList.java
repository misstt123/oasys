package cn.gson.oasys.model.entity.schedule;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonIgnore;

import cn.gson.oasys.model.entity.user.User;

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
	@DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
	private Date createTime = new Date();	//发布时间
	
	private String title;	//日程标题
	
	@Column(name = "miaoshu")
	private String describe;	//日程描述

	@Column(name = "is_remind")
	private Boolean isRemind = false;	//是否提醒
	
	@Transient
	private String username;
	
	private Boolean isreminded = false;
	
	@ManyToOne
	@JsonIgnore
	@JoinColumn(name = "user_id")
	private User user;			//日程所属人
	
	@ManyToMany
	@JsonIgnore
	@JoinTable(
		name = "aoa_schedule_user",			//日程联系人关联表
		joinColumns = {
			@JoinColumn(name = "rcid")
		},
		inverseJoinColumns = {
			@JoinColumn(name = "user_id")
		})
	private List<User> users;	//联系人集合

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

	public Boolean getIsRemind() {
		return isRemind;
	}

	public void setIsRemind(Boolean isRemind) {
		this.isRemind = isRemind;
	}
	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public List<User> getUsers() {
		return users;
	}

	public void setUsers(List<User> users) {
		this.users = users;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}
	
	public Boolean getIsreminded() {
		return isreminded;
	}

	public void setIsreminded(Boolean isreminded) {
		this.isreminded = isreminded;
	}

	@Override
	public String toString() {
		return "ScheduleList [rcId=" + rcId + ", typeId=" + typeId + ", statusId=" + statusId + ", startTime="
				+ startTime + ", endTime=" + endTime + ", createTime=" + createTime + ", title=" + title + ", describe="
				+ describe + ", isRemind=" + isRemind + ", username=" + username + ", isreminded=" + isreminded + "]";
	}
	
}
