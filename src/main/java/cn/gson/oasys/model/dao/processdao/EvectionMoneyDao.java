package cn.gson.oasys.model.dao.processdao;

import org.springframework.data.repository.PagingAndSortingRepository;

import cn.gson.oasys.model.entity.process.EvectionMoney;
import cn.gson.oasys.model.entity.process.ProcessList;

public interface EvectionMoneyDao extends PagingAndSortingRepository<EvectionMoney, Long>{

	EvectionMoney findByProId(ProcessList pro);
}
