package cn.gson.oasys.model.dao.system;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import cn.gson.oasys.model.entity.system.SystemStatusList;
@Repository
public interface StatusDao extends PagingAndSortingRepository<SystemStatusList, Long>{
	
	@Query("select statusId from SystemStatusList s where s.statusName=?1")
	Long findByStatusName(String statusName);
}
