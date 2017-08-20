package cn.gson.oasys.model.entity;

import java.util.Date;

import javax.persistence.*;
/**
 * 备注：position_id	职位
		role_id		角色
		dept_id		部门
	以上三个外键没有完成
 * @author luoxiang
 *
 */
@Entity
@Table(name="aoa_user")
public class User {
	
	@Id
	@Column(name="user_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long userId;		//用户id
	
	@Column(name="user_name")
	private String userName;	//登录用户名
	
	@Column(name="user_tel")
	private String userTel;		//用户电话
	
	@Column(name="real_name")
	private String realName;    //真是姓名
	
	private String eamil;		//
	
	private String address;		//地址
	
	@Column(name="user_edu")
	private String userEdu;		//用户学历
	
	@Column(name="user_school")
	private String school;		//学校
	
	@Column(name="user_idcard")
	private String idCard;		//用户身份证
	
	private String bank;		//银行
	
	private String sex;			//性别
	
	@Column(name="theme_skin")
	private String themeSkin;	//主题皮肤
	
	
	private Date birth;			//生日
	
	@Column(name="user_sign")
	private String userSign;	//用户签名
	
	private String password;	//用户密码
	
	private Float salary;		//用户薪水
	
	@Column(name="img_path")
	private String imgPath;		//用户头像路径
	
	@Column(name="hire_time")
	private Date hireTime;		//入职时间
	
	@Column(name="is_lock")
	private Integer isLock;		//该用户是否被禁用
	
	@Column(name="last_login_ip")
	private String lastLoginIp;	//用户最后登录ip；
	
	@Column(name="last_login_time")
	private Date lastLoginTime;	//最后登录时间
	
	@Column(name="modify_time")
	private Date modifyTime;		//最后修改时间
	
	@Column(name="modify_user_id")
	private Long modifyUserId;	//最后修改此用户的用户id
	
	@Column(name="father_id")
	private Long fatherId;		//上司id

	public User() {}		


	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserTel() {
		return userTel;
	}

	public void setUserTel(String userTel) {
		this.userTel = userTel;
	}

	public String getRealName() {
		return realName;
	}

	public void setRealName(String realName) {
		this.realName = realName;
	}

	public String getEamil() {
		return eamil;
	}

	public void setEamil(String eamil) {
		this.eamil = eamil;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getUserEdu() {
		return userEdu;
	}

	public void setUserEdu(String userEdu) {
		this.userEdu = userEdu;
	}

	public String getSchool() {
		return school;
	}

	public void setSchool(String school) {
		this.school = school;
	}

	public String getIdCard() {
		return idCard;
	}

	public void setIdCard(String idCard) {
		this.idCard = idCard;
	}

	public String getBank() {
		return bank;
	}

	public void setBank(String bank) {
		this.bank = bank;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getThemeSkin() {
		return themeSkin;
	}

	public void setThemeSkin(String themeSkin) {
		this.themeSkin = themeSkin;
	}

	public Date getBirth() {
		return birth;
	}

	public void setBirth(Date birth) {
		this.birth = birth;
	}

	public String getUserSign() {
		return userSign;
	}

	public void setUserSign(String userSign) {
		this.userSign = userSign;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Float getSalary() {
		return salary;
	}

	public void setSalary(Float salary) {
		this.salary = salary;
	}

	public String getImgPath() {
		return imgPath;
	}

	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
	}

	public Date getHireTime() {
		return hireTime;
	}

	public void setHireTime(Date hireTime) {
		this.hireTime = hireTime;
	}

	public Integer getIsLock() {
		return isLock;
	}

	public void setIsLock(Integer isLock) {
		this.isLock = isLock;
	}

	public String getLastLoginIp() {
		return lastLoginIp;
	}

	public void setLastLoginIp(String lastLoginIp) {
		this.lastLoginIp = lastLoginIp;
	}

	public Date getLastLoginTime() {
		return lastLoginTime;
	}

	public void setLastLoginTime(Date lastLoginTime) {
		this.lastLoginTime = lastLoginTime;
	}

	public Date getModifyTime() {
		return modifyTime;
	}

	public void setModifyTime(Date modifyTime) {
		this.modifyTime = modifyTime;
	}

	public Long getModifyUserId() {
		return modifyUserId;
	}

	public void setModifyUserId(Long modifyUserId) {
		this.modifyUserId = modifyUserId;
	}

	public Long getFatherId() {
		return fatherId;
	}

	public void setFatherId(Long fatherId) {
		this.fatherId = fatherId;
	}

	@Override
	public String toString() {
		return "User [userId=" + userId + ", userName=" + userName + ", userTel=" + userTel + ", realName=" + realName
				+ ", eamil=" + eamil + ", address=" + address + ", userEdu=" + userEdu + ", school=" + school
				+ ", idCard=" + idCard + ", bank=" + bank + ", sex=" + sex + ", themeSkin=" + themeSkin + ", birth="
				+ birth + ", userSign=" + userSign + ", password=" + password + ", salary=" + salary + ", imgPath="
				+ imgPath + ", hireTime=" + hireTime + ", isLock=" + isLock + ", lastLoginIp=" + lastLoginIp
				+ ", lastLoginTime=" + lastLoginTime + ", modifyTime=" + modifyTime + ", modifyUserId=" + modifyUserId
				+ ", fatherId=" + fatherId + "]";
	}
	
	
	
	
}
