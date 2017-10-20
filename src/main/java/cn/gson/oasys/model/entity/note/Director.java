package cn.gson.oasys.model.entity.note;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;


import cn.gson.oasys.model.entity.user.User;

/**
 * user_id
 * 外键没有连
 * @author admin
 *---通讯录表----
 */
@Entity
@Table(name="aoa_director")
public class Director {

	@Id
	@Column(name="director_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long  directorId; //主键
	
	@Column(name="user_name")
	private String userName;	//通讯录名称
	
	private String pinyin;		//通讯录名称的拼音
	
	private String  sex;		//性别
	
	@Column(name="phone_number")
	private String  phoneNumber;  //电话号码
	
	@Column(name="image_path")
	private Long  attachment;	 //头像路径
	
	private String  remark;     //备注
	
	private String  address;	//用户住址
	
	@OneToOne
	@JoinColumn(name = "user_id")
	private User myuser;		//由哪个用户创建的
	
	private String  email;		//邮件
	
	@Column(name="company_number")
	private String companyNumber;	//公司号码
	
	private String companyname;		//公司名称
	
	
	
	public Director(Long directorId, String userName, String pinyin, String sex, String phoneNumber, Long attachment,
			String remark, String address, User myuser, String email) {
		super();
		this.directorId = directorId;
		this.pinyin = pinyin;
		this.sex = sex;
		this.phoneNumber = phoneNumber;
		this.attachment = attachment;
		this.remark = remark;
		this.address = address;
		this.myuser = myuser;
		this.email = email;
	}

	public Director() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Long getDirectorId() {
		return directorId;
	}
	
	

	public String getCompanyname() {
		return companyname;
	}

	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}

	public String getCompanyNumber() {
		return companyNumber;
	}

	public void setCompanyNumber(String companyNumber) {
		this.companyNumber = companyNumber;
	}

	public void setDirectorId(Long directorId) {
		this.directorId = directorId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPinyin() {
		return pinyin;
	}

	public void setPinyin(String pinyin) {
		this.pinyin = pinyin;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	

	public Long getAttachment() {
		return attachment;
	}

	public void setAttachment(Long attachment) {
		this.attachment = attachment;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}


	public User getMyuser() {
		return myuser;
	}

	public void setMyuser(User myuser) {
		this.myuser = myuser;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "Director [directorId=" + directorId + ", userName=" + userName + ", pinyin=" + pinyin + ", sex=" + sex
				+ ", phoneNumber=" + phoneNumber + ", attachment=" + attachment + ", remark=" + remark + ", address="
				+ ", companyNumber=" + companyNumber + ",companyname="+companyname+"]";
	}


	
	
	

	
}
