package cn.gson.oasys.model.entity.user;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "aoa_user_log")
public class UserLog {

	@Id
	@Column(name = "log_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;	//logid
	
	@Column(name = "user_id")
	private Long userId;	//日志所属人  manytoone 外键 user_id
	
	@Column(name = "ip_addr")
	private String ipAddr;	//ip地址
	
	private String title;	//操作菜单
	
	private String url;		//操作菜单url
	
	@Column(name = "log_time")
	private Date logTime;	//日志记录时间

	public UserLog() {

	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public String getIpAddr() {
		return ipAddr;
	}

	public void setIpAddr(String ipAddr) {
		this.ipAddr = ipAddr;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public Date getLogTime() {
		return logTime;
	}

	public void setLogTime(Date logTime) {
		this.logTime = logTime;
	}

	@Override
	public String toString() {
		return "UserLog [id=" + id + ", userId=" + userId + ", ipAddr=" + ipAddr + ", title=" + title + ", url=" + url
				+ ", logTime=" + logTime + "]";
	}

}
