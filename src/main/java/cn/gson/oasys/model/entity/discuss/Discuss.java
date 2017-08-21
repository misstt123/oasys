package cn.gson.oasys.model.entity.discuss;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
/**
 * 类型id
 * 状态id
 * 用户id
 * 投票id
 * 没有外键
 * 讨论表
 * @author admin
 *
 */
@Entity
@Table(name="aoa_discuss_list")
public class Discuss {
   
	@Id
	@Column(name="discuss_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long discussId; //主键id
	
	@Column(name="create_time")
	private Date createTime; //创建时间
	
	@Column(name="visit_num")
	private Integer visitNum; //访问量
	
	@Column(name="attachment_id")
	private Integer attachmentId;  //附件id没有外键为了查找方便
	
	private String title;    //标题
	
	private String content;   //内容

	public Long getDiscussId() {
		return discussId;
	}

	public void setDiscussId(Long discussId) {
		this.discussId = discussId;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Integer getVisitNum() {
		return visitNum;
	}

	public void setVisitNum(Integer visitNum) {
		this.visitNum = visitNum;
	}

	public Integer getAttachmentId() {
		return attachmentId;
	}

	public void setAttachmentId(Integer attachmentId) {
		this.attachmentId = attachmentId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Override
	public String toString() {
		return "Discuss [discussId=" + discussId + ", createTime=" + createTime + ", visitNum=" + visitNum
				+ ", attachmentId=" + attachmentId + ", title=" + title + ", content=" + content + "]";
	}

	public Discuss(Long discussId, Date createTime, Integer visitNum, Integer attachmentId, String title,
			String content) {
		super();
		this.discussId = discussId;
		this.createTime = createTime;
		this.visitNum = visitNum;
		this.attachmentId = attachmentId;
		this.title = title;
		this.content = content;
	}

	public Discuss() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	
}
