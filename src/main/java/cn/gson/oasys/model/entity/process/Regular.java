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
@Entity(name="aoa_regular")
//转正表
public class Regular {

	@Id
	@Column(name="regular_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long regularId;
	
	private String experience;//试用期/实习期心得体会
	
	private String understand;//对本岗位职员的要求的理解
	
	private String  pullulate;//试用期/实习期在哪些方面有了成长
	
	private String deficiency;//目前存在的不足
	
	private String dobetter;//如何在本岗位作得更好
	
	private String advice;//对公司产品的意见及建议
	
	private Double days;//实习天数
	
	@Column(name="personnel_advice")
	private String personnelAdvice;//人事部意见及说明
	
	@Column(name="manager_advice")
	private String managerAdvice;//经理意见及说明
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="pro_id")
	private ProcessList proId;
	
	@Transient
	private String nameuser;
	
	public Double getDays() {
		return days;
	}

	public void setDays(Double days) {
		this.days = days;
	}
	
	public String getManagerAdvice() {
		return managerAdvice;
	}

	public void setManagerAdvice(String managerAdvice) {
		this.managerAdvice = managerAdvice;
	}

	public String getNameuser() {
		return nameuser;
	}

	public void setNameuser(String nameuser) {
		this.nameuser = nameuser;
	}

	public ProcessList getProId() {
		return proId;
	}

	public void setProId(ProcessList proId) {
		this.proId = proId;
	}

	public Long getRegularId() {
		return regularId;
	}

	public void setRegularId(Long regularId) {
		this.regularId = regularId;
	}

	public String getExperience() {
		return experience;
	}

	public void setExperience(String experience) {
		this.experience = experience;
	}

	public String getUnderstand() {
		return understand;
	}

	public void setUnderstand(String understand) {
		this.understand = understand;
	}

	public String getPullulate() {
		return pullulate;
	}

	public void setPullulate(String pullulate) {
		this.pullulate = pullulate;
	}

	public String getDeficiency() {
		return deficiency;
	}

	public void setDeficiency(String deficiency) {
		this.deficiency = deficiency;
	}

	public String getDobetter() {
		return dobetter;
	}

	public void setDobetter(String dobetter) {
		this.dobetter = dobetter;
	}

	public String getAdvice() {
		return advice;
	}

	public void setAdvice(String advice) {
		this.advice = advice;
	}

	public String getPersonnelAdvice() {
		return personnelAdvice;
	}

	public void setPersonnelAdvice(String personnelAdvice) {
		this.personnelAdvice = personnelAdvice;
	}

	@Override
	public String toString() {
		return "Regular [regularId=" + regularId + ", experience=" + experience + ", understand=" + understand
				+ ", pullulate=" + pullulate + ", deficiency=" + deficiency + ", dobetter=" + dobetter + ", advice="
				+ advice + ", days=" + days + ", personnelAdvice=" + personnelAdvice + ", managerAdvice="
				+ managerAdvice + ", nameuser=" + nameuser + "]";
	}


	


	

	
	
	
	
	
	
}
