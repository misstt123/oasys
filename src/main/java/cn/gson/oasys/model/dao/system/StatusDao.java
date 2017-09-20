package cn.gson.oasys.model.dao.system;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import cn.gson.oasys.model.entity.system.SystemStatusList;
@Repository
public interface StatusDao extends PagingAndSortingRepository<SystemStatusList, Long>{
	
	//根据模块名和名字查找到唯一对象
	SystemStatusList findByStatusModelAndStatusName(String statusModel,String statusName);
	
	//根据模块名查找到状态集合
	List<SystemStatusList> findByStatusModel(String statusModel);
	
	//通过名称找到id
	@Query("select statusId from SystemStatusList s where s.statusName=?1")
	Long findByStatusName(String statusName);
}
