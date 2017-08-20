package cn.gson.oasys.model.entity.discuss;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 用户id
 * 讨论id
 * 没有连接外键
 * @author admin
 * 回复表
 */
@Entity
@Table(name="aoa_reply_list")
public class Reply {

	@Id
	@Column(name="reply_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long replyId;      
	
	@Column(name="replay_time")
	private Date replayTime;     //回复时间
	
	private Date content;     //内容

	public Long getReplyId() {
		return replyId;
	}

	public void setReplyId(Long replyId) {
		this.replyId = replyId;
	}

	public Date getReplayTime() {
		return replayTime;
	}

	public void setReplayTime(Date replayTime) {
		this.replayTime = replayTime;
	}

	public Date getContent() {
		return content;
	}

	public void setContent(Date content) {
		this.content = content;
	}

	@Override
	public String toString() {
		return "Reply [replyId=" + replyId + ", replayTime=" + replayTime + ", content=" + content + "]";
	}

	public Reply(Long replyId, Date replayTime, Date content) {
		super();
		this.replyId = replyId;
		this.replayTime = replayTime;
		this.content = content;
	}

	public Reply() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	

}
