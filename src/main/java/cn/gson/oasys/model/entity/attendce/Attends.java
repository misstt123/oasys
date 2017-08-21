package cn.gson.oasys.model.entity.attendce;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 状态id
 * 类型id
 * 用户id
 * 外键没有连接
 * 
 * 考勤表
 * @author admin
 *
 */
@Entity
@Table(name="aoa_attends_list")
public class Attends {

	@Id
	@Column(name="attends_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long attendsId; 
	
	@Column(name="attends_time")
	private Date attendsTime;   //考勤时间
	
	@Column(name="attends_ip")
	private Long attendsIp;     //登陆ip
	
	@Column(name="attends_remark")
	private Long attendsRemark;  //考勤备注

	public Long getAttendsId() {
		return attendsId;
	}

	public void setAttendsId(Long attendsId) {
		this.attendsId = attendsId;
	}

	public Date getAttendsTime() {
		return attendsTime;
	}

	public void setAttendsTime(Date attendsTime) {
		this.attendsTime = attendsTime;
	}

	public Long getAttendsIp() {
		return attendsIp;
	}

	public void setAttendsIp(Long attendsIp) {
		this.attendsIp = attendsIp;
	}

	public Long getAttendsRemark() {
		return attendsRemark;
	}

	public void setAttendsRemark(Long attendsRemark) {
		this.attendsRemark = attendsRemark;
	}

	@Override
	public String toString() {
		return "Attends [attendsId=" + attendsId + ", attendsTime=" + attendsTime + ", attendsIp=" + attendsIp
				+ ", attendsRemark=" + attendsRemark + "]";
	}

	public Attends(Long attendsId, Date attendsTime, Long attendsIp, Long attendsRemark) {
		super();
		this.attendsId = attendsId;
		this.attendsTime = attendsTime;
		this.attendsIp = attendsIp;
		this.attendsRemark = attendsRemark;
	}

	public Attends() {
		super();
		// TODO Auto-generated constructor stub
	} 
	
	
	
}
