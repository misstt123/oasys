package cn.gson.oasys.services.system;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.gson.oasys.model.dao.system.StatusDao;
import cn.gson.oasys.model.dao.system.TypeDao;
import cn.gson.oasys.model.entity.system.SystemStatusList;

@Service
@Transactional
public class StatusService {
	
	@Autowired
	private StatusDao statusDao;
	
	public SystemStatusList save(SystemStatusList status){
		return statusDao.save(status);
	}

}
