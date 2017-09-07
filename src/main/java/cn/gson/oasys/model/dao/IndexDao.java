package cn.gson.oasys.model.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import cn.gson.oasys.model.entity.system.SystemMenu;

@Repository
public interface IndexDao extends CrudRepository<SystemMenu, Long>  {
//	查找一级菜单栏
	List<SystemMenu> findByParentId(Long parentId);
//	查找二级菜单栏
	List<SystemMenu> findByParentIdNot(Long parentId);
	
}
