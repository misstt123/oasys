package cn.gson.oasys.model.entity.notice;

import javax.persistence.*;

import cn.gson.oasys.model.entity.user.User;

/**
 * 通知与用户中间关联表，多一个字段，是否已读
 * 
 * @author luoxiang
 *
 */
@Entity
@Table(name = "notice_user_relation")
public class NoticeUserRelation {

	@Id
	@Column(name = "relatin_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long noticeUserRelatinId;	//用户与通知中间关联表主键id


	@ManyToOne
	@JoinColumn(name = "relatin_notice_id")
	private NoticesList noticeId;				//通知id

	
	@ManyToOne
	@JoinColumn(name = "relatin_user_id")
	private User userId;				//用户id
	
	@Column(name = "is_read")
	private Integer isRead;				//此条通知该用户是否一已读
	
	public NoticeUserRelation() {}

	public Long getNoticeUserRelatinId() {
		return noticeUserRelatinId;
	}

	public void setNoticeUserRelatinId(Long noticeUserRelatinId) {
		this.noticeUserRelatinId = noticeUserRelatinId;
	}

	public NoticesList getNoticeId() {
		return noticeId;
	}

	public void setNoticeId(NoticesList noticeId) {
		this.noticeId = noticeId;
	}

	public User getUserId() {
		return userId;
	}

	public void setUserId(User userId) {
		this.userId = userId;
	}

	public Integer getIsRead() {
		return isRead;
	}

	public void setIsRead(Integer isRead) {
		this.isRead = isRead;
	}

	@Override
	public String toString() {
		return "NoticeUserRelation [noticeUserRelatinId=" + noticeUserRelatinId + ", isRead=" + isRead + "]";
	}

	

}
