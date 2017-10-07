package cn.gson.oasys.model.dao.processdao;

import org.springframework.data.repository.PagingAndSortingRepository;

import cn.gson.oasys.model.entity.process.ProcessList;

public interface ProcessListDao extends PagingAndSortingRepository<ProcessList, Long>{

	//根据申请人和审核人查找流程
	
}
