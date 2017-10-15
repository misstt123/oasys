package cn.gson.oasys.model.dao.processdao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;

import cn.gson.oasys.model.entity.process.ProcessList;

public interface ProcessListDao extends PagingAndSortingRepository<ProcessList, Long>{

	//根据申请人和审核人查找流程
	@Query(nativeQuery=true,value="select * from aoa_process_list  where aoa_process_list.process_user_id=?1 ORDER BY aoa_process_list.apply_time DESC LIMIT 0,3")
	List<ProcessList> findlastthree(long userid);
}
