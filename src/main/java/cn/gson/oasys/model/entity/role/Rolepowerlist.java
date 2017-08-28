package cn.gson.oasys.model.entity.role;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="aoa_role_power_list")
//角色权限中间表
public class Rolepowerlist {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="pk_id")
	private Long pkId;
	
	@Column(name="role_id")
	private Long roleId;
	
	@Column(name="menu_id")
	private Long menuId;
	
	@Column(name="is_show")
	private Integer isShow;

	public Long getPkId() {
		return pkId;
	}

	public void setPkId(Long pkId) {
		this.pkId = pkId;
	}

	public Long getRoleId() {
		return roleId;
	}

	public void setRoleId(Long roleId) {
		this.roleId = roleId;
	}

	public Long getMenuId() {
		return menuId;
	}

	public void setMenuId(Long menuId) {
		this.menuId = menuId;
	}

	public Integer getIsShow() {
		return isShow;
	}

	public void setIsShow(Integer isShow) {
		this.isShow = isShow;
	}

	@Override
	public String toString() {
		return "Rolepowerlist [pkId=" + pkId + ", roleId=" + roleId + ", menuId=" + menuId + ", isShow=" + isShow + "]";
	}

	public Rolepowerlist( Long roleId, Long menuId, Integer isShow) {
		super();
		
		this.roleId = roleId;
		this.menuId = menuId;
		this.isShow = isShow;
	}
	
	
}
