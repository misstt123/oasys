package cn.gson.oasys.model.entity.process;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

import cn.gson.oasys.model.entity.user.User;

@Entity
@Table(name="aoa_notepaper")
/**
 * 便签表
 * @author 宋佳
 *
 */
public class Notepaper {
	
	
	@Id
	@Column(name="notepaper_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long  notepaperId;			//主键id
	
	private String title;				//便签标题
	
	@Column(columnDefinition="text")	//便签内容
	private String concent;
	
	
	@ManyToOne
	@JoinColumn(name="notepaper_user_id")
	//demo
	@JsonIgnore
	private User userId;				//编写便签的用户
	
	@Column(name="create_time")
	private Date createTime;			//便签创建时间

	public Long getNotepaperId() {
		return notepaperId;
	}

	public void setNotepaperId(Long notepaperId) {
		this.notepaperId = notepaperId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getConcent() {
		return concent;
	}

	public void setConcent(String concent) {
		this.concent = concent;
	}

	public User getUserId() {
		return userId;
	}

	public void setUserId(User userId) {
		this.userId = userId;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	@Override
	public String toString() {
		return "Notepaper [notepaperId=" + notepaperId + ", title=" + title + ", concent=" + concent + ", createTime="
				+ createTime + "]";
	}
	
	
	
	
}
