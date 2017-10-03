package cn.gson.oasys.model.entity.process;

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

@Entity
@Table(name="aoa_evectionmoney")
//出差费用申请表
public class EvectionMoney {

	@Id
	@Column(name="evectionmoney_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long evectionmoneyId;
	
	private double money; //申请总金额
	
	private String name; //关联客户
	
	@Column(name="manager_advice")
	private String managerAdvice;//经理意见及说明
	
	@Column(name="financial_advice")
	private String financialAdvice;//财务部意见及说明
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="pro_id")
	private ProcessList proId;
	
	@OneToMany(cascade=CascadeType.ALL,mappedBy="evection")
	List<Traffic> traffic;
	
	@OneToMany(cascade=CascadeType.ALL,mappedBy="evemoney")
	List<Stay> stay;
}
