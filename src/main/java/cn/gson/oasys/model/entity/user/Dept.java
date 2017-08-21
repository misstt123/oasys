package cn.gson.oasys.model.entity.user;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
/**
 * 部门实体类
 * @author Administrator
 *
 */
@Entity
@Table(name = "aoa_dept")
public class Dept {
	@Id
	@Column(name = "dept_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long deptId;	//部门id
	
	@Column(name = "dept_name")
	private String deptName;	//部门名字  非空 唯一
	
	@Column(name = "dept_tel")
	private String deptTel;		//部门电话  正则校验
	
	@Column(name = "dept_fax")
	private String deptFax;		//部门传真
	
	private String email;		//部门email
	
	@Column(name = "dept_addr")
	private String deptAddr;	//部门地址
	
	@Column(name = "start_time")
	private Date startTime;		//部门上班时间
	
	@Column(name = "end_time")
	private Date endTime;		//部门下班时间

	public Dept() {

	}

	public Long getDeptId() {
		return deptId;
	}

	public void setDeptId(Long deptId) {
		this.deptId = deptId;
	}

	public String getDeptName() {
		return deptName;
	}

	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}

	public String getDeptTel() {
		return deptTel;
	}

	public void setDeptTel(String deptTel) {
		this.deptTel = deptTel;
	}

	public String getDeptFax() {
		return deptFax;
	}

	public void setDeptFax(String deptFax) {
		this.deptFax = deptFax;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getDeptAddr() {
		return deptAddr;
	}

	public void setDeptAddr(String deptAddr) {
		this.deptAddr = deptAddr;
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

	@Override
	public String toString() {
		return "Dept [deptId=" + deptId + ", deptName=" + deptName + ", deptTel=" + deptTel + ", deptFax=" + deptFax
				+ ", email=" + email + ", deptAddr=" + deptAddr + ", startTime=" + startTime + ", endTime=" + endTime
				+ "]";
	}
	
	
}
