package cn.gson.oasys.model.dao.system;

import org.springframework.data.repository.PagingAndSortingRepository;

import cn.gson.oasys.model.entity.system.SystemStatusList;

public interface StatusDao extends PagingAndSortingRepository<SystemStatusList, Long>{

}
