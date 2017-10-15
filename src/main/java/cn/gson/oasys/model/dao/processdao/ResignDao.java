package cn.gson.oasys.model.dao.processdao;

import org.springframework.data.repository.PagingAndSortingRepository;

import cn.gson.oasys.model.entity.process.ProcessList;
import cn.gson.oasys.model.entity.process.Resign;

public interface ResignDao extends PagingAndSortingRepository<Resign, Long>{

	Resign findByProId(ProcessList process);

}
