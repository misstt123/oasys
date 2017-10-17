package cn.gson.oasys.model.dao.roledao;


import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;

import cn.gson.oasys.model.entity.role.Rolemenu;
import cn.gson.oasys.model.entity.role.Rolepowerlist;

public interface RolepowerlistDao extends PagingAndSortingRepository<Rolepowerlist, Long>{
	//找所有的父菜单
	@Query("select new cn.gson.oasys.model.entity.role.Rolemenu(menu.menuId,menu.menuName,menu.menuUrl,menu.show,role.check,menu.parentId,menu.menuIcon,menu.sortId,menu.menuGrade) "
			+ "from Rolepowerlist as role,SystemMenu as menu where role.menuId.menuId=menu.menuId "
			+ "and menu.parentId=?1 and role.roleId.roleId=?2")
	List<Rolemenu> findbyparentall(Long id,Long roleid);
	
	//找所有的子菜单
	@Query("select new cn.gson.oasys.model.entity.role.Rolemenu(menu.menuId,menu.menuName,menu.menuUrl,menu.show,role.check,menu.parentId,menu.menuIcon,menu.sortId,menu.menuGrade) "
			+ "from Rolepowerlist as role,SystemMenu as menu where role.menuId.menuId=menu.menuId "
			+ "and menu.parentId!=?1 and role.roleId.roleId=?2")
	List<Rolemenu> findbyparents(Long id,Long roleid);

	@Query("select po from Rolepowerlist as po where po.roleId.roleId=?1 and po.menuId.menuId=?2")
	Rolepowerlist findbyroleidandmenuid(Long roleid, Long menuid);

}
