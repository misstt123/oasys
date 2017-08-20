package cn.gson.oasys.model.entity.plan;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
/**
 * 用户id
 * 状态id
 * 类型id
 * 没有连接外键
 * @author admin
 *
 */
@Entity
@Table(name="aoa_plan_list")
public class Plan {

	@Id
	@Column(name="plan_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long planId; 
	
	@Column(name="start_time")
	private Date startTime;   //开始时间
	
	@Column(name="end_time")
	private Date endTime;   //结束时间
	
	@Column(name="create_time")
	private Date createTime;   //记录创建时间
	
	private String title;   //标题
	
	private String label;   //标签
	
	@Column(name="plan_content")
	private String planContent;   //计划内容
	
	@Column(name="plan_summary")
	private String planSummary;   //计划总结
	
	@Column(name="plan_comment")
	private String planComment;   //计划评论

	public Long getPlanId() {
		return planId;
	}

	public void setPlanId(Long planId) {
		this.planId = planId;
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

	@Override
	public String toString() {
		return "Plan [planId=" + planId + ", startTime=" + startTime + ", endTime=" + endTime + ", createTime="
				+ createTime + ", title=" + title + ", label=" + label + ", planContent=" + planContent
				+ ", planSummary=" + planSummary + ", planComment=" + planComment + "]";
	}

	public Plan(Long planId, Date startTime, Date endTime, Date createTime, String title, String label,
			String planContent, String planSummary, String planComment) {
		super();
		this.planId = planId;
		this.startTime = startTime;
		this.endTime = endTime;
		this.createTime = createTime;
		this.title = title;
		this.label = label;
		this.planContent = planContent;
		this.planSummary = planSummary;
		this.planComment = planComment;
	}

	public Plan() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
