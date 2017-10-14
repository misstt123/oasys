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

import cn.gson.oasys.model.entity.user.User;

@Table
@Entity(name="aoa_resign")
//离职表
public class Resign {
	
	@Id
	@Column(name="resign_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long resignId;
	
	private String suggest;//申请人的意见及建议
	
	@Column(name="is_finish")
	private Boolean finish=false;//是否还有费用报销未完成
	
	@OneToOne
	@JoinColumn(name="hand_user")
	private User  handUser; //工作交接人员
	
	private String nofinish;//未完成事宜
	
	@Column(name="financial_advice")
	private String financialAdvice;//财务部意见及说明
	
	@Column(name="personnel_advice")
	private String personnelAdvice;//人事部意见及说明
	
	@Column(name="manager_advice")
	private String managerAdvice;//经理意见及说明
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="pro_id")
	private ProcessList proId;
	
	@Transient
	private String nameuser;//审核人员
	
	@Transient
	private String handuser;//交接人员
	
	

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

	public String getHanduser() {
		return handuser;
	}

	public void setHanduser(String handuser) {
		this.handuser = handuser;
	}

	public ProcessList getProId() {
		return proId;
	}

	public void setProId(ProcessList proId) {
		this.proId = proId;
	}

	public Long getResignId() {
		return resignId;
	}

	public void setResignId(Long resignId) {
		this.resignId = resignId;
	}

	public String getSuggest() {
		return suggest;
	}

	public void setSuggest(String suggest) {
		this.suggest = suggest;
	}

	public Boolean getFinish() {
		return finish;
	}

	public void setFinish(Boolean finish) {
		this.finish = finish;
	}

	public User getHandUser() {
		return handUser;
	}

	public void setHandUser(User handUser) {
		this.handUser = handUser;
	}

	public String getNofinish() {
		return nofinish;
	}

	public void setNofinish(String nofinish) {
		this.nofinish = nofinish;
	}

	public String getFinancialAdvice() {
		return financialAdvice;
	}

	public void setFinancialAdvice(String financialAdvice) {
		this.financialAdvice = financialAdvice;
	}

	public String getPersonnelAdvice() {
		return personnelAdvice;
	}

	public void setPersonnelAdvice(String personnelAdvice) {
		this.personnelAdvice = personnelAdvice;
	}

	@Override
	public String toString() {
		return "Resign [resignId=" + resignId + ", suggest=" + suggest + ", finish=" + finish + ", handUser=" + handUser
				+ ", nofinish=" + nofinish + ", financialAdvice=" + financialAdvice + ", personnelAdvice="
				+ personnelAdvice + ", managerAdvice=" + managerAdvice + ", nameuser=" + nameuser + ", handuser="
				+ handuser + "]";
	}

	
	

}
