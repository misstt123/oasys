package cn.gson.oasys.model.entity.note;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

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
	
	private String  sex;		//性别
	
	@Column(name="type_id")
	private Long typeId; //类型id
	
	@Column(name="status_id")
	private Long statusId; //状态id
	
	@Column(name="addr_name")
	private String  addrName;   //联系人姓名
	
	@Column(name="phone_number")
	private String  phoneNumber;  //电话号码
	
	private String  tell;       //座机
	
	private String  email;		//邮件
	
	private String  address;	//地址
	
	private String  remark;     //备注
	
	@Column(name="image_path")
	private String  imagePath; 
	
//	@OneToMany(mappedBy="director",fetch=FetchType.EAGER)
//	private Set<Catalog>  catalogs;
	
	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}
	
	public String getImagePath() {
		return imagePath;
	}
	public Long getDirectorId() {
		return directorId;
	}

	public void setDirectorId(Long directorId) {
		this.directorId = directorId;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getAddrName() {
		return addrName;
	}

	public void setAddrName(String addrName) {
		this.addrName = addrName;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getTell() {
		return tell;
	}

	public void setTell(String tell) {
		this.tell = tell;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	@Override
	public String toString() {
		return "Director [directorId=" + directorId + ", sex=" + sex + ", addrName=" + addrName + ", phoneNumber="
				+ phoneNumber + ", tell=" + tell + ", email=" + email + ", address=" + address + ", remark=" + remark
				+ ", imagePath=" + imagePath + "]";
	}

	public Director() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Director( String sex, String addrName, String phoneNumber, String tell, String email,
			String address, String remark, String imagePath) {
		super();
		this.sex = sex;
		this.addrName = addrName;
		this.phoneNumber = phoneNumber;
		this.tell = tell;
		this.email = email;
		this.address = address;
		this.remark = remark;
		this.imagePath = imagePath;
	}
	
	
	
	
	
}
