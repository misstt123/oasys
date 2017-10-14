package cn.gson.oasys.model.dao.processdao;

import org.springframework.data.repository.PagingAndSortingRepository;

import cn.gson.oasys.model.entity.process.Evection;
import cn.gson.oasys.model.entity.process.ProcessList;

public interface EvectionDao extends PagingAndSortingRepository<Evection, Long> {

	Evection findByProId(ProcessList process);

}
