package cn.gson.oasys.model.entity.notice;

import javax.persistence.*;

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

	@Column(name = "notice_id")
	private Long noticeId;				//通知id

	@Column(name = "user_id")
	private Long userId;				//用户id
	
	@Column(name = "is_read")
	private Integer isRead;				//此条通知该用户是否一已读
	
	public NoticeUserRelation() {}

	public Long getNoticeUserRelatinId() {
		return noticeUserRelatinId;
	}

	public void setNoticeUserRelatinId(Long noticeUserRelatinId) {
		this.noticeUserRelatinId = noticeUserRelatinId;
	}

	public Long getNoticeId() {
		return noticeId;
	}

	public void setNoticeId(Long noticeId) {
		this.noticeId = noticeId;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
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
		return "NoticeUserRelation [noticeUserRelatinId=" + noticeUserRelatinId + ", noticeId=" + noticeId + ", userId="
				+ userId + ", isRead=" + isRead + "]";
	}
	
	

}
