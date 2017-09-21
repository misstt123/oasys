package cn.gson.oasys.model.entity.plan;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotBlank;

import cn.gson.oasys.model.entity.user.User;

@Entity
@Table(name="aoa_plan_list")
/**
 * 计划表
 * @author 宋佳
 *
 */
public class Plan {

	@Id
	@Column(name="plan_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long planId; 
	
	
	@Column(name="type_id")
	@NotNull
	private Long typeId; //类型id
	
	@Column(name="status_id")
	@NotNull
	private Long statusId; //状态id
	
	
	@Column(name="attach_id")
	private long attachId;   //附件id
	
	@Column(name="start_time")
	@NotNull
	private Date startTime;   //开始时间
	
	@Column(name="end_time")
	@NotNull
	private Date endTime;   //结束时间
	
	@Column(name="create_time")
	@NotNull
	private Date createTime;   //记录创建时间
	
	@NotBlank
	@Length(min=0,max=50)
	private String title;   //标题
	
	private String label;   //标签
	
	@Column(name="plan_content")
	@NotBlank
	private String planContent;   //计划内容
	
	@Column(name="plan_summary")
	private String planSummary;   //计划总结
	
	@Column(name="plan_comment")
	private String planComment;   //计划评论
    
	
	
	@ManyToOne
	@JoinColumn(name="plan_user_id")
	private User user; //用户计划外键
	
	public Plan() {}

	
	
	public long getAttachId() {
		return attachId;
	}



	public void setAttachId(long attachId) {
		this.attachId = attachId;
	}



	public Long getPlanId() {
		return planId;
	}

	public void setPlanId(Long planId) {
		this.planId = planId;
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

	public String getLabel() {
		return label;
	}

	public void setLabel(String label) {
		this.label = label;
	}

	public String getPlanContent() {
		return planContent;
	}

	public void setPlanContent(String planContent) {
		this.planContent = planContent;
	}

	public String getPlanSummary() {
		return planSummary;
	}

	public void setPlanSummary(String planSummary) {
		this.planSummary = planSummary;
	}

	public String getPlanComment() {
		return planComment;
	}

	public void setPlanComment(String planComment) {
		this.planComment = planComment;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}



	@Override
	public String toString() {
		return "Plan [planId=" + planId + ", typeId=" + typeId + ", statusId=" + statusId + ", startTime=" + startTime
				+ ", endTime=" + endTime + ", createTime=" + createTime + ", title=" + title + ", label=" + label
				+ ", planContent=" + planContent + ", planSummary=" + planSummary + ", planComment=" + planComment
				+ "]";
	}
	
	
	
	
	
}
