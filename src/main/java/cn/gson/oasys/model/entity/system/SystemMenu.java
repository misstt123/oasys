package cn.gson.oasys.model.entity.system;

import javax.persistence.*;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;
import org.hibernate.validator.constraints.Range;

/**
 * 系统菜单实体类表
 * 
 * @author luoxiang
 *
 */
@Entity
@Table(name = "aoa_sys_menu")
public class SystemMenu {

	@Id
	@Column(name = "menu_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long menuId; // 菜单id

	@Column(name = "parent_id")
	private Long parentId; // 父id

	@Column(name = "menu_name")
	@NotEmpty(message="菜单名字不能为空")
	private String menuName; // 菜单名字

	@Column(name = "menu_url")
	@NotEmpty(message="{sysMenu.menuUrl.NotNull}")
	private String menuUrl; // 菜单链接

	@Column(name = "menu_icon")
	private String menuIcon; // 菜单图标

	@Column(name = "sort_id")
	
	private Integer sortId; // 菜单排序id

	@Column(name = "is_show")
	private Integer isShow; // 菜单是否显示

	@Column(name = "menu_grade")
	private Integer menuGrade; // 权限值分数

	public SystemMenu() {
	}

	public Long getMenuId() {
		return menuId;
	}

	public void setMenuId(Long menuId) {
		this.menuId = menuId;
	}

	public Long getParentId() {
		return parentId;
	}

	public void setParentId(Long parentId) {
		this.parentId = parentId;
	}

	public String getMenuName() {
		return menuName;
	}

	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}

	public String getMenuUrl() {
		return menuUrl;
	}

	public void setMenuUrl(String menuUrl) {
		this.menuUrl = menuUrl;
	}

	public String getMenuIcon() {
		return menuIcon;
	}

	public void setMenuIcon(String menuIcon) {
		this.menuIcon = menuIcon;
	}

	public Integer getSortId() {
		return sortId;
	}

	public void setSortId(Integer sortId) {
		this.sortId = sortId;
	}

	public Integer getIsShow() {
		return isShow;
	}

	public void setIsShow(Integer isShow) {
		this.isShow = isShow;
	}

	public Integer getMenuGrade() {
		return menuGrade;
	}

	public void setMenuGrade(Integer menuGrade) {
		this.menuGrade = menuGrade;
	}

	@Override
	public String toString() {
		return "SystemMenu [MenuId=" + menuId + ", parentId=" + parentId + ", menuName=" + menuName + ", menuUrl="
				+ menuUrl + ", menuIcon=" + menuIcon + ", sortId=" + sortId + ", isShow=" + isShow + ", menuGrade="
				+ menuGrade + "]";
	}

}
