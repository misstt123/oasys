package cn.gson.oasys.model.dao.system;

import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import cn.gson.oasys.model.entity.system.SystemMenu;

@Repository
public interface SystemMenuDao extends PagingAndSortingRepository<SystemMenu, Long>{

	
}
