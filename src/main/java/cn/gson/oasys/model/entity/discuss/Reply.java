package cn.gson.oasys.model.entity.discuss;

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

import cn.gson.oasys.model.entity.user.User;

/**
 * 用户id
 * 讨论id
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
	
	@ManyToOne
	@JoinColumn(name = "reply_user_id")
	private User user;
	
	@ManyToOne
	@JoinColumn(name = "discuss_id")
	private Discuss discuss;
	
	@ManyToMany
	@JoinTable(
		name = "aoa_love_user",
		joinColumns = {
				@JoinColumn(name = "reply_id")
		},
		inverseJoinColumns = {
				@JoinColumn(name = "user_id")
		}
			)
	private List<User> users;
	
	
	
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

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Discuss getDiscuss() {
		return discuss;
	}

	public void setDiscuss(Discuss discuss) {
		this.discuss = discuss;
	}

	public List<User> getUsers() {
		return users;
	}

	public void setUsers(List<User> users) {
		this.users = users;
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
		
	}

}
