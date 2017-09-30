package cn.gson.oasys.services.discuss;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.gson.oasys.model.dao.discuss.DiscussDao;
import cn.gson.oasys.model.entity.discuss.Discuss;

@Service
@Transactional
public class DiscussService {
	@Autowired
	private DiscussDao discussDao;
	
	//保存
	public Discuss save(Discuss d){
		return discussDao.save(d);
	}

}
