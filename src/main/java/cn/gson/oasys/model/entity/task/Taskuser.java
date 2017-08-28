package cn.gson.oasys.model.entity.task;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="aoa_task_user")
//任务接收人联系表
public class Taskuser {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="pk_id")
	private Long pkId;//任务接收人主键id
	
	@Column(name="task_id")
	private Long taskId;//任务id外键
	
	@Column(name="user_id")
	private Long userId;//接收人id外键
	
	@Column(name="status_id")
	private Long statusId;//任务状态id

	public Long getPkId() {
		return pkId;
	}

	public void setPkId(Long pkId) {
		this.pkId = pkId;
	}

	public Long getTaskId() {
		return taskId;
	}

	public void setTaskId(Long taskId) {
		this.taskId = taskId;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public Long getStatusId() {
		return statusId;
	}

	public void setStatusId(Long statusId) {
		this.statusId = statusId;
	}

	@Override
	public String toString() {
		return "Taskuser [pkId=" + pkId + ", taskId=" + taskId + ", userId=" + userId + ", statusId=" + statusId + "]";
	}

	public Taskuser(Long taskId, Long userId, Long statusId) {
		super();
		this.taskId = taskId;
		this.userId = userId;
		this.statusId = statusId;
	}
	
	
	
	
}
