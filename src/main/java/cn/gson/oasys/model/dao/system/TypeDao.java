package cn.gson.oasys.model.dao.system;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import cn.gson.oasys.model.entity.system.SystemTypeList;

@Repository
public interface TypeDao extends PagingAndSortingRepository<SystemTypeList, Long>{
	
	//根据模块名和名称查找唯一对象
	SystemTypeList findByTypeModelAndTypeName(String typeModel,String typeName);
	
	//根据模块名查找到类型集合
	List<SystemTypeList> findByTypeModel(String typeModel);
	
	//通过名称找到id
	@Query("select typeId from SystemTypeList s where s.typeName=?1")
	Long findByTypeName(String typename);
}
