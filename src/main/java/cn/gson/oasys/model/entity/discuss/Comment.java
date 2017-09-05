package cn.gson.oasys.model.entity.discuss;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.apache.ibatis.annotations.Many;

import cn.gson.oasys.model.entity.user.User;

/**
 * 用户id
 * 回复id
 * 没有连接外键
 * 评论表
 * @author admin
 *
 */
@Entity
@Table(name="aoa_comment_list")
public class Comment {
	@Id
	@Column(name="comment_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long commentId; 
	
	private Date time; //发布时间
	
	private String comment;//发布内容
	
	@ManyToOne
	@JoinColumn(name = "comment_user_id")
	private User user;
	
	
	@ManyToOne
	@JoinColumn(name = "reply_id")
	private Reply reply;
	
	
	public Long getCommentId() {
		return commentId;
	}

	public void setCommentId(Long commentId) {
		this.commentId = commentId;
	}

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}
	

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@Override
	public String toString() {
		return "Comment [commentId=" + commentId + ", time=" + time + ", comment=" + comment + "]";
	}

	public Comment(Long commentId, Date time, String comment) {
		super();
		this.commentId = commentId;
		this.time = time;
		this.comment = comment;
	}

	public Comment() {
		super();
		// TODO Auto-generated constructor stub
	} 
	
	
}
