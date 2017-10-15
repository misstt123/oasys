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

import cn.gson.oasys.model.entity.note.Attachment;
import cn.gson.oasys.model.entity.user.User;

@Entity
@Table(name="aoa_ProcessList")
//主表
public class ProcessList{
	
	@Id
	@Column(name="process_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long processId;
	
	@Column(name="type_name")
	private String typeNmae;			//流程申请类型 
	
	@Column(name="status_id")
	private Long statusId;			//流程审核状态 id
	
	@Column(name="deeply_id")
	private Long deeply;    //紧急程度
	
	@Column(name="process_name")
	private String processName;		//标题
	
	@Column(name="process_des",columnDefinition="text")
	private String processDescribe;	//流程申请原因内容
	
	@ManyToOne
	@JoinColumn(name="process_user_id")
	private User userId;			//流程申请人
	
	@Column(name="apply_time")
	private Date applyTime;			//流程申请时间
	
	@Column(name="is_checked")
	private Boolean  rejected=false;		//流程是否被驳回
	
	@Column(name="start_time")
	private Date startTime;			//流程开始时间
	
	@Column(name="end_time")
	private Date endTime;			//流程结束时间
	
	@Column(name="procsee_days")
	private Double procseeDays;		//流程总天数
	
	@ManyToOne
	@JoinColumn(name="pro_file_id")
	private Attachment proFileid;   //流程附件id
	
	private String shenuser;
	
	
	
	public String getShenuser() {
		return shenuser;
	}

	public void setShenuser(String shenuser) {
		this.shenuser = shenuser;
	}

	public Long getProcessId() {
		return processId;
	}

	public void setProcessId(Long processId) {
		this.processId = processId;
	}

	public String getTypeNmae() {
		return typeNmae;
	}

	public void setTypeNmae(String typeNmae) {
		this.typeNmae = typeNmae;
	}

	public Long getStatusId() {
		return statusId;
	}

	public void setStatusId(Long statusId) {
		this.statusId = statusId;
	}

	public Long getDeeply() {
		return deeply;
	}

	public void setDeeply(Long deeply) {
		this.deeply = deeply;
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

	public Boolean getRejected() {
		return rejected;
	}

	public void setRejected(Boolean rejected) {
		this.rejected = rejected;
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

	public Double getProcseeDays() {
		return procseeDays;
	}

	public void setProcseeDays(Double procseeDays) {
		this.procseeDays = procseeDays;
	}

	public Attachment getProFileid() {
		return proFileid;
	}

	public void setProFileid(Attachment proFileid) {
		this.proFileid = proFileid;
	}

	@Override
	public String toString() {
		return "ProcessList [processId=" + processId + ", typeNmae=" + typeNmae + ", statusId=" + statusId + ", deeply="
				+ deeply + ", processName=" + processName + ", processDescribe=" + processDescribe + ", applyTime="
				+ applyTime + ", rejected=" + rejected + ", startTime=" + startTime + ", endTime=" + endTime
				+ ", procseeDays=" + procseeDays + ", shenuser=" + shenuser + "]";
	}

	



	
	
	
	
	
}
