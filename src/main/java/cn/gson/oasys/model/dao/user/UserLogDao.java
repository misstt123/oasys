package cn.gson.oasys.model.dao.user;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import cn.gson.oasys.model.entity.user.UserLog;

@Repository
public interface UserLogDao extends PagingAndSortingRepository<UserLog, Long>{

	//限制10条
	@Query(nativeQuery=true,value=("SELECT * from aoa_user_log where aoa_user_log.user_id=?1 LIMIT 0,10"))
	List<UserLog> findByUser(long userid);
}
