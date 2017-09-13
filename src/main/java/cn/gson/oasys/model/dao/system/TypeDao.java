package cn.gson.oasys.model.dao.system;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import cn.gson.oasys.model.entity.system.SystemTypeList;

@Repository
public interface TypeDao extends PagingAndSortingRepository<SystemTypeList, Long>{

	@Query("select typeId from SystemTypeList s where s.typeName=?1")
	Long findByTypeName(String typename);
}
