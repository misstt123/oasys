package cn.gson.oasys.model.entity.user;

import java.util.Date;
import java.util.List;
import java.util.Set;

import javax.persistence.*;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;
import org.hibernate.validator.constraints.Range;

import cn.gson.oasys.model.entity.note.Director;
import cn.gson.oasys.model.entity.note.Note;
import cn.gson.oasys.model.entity.attendce.Attends;
import cn.gson.oasys.model.entity.discuss.Discuss;
import cn.gson.oasys.model.entity.discuss.Reply;

import cn.gson.oasys.model.entity.role.Role;
import cn.gson.oasys.model.entity.schedule.ScheduleList;
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
	@NotEmpty(message="用户名不能为空")
	private String userName;	//登录用户名
	
	@Column(name="user_tel")
	@NotEmpty(message="电话不能为空")
	private String userTel;		//用户电话
	
	@Column(name="real_name")
	@NotEmpty(message="真实姓名不能为空")
	private String realName;    //真实姓名
	
	private String pinyin;
	
	@NotEmpty(message="邮箱不能为空")
	@Pattern(regexp="^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\\.[a-zA-Z0-9_-]{2,3}){1,2})$",message="请填写正确邮箱号")
	private String eamil;		//邮件
	
	@NotEmpty(message="地址不能为空")
	private String address;		//地址
	
	@Column(name="user_edu")
	@NotEmpty(message="学历不能为空")
	private String userEdu;		//用户学历
	
	
	private Boolean superman=false;
	
	@Column(name="user_school")
	@NotEmpty(message="毕业院校不能为空")
	private String school;		//学校
	
	@Column(name="user_idcard")
	@Pattern(regexp="^(\\d{6})(19|20)(\\d{2})(1[0-2]|0[1-9])(0[1-9]|[1-2][0-9]|3[0-1])(\\d{3})(\\d|X|x)?$",message="请填写正确身份证号")
	private String idCard;		//用户身份证
	
	@NotEmpty(message="卡号不能为空")
	@Length(min=16, max=19,message="银行卡号长度必须在16到19之间!")
	private String bank;		//银行
	
	private String sex;			//性别
	
	@Column(name="theme_skin")
	private String themeSkin;	//主题皮肤
	
	private Date birth;			//生日
	
	@Column(name="user_sign")
	private String userSign;	//用户签名
	
	private String password;	//用户密码
	
	private String salary;		//用户薪水
	
	@Column(name="img_path")
	private String imgPath;		//用户头像路径
	
	@Column(name="hire_time")
	private Date hireTime;		//入职时间
	
	@Column(name="is_lock")
	private Integer isLock=0;		//该用户是否被禁用
	
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
	
	private Integer holiday;   //请假天数

	@ManyToOne()
	@JoinColumn(name = "position_id")
	private Position position;	//外键关联 职位表
	
	@ManyToOne()
	@JoinColumn(name = "dept_id")
	private Dept dept;			//外键关联 部门表
	
	@ManyToOne()
	@JoinColumn(name = "role_id")
	private Role role;			//外键关联 角色表
	

	@ManyToMany(mappedBy = "users")
	private List<ScheduleList> scheduleLists;
	
	@ManyToMany(mappedBy = "users")
	private List<Reply> replys;
	
	@ManyToMany(mappedBy = "users")
	private List<Discuss> discuss;
	
	@ManyToMany(mappedBy = "userss")
	private List<Note> note;

	@OneToMany(mappedBy="user",cascade=CascadeType.ALL,fetch=FetchType.EAGER)
	private Set<Attends> aSet;
	
	
	
	
	public String getPinyin() {
		return pinyin;
	}

	public void setPinyin(String pinyin) {
		this.pinyin = pinyin;
	}

	public List<Discuss> getDiscuss() {
		return discuss;
	}

	public void setDiscuss(List<Discuss> discuss) {
		this.discuss = discuss;
	}

	public User() {}		

 public Set<Attends> getaSet() {
		return aSet;
	}

public void setaSet(Set<Attends> aSet) {
		this.aSet = aSet;
	}

	
	public Boolean getSuperman() {
	return superman;
}

public void setSuperman(Boolean superman) {
	this.superman = superman;
}

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

	public String getSalary() {
		return salary;
	}

	public void setSalary(String salary) {
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

	public Position getPosition() {
		return position;
	}

	public void setPosition(Position position) {
		this.position = position;
	}


	public Dept getDept() {
		return dept;
	}


	public void setDept(Dept dept) {
		this.dept = dept;
	}


	public Role getRole() {
		return role;
	}


	public void setRole(Role role) {
		this.role = role;
	}
	
	public List<ScheduleList> getScheduleLists() {
		return scheduleLists;
	}


	public void setScheduleLists(List<ScheduleList> scheduleLists) {
		this.scheduleLists = scheduleLists;
	}


	public List<Reply> getReplys() {
		return replys;
	}


	public void setReplys(List<Reply> replys) {
		this.replys = replys;
	}


	public List<Note> getNote() {
		return note;
	}


	public void setNote(List<Note> note) {
		this.note = note;
	}

	

	public Integer getHoliday() {
		return holiday;
	}

	public void setHoliday(Integer holiday) {
		this.holiday = holiday;
	}

	@Override
	public String toString() {
		return "User [userId=" + userId + ", userName=" + userName + ", userTel=" + userTel + ", realName=" + realName
				+ ", eamil=" + eamil + ", address=" + address + ", userEdu=" + userEdu + ", school=" + school
				+ ", idCard=" + idCard + ", bank=" + bank + ", sex=" + sex + ", themeSkin=" + themeSkin + ", birth="
				+ birth + ", userSign=" + userSign + ", password=" + password + ", salary=" + salary + ", imgPath="
				+ imgPath + ", hireTime=" + hireTime + ", isLock=" + isLock + ", lastLoginIp=" + lastLoginIp
				+ ", lastLoginTime=" + lastLoginTime + ", modifyTime=" + modifyTime + ", modifyUserId=" + modifyUserId
				+ ", fatherId=" + fatherId + ", holiday=" + holiday + ",superman=" + superman + ",pinyin=" + pinyin + "]";
	}
	
	
	
	
}
