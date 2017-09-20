package cn.gson.oasys.model.dao.system;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import cn.gson.oasys.model.entity.system.SystemStatusList;
@Repository
public interface StatusDao extends PagingAndSortingRepository<SystemStatusList, Long>{
	//通过名称找到id
	@Query("select statusId from SystemStatusList s where s.statusName=?1")
	Long findByStatusName(String statusName);
	
	@Query("select sl.statusName from SystemStatusList sl where sl.statusId=:id")
	String findname(@Param("id")Long id);
	
	@Query("select sl.statusColor from SystemStatusList sl where sl.statusId=:id")
	String findcolor(@Param("id")Long id);
}
