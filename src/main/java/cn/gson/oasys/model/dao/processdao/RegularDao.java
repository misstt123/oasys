package cn.gson.oasys.model.dao.processdao;

import org.springframework.data.repository.PagingAndSortingRepository;

import cn.gson.oasys.model.entity.process.ProcessList;
import cn.gson.oasys.model.entity.process.Regular;

public interface RegularDao extends PagingAndSortingRepository<Regular, Long>{

	Regular findByProId(ProcessList pro);

}
