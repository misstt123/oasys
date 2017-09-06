package cn.gson.oasys.model.entity.process;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import cn.gson.oasys.model.entity.user.User;

@Entity
@Table(name="aoa_ProcessList")
public class ProcessList{
	
	@Id
	@Column(name="process_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long processId;
	
	@Column(name="type_id")
	private Long typeId;			//流程类型 id
	
	@Column(name="status_id")
	private Long statusId;			//流程状态 id
	
	@Column(name="process_name")
	private String processName;		//流程名称
	
	@Column(name="process_describe",columnDefinition="text")
	private String processDescribe;	//流程内容
	
	
	@ManyToOne
	@JoinColumn(name="process_user_id")
	private User userId;			//流程发布人
	
	@Column(name="apply_time")
	private Date applyTime;			//流程发布时间
	
	@Column(name="check_time")
	private Date checkTime;			//流程审核时间
	
	@Column(name="is_checked")
	private String isChecked;		//流程是否别审核
	
	@Column(name="start_time")
	private Date startTime;			//流程开始时间
	
	@Column(name="end_time")
	private Date endTime;			//流程结束时间
	
	@Column(name="procsee_days")
	private Long procseeDays;		//流程总天数

	public Long getProcessId() {
		return processId;
	}

	public void setProcessId(Long processId) {
		this.processId = processId;
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

	public String getProcessName() {
		return processName;
	}

	public void setProcessName(String processName) {
		this.processName = processName;
	}

	public String getProcessDescribe() {
		return processDescribe;
	}

	public void setProcessDescribe(String processDescribe) {
		this.processDescribe = processDescribe;
	}

	public User getUserId() {
		return userId;
	}

	public void setUserId(User userId) {
		this.userId = userId;
	}

	public Date getApplyTime() {
		return applyTime;
	}

	public void setApplyTime(Date applyTime) {
		this.applyTime = applyTime;
	}

	public Date getCheckTime() {
		return checkTime;
	}

	public void setCheckTime(Date checkTime) {
		this.checkTime = checkTime;
	}

	public String getIsChecked() {
		return isChecked;
	}

	public void setIsChecked(String isChecked) {
		this.isChecked = isChecked;
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

	public Long getProcseeDays() {
		return procseeDays;
	}

	public void setProcseeDays(Long procseeDays) {
		this.procseeDays = procseeDays;
	}

	
	public ProcessList() {
		super();
		
	}

	@Override
	public String toString() {
		return "ProcessList [processId=" + processId + ", typeId=" + typeId + ", statusId=" + statusId
				+ ", processName=" + processName + ", processDescribe=" + processDescribe + ", applyTime=" + applyTime
				+ ", checkTime=" + checkTime + ", isChecked=" + isChecked + ", startTime=" + startTime + ", endTime="
				+ endTime + ", procseeDays=" + procseeDays + "]";
	}

	
	
	
	
}
