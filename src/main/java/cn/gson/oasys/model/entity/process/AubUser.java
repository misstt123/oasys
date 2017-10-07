package cn.gson.oasys.model.entity.process;

import java.util.Date;



public class AubUser {

	private Long processId;
	
	private String typeNmae;	
	
	private Long deeply;    //紧急程度
	
	private String processName;	
	
	private String userName;//申请人姓名	
	
	private Date applyTime;
	
	private Long statusId;//审核人状态

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

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public Date getApplyTime() {
		return applyTime;
	}

	public void setApplyTime(Date applyTime) {
		this.applyTime = applyTime;
	}

	public Long getStatusId() {
		return statusId;
	}

	public void setStatusId(Long statusId) {
		this.statusId = statusId;
	}

	@Override
	public String toString() {
		return "AubUser [processId=" + processId + ", typeNmae=" + typeNmae + ", deeply=" + deeply + ", processName="
				+ processName + ", userName=" + userName + ", applyTime=" + applyTime + ", statusId=" + statusId + "]";
	}

	public AubUser(Long processId, String typeNmae, Long deeply, String processName, String userName, Date applyTime,
			Long statusId) {
		super();
		this.processId = processId;
		this.typeNmae = typeNmae;
		this.deeply = deeply;
		this.processName = processName;
		this.userName = userName;
		this.applyTime = applyTime;
		this.statusId = statusId;
	}
	
	
}
