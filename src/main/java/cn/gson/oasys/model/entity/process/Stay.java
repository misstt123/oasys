package cn.gson.oasys.model.entity.process;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import cn.gson.oasys.model.entity.user.User;

@Entity
@Table(name="aoa_stay")
//住宿申请表
public class Stay {

	@Id
	@Column(name="stay_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long stayId;
	
	@OneToOne
	@JoinColumn(name="user_name")
	private User user;//出差人员
	
	@Column(name="stay_time")
	private Date stayTime;//入住日期
	
	@Column(name="leave_time")
	private Date leaveTime;//离店日期
	
	@Column(name="stay_city")
	private String stayCity;//入住城市
	
	@Column(name="hotel_name")
	private String hotelName;//入住酒店
	
	@Column(name="day")
	private Integer day;//入住天数
	
	@Column(name="stay_money")
	private Double stayMoney;//酒店标准
	
	@ManyToOne()
	@JoinColumn(name="evemoney_id")
	private  EvectionMoney  evemoney;
	
	@Transient
	private String nameuser;
	
	

	public String getNameuser() {
		return nameuser;
	}

	public void setNameuser(String nameuser) {
		this.nameuser = nameuser;
	}

	public Long getStayId() {
		return stayId;
	}

	public void setStayId(Long stayId) {
		this.stayId = stayId;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Date getStayTime() {
		return stayTime;
	}

	public void setStayTime(Date stayTime) {
		this.stayTime = stayTime;
	}

	public Date getLeaveTime() {
		return leaveTime;
	}

	public void setLeaveTime(Date leaveTime) {
		this.leaveTime = leaveTime;
	}

	public String getStayCity() {
		return stayCity;
	}

	public void setStayCity(String stayCity) {
		this.stayCity = stayCity;
	}

	public String getHotelName() {
		return hotelName;
	}

	public void setHotelName(String hotelName) {
		this.hotelName = hotelName;
	}

	public Integer getDay() {
		return day;
	}

	public void setDay(Integer day) {
		this.day = day;
	}

	public Double getStayMoney() {
		return stayMoney;
	}

	public void setStayMoney(Double stayMoney) {
		this.stayMoney = stayMoney;
	}

	public EvectionMoney getEvemoney() {
		return evemoney;
	}

	public void setEvemoney(EvectionMoney evemoney) {
		this.evemoney = evemoney;
	}

	@Override
	public String toString() {
		return "Stay [stayId=" + stayId + ", stayTime=" + stayTime + ", leaveTime=" + leaveTime + ", stayCity="
				+ stayCity + ", hotelName=" + hotelName + ", day=" + day + ", stayMoney=" + stayMoney + ", nameuser="
				+ nameuser + "]";
	}

	
	
}
