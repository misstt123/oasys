package cn.gson.oasys.model.dao.processdao;

import java.util.List;

import org.springframework.data.repository.PagingAndSortingRepository;

import cn.gson.oasys.model.entity.process.EvectionMoney;
import cn.gson.oasys.model.entity.process.Stay;

public interface StayDao extends PagingAndSortingRepository<Stay, Long>{
 
	List<Stay> findByEvemoney(EvectionMoney money);
}
