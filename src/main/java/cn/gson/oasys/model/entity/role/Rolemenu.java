package cn.gson.oasys.model.entity.role;

import javax.persistence.Column;

public class Rolemenu {
	
	private Long menuId; // 菜单id
	
	private String menuName; // 菜单名字
	
	private String menuUrl; // 菜单链接
	
	@Column(name = "is_show")
	private Boolean show=false; // 菜单是否显示
	
	@Column(name = "is_show")
	private Boolean check=false; // 是否分配资源
	
	private String menuIcon; // 菜单图标
	
	private Integer sortId; // 菜单排序id
	
	private Integer menuGrade; // 权限值分数
	
	private Long parentId;

	public Long getMenuId() {
		return menuId;
	}

	public void setMenuId(Long menuId) {
		this.menuId = menuId;
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

	public Boolean getShow() {
		return show;
	}

	public void setShow(Boolean show) {
		this.show = show;
	}

	public Boolean getCheck() {
		return check;
	}

	public void setCheck(Boolean check) {
		this.check = check;
	}

	public Long getParentId() {
		return parentId;
	}

	public void setParentId(Long parentId) {
		this.parentId = parentId;
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

	public Integer getMenuGrade() {
		return menuGrade;
	}

	public void setMenuGrade(Integer menuGrade) {
		this.menuGrade = menuGrade;
	}

	@Override
	public String toString() {
		return "Rolemenu [menuId=" + menuId + ", menuName=" + menuName + ", menuUrl=" + menuUrl + ", show=" + show
				+ ", check=" + check + ", menuIcon=" + menuIcon + ", sortId=" + sortId + ", menuGrade=" + menuGrade
				+ ", parentId=" + parentId + "]";
	}

	public Rolemenu(Long menuId, String menuName, String menuUrl, Boolean show, Boolean check, Long parentId,
			 String menuIcon,Integer sortId, Integer menuGrade) {
		
		this.menuId = menuId;
		this.menuName = menuName;
		this.menuUrl = menuUrl;
		this.show = show;
		this.check = check;
		this.parentId = parentId;
		this.menuIcon = menuIcon;
		this.sortId = sortId;
		this.menuGrade = menuGrade;
	}


	

	
}
