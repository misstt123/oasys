//package cn.gson.oasys.model.entity.attendce;
//
//import javax.persistence.Column;
//import javax.persistence.Entity;
//import javax.persistence.GeneratedValue;
//import javax.persistence.GenerationType;
//import javax.persistence.Id;
//import javax.persistence.Table;
//
//@Entity
//@Table(name="aoa_user_attendceshow")
//public class Attshow {
//    
//	@Id
//	@Column(name="att_id")
//	@GeneratedValue(strategy=GenerationType.IDENTITY)
//	private Long attId;
//	
//	private String hmString;
//	
//	private String weekofday;
//
//	private String remark;
//
//	public Long getAttid() {
//		return attid;
//	}
//
//	public void setAttid(Long attid) {
//		this.attid = attid;
//	}
//
//	public String getHmString() {
//		return hmString;
//	}
//
//	public void setHmString(String hmString) {
//		this.hmString = hmString;
//	}
//
//	public String getWeekofday() {
//		return weekofday;
//	}
//
//	public void setWeekofday(String weekofday) {
//		this.weekofday = weekofday;
//	}
//
//	public String getRemark() {
//		return remark;
//	}
//
//	public void setRemark(String remark) {
//		this.remark = remark;
//	}
//
//	public Attshow(Long attid, String hmString, String weekofday, String remark) {
//		super();
//		this.attid = attid;
//		this.hmString = hmString;
//		this.weekofday = weekofday;
//		this.remark = remark;
//	}
//
//	public Attshow() {
//		super();
//		// TODO Auto-generated constructor stub
//	}
//
//	@Override
//	public String toString() {
//		return "attshow [attid=" + attid + ", hmString=" + hmString + ", weekofday=" + weekofday + ", remark=" + remark
//				+ "]";
//	}
//	
//	
//	
//}
