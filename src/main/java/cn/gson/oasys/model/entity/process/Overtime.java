package cn.gson.oasys.model.entity.process;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

@Table
@Entity(name="aoa_overtime")
//加班表
public class Overtime {

	@Id
	@Column(name="overtime_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long overtimeId;
	
	private Long typeId; //加班类型
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="pro_id")
	private ProcessList proId;
	
	@Column(name="personnel_advice")
	private String personnelAdvice;//人事部意见及说明
	
	@Column(name="manager_advice")
	private String managerAdvice;//经理意见及说明
	
	@Transient
	private String nameuser;
	
	

	public String getNameuser() {
		return nameuser;
	}

	public void setNameuser(String nameuser) {
		this.nameuser = nameuser;
	}

	public Long getOvertimeId() {
		return overtimeId;
	}

	public void setOvertimeId(Long overtimeId) {
		this.overtimeId = overtimeId;
	}

	public Long getTypeId() {
		return typeId;
	}

	public void setTypeId(Long typeId) {
		this.typeId = typeId;
	}

	public ProcessList getProId() {
		return proId;
	}

	public void setProId(ProcessList proId) {
		this.proId = proId;
	}
	
	

	public String getPersonnelAdvice() {
		return personnelAdvice;
	}

	public void setPersonnelAdvice(String personnelAdvice) {
		this.personnelAdvice = personnelAdvice;
	}

	public String getManagerAdvice() {
		return managerAdvice;
	}

	public void setManagerAdvice(String managerAdvice) {
		this.managerAdvice = managerAdvice;
	}

	@Override
	public String toString() {
		return "Overtime [overtimeId=" + overtimeId + ", typeId=" + typeId + ", personnelAdvice=" + personnelAdvice
				+ ", managerAdvice=" + managerAdvice + ", nameuser=" + nameuser + "]";
	}

	

	
	
	
}
