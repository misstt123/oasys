package cn.gson.oasys.model.dao.plandao;

import java.util.List;

import org.springframework.data.repository.PagingAndSortingRepository;

import cn.gson.oasys.model.entity.process.EvectionMoney;

import cn.gson.oasys.model.entity.process.Traffic;

public interface TrafficDao extends PagingAndSortingRepository<Traffic, Long>{

	List<Traffic> findByEvection(EvectionMoney money);
}
