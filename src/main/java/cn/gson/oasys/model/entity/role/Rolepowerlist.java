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
	private Boolean check=false;
	
	public Rolepowerlist(Role roleId, SystemMenu menuId) {
		
		this.roleId = roleId;
		this.menuId = menuId;
		
	}
	
	
	public Rolepowerlist(Role roleId, SystemMenu menuId, Boolean check) {
		super();
		this.roleId = roleId;
		this.menuId = menuId;
		this.check = check;
	}


	public Rolepowerlist(){}

	public Long getPkId() {
		return pkId;
	}

	public void setPkId(Long pkId) {
		this.pkId = pkId;
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

	public Boolean getCheck() {
		return check;
	}

	public void setCheck(Boolean check) {
		this.check = check;
	}

	@Override
	public String toString() {
		return "Rolepowerlist [pkId=" + pkId + ", roleId=" + roleId + ", check=" + check + "]";
	}




	
	
	
}
