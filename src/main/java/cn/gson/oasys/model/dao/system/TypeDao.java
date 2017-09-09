package cn.gson.oasys.model.dao.system;

import org.springframework.data.repository.PagingAndSortingRepository;

import cn.gson.oasys.model.entity.system.SystemTypeList;

public interface TypeDao extends PagingAndSortingRepository<SystemTypeList, Long>{

}
