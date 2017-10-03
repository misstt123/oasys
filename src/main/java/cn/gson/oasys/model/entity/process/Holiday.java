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

@Table
@Entity(name="aoa_holiday")
//请假表
public class Holiday {

	@Id
	@Column(name="holiday_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long holidayId;
	
	@Column(name="type_id")
	private Long typeId;  //请假类型
	
	@Column(name="leave_days")
	private Integer leaveDays; //请假剩余天数
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="pro_id")
	private ProcessList proId;
	

	public Long getHolidayId() {
		return holidayId;
	}

	public void setHolidayId(Long holidayId) {
		this.holidayId = holidayId;
	}

	public Long getTypeId() {
		return typeId;
	}

	public void setTypeId(Long typeId) {
		this.typeId = typeId;
	}

	public Integer getLeaveDays() {
		return leaveDays;
	}

	public void setLeaveDays(Integer leaveDays) {
		this.leaveDays = leaveDays;
	}

	public ProcessList getProId() {
		return proId;
	}

	public void setProId(ProcessList proId) {
		this.proId = proId;
	}

	@Override
	public String toString() {
		return "Holiday [holidayId=" + holidayId + ", typeId=" + typeId + ", leaveDays=" + leaveDays + "]";
	}

	
	
	
	
	

}
