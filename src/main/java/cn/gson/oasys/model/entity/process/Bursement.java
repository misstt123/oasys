package cn.gson.oasys.model.entity.process;

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import cn.gson.oasys.model.entity.user.User;

@Table
@Entity(name="aoa_bursement")
//费用报销表
public class Bursement {

	@Id
	@Column(name="bursement_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long bursementId;
	
	@OneToOne()
	@JoinColumn(name="user_name")
	private User usermoney;//证明人
	
	private String name;//相关客户
	
	@Column(name="type_id")
	private Long typeId;//报销方式（银行卡，现金，其他）
	
	@OneToOne
	@JoinColumn(name="operation_name")
	private User operation;//报销人员
	
	private Date burseTime;//报销日期
	
	private Integer allinvoices ;//票据总数
	
	@Column(name="manager_advice")
	private String managerAdvice;//经理意见及说明
	
	@Column(name="financial_advice")
	private String financialAdvice;//财务部意见及说明
	
	@Column(name="all_money")
	private Double allMoney;//总计金额
	
	@Transient
	private String username;//审核人员
	
	@Transient
	private String namemoney;//承担主体
	
	@OneToMany(cascade=CascadeType.ALL,mappedBy="burs",orphanRemoval = true)
	List<DetailsBurse>  details;
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="pro_id")
	private ProcessList proId;
	
	
	
	public String getNamemoney() {
		return namemoney;
	}

	public void setNamemoney(String namemoney) {
		this.namemoney = namemoney;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public Long getBursementId() {
		return bursementId;
	}

	public void setBursementId(Long bursementId) {
		this.bursementId = bursementId;
	}

	public User getUsermoney() {
		return usermoney;
	}

	public void setUsermoney(User usermoney) {
		this.usermoney = usermoney;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Long getTypeId() {
		return typeId;
	}

	public void setTypeId(Long typeId) {
		this.typeId = typeId;
	}

	public User getOperation() {
		return operation;
	}

	public void setOperation(User operation) {
		this.operation = operation;
	}

	public Date getBurseTime() {
		return burseTime;
	}

	public void setBurseTime(Date burseTime) {
		this.burseTime = burseTime;
	}

	public Integer getAllinvoices() {
		return allinvoices;
	}

	public void setAllinvoices(Integer allinvoices) {
		this.allinvoices = allinvoices;
	}

	public String getManagerAdvice() {
		return managerAdvice;
	}

	public void setManagerAdvice(String managerAdvice) {
		this.managerAdvice = managerAdvice;
	}

	public String getFinancialAdvice() {
		return financialAdvice;
	}

	public void setFinancialAdvice(String financialAdvice) {
		this.financialAdvice = financialAdvice;
	}

	public Double getAllMoney() {
		return allMoney;
	}

	public void setAllMoney(Double allMoney) {
		this.allMoney = allMoney;
	}

	public List<DetailsBurse> getDetails() {
		return details;
	}

	public void setDetails(List<DetailsBurse> details) {
		this.details = details;
	}

	public ProcessList getProId() {
		return proId;
	}

	public void setProId(ProcessList proId) {
		this.proId = proId;
	}

	@Override
	public String toString() {
		return "Bursement [bursementId=" + bursementId + ", name=" + name + ", typeId=" + typeId + ", burseTime=" + burseTime + ", allinvoices=" + allinvoices + ", managerAdvice="
				+ managerAdvice + ", namemoney=" + namemoney + ", financialAdvice=" + financialAdvice + ", allMoney=" + allMoney + ", username="
				+ username + "]";
	}

	
	
	
}
