package cn.gson.oasys.model.entity.role;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import cn.gson.oasys.model.entity.system.SystemMenu;
import cn.gson.oasys.model.entity.user.Position;

@Entity
@Table(name="aoa_role_power_list")
//角色权限中间表
public class Rolepowerlist {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="pk_id")
	private Long pkId;
	

	@ManyToOne()
	@JoinColumn(name = "role_id")
	private Role roleId;
	
	@ManyToOne()
	@JoinColumn(name = "menu_id")
	private SystemMenu menuId;
	
	
	@Column(name="is_show")
	private Integer isShow;
	
	public Rolepowerlist(){}

	public Long getPkId() {
		return pkId;
	}

	public void setPkId(Long pkId) {
		this.pkId = pkId;
	}


	public Integer getIsShow() {
		return isShow;
	}

	public void setIsShow(Integer isShow) {
		this.isShow = isShow;
	}

	public Role getRoleId() {
		return roleId;
	}

	public void setRoleId(Role roleId) {
		this.roleId = roleId;
	}

	public SystemMenu getMenuId() {
		return menuId;
	}

	public void setMenuId(SystemMenu menuId) {
		this.menuId = menuId;
	}

	@Override
	public String toString() {
		return "Rolepowerlist [pkId=" + pkId + ", isShow=" + isShow + "]";
	}

	public Rolepowerlist(Long pkId, Role roleId, SystemMenu menuId, Integer isShow) {
		super();
		this.pkId = pkId;
		this.roleId = roleId;
		this.menuId = menuId;
		this.isShow = isShow;
	}

	
	
	
}
