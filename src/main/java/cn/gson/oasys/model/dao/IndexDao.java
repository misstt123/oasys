package cn.gson.oasys.model.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import cn.gson.oasys.model.entity.system.SystemMenu;

@Repository
public interface IndexDao extends CrudRepository<SystemMenu, Long> {
	// 查找一级菜单栏
	List<SystemMenu> findByParentIdOrderBySortId(Long parentId);

	// 查找二级菜单栏
	List<SystemMenu> findByParentIdNotOrderBySortId(Long parentId);
	
//	1、上移下移按钮先改变其他的排序值
	@Query("update SystemMenu menu set menu.sortId=(:sortId) where menu.parentId = :parentId and menu.sortId=(:sortId - :arithNum)")
	@Modifying
	int changeSortId(@Param("sortId") Integer sortId, @Param("arithNum") Integer arithNum,
			@Param("parentId") Long parentId);
	
//	2、上移下移按钮先改变自己的排序值
	@Query("update SystemMenu menu set menu.sortId=(:sortId -:arithNum) where menu.menuId= :menuId")
	@Modifying
	int changeSortId2(@Param("sortId") Integer sortId, @Param("arithNum") Integer arithNum,
			@Param("menuId") Long menuId);

}
