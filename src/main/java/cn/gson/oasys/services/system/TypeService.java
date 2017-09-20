package cn.gson.oasys.services.system;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.gson.oasys.model.dao.system.TypeDao;
import cn.gson.oasys.model.entity.system.SystemTypeList;

@Service
@Transactional
public class TypeService {
	
	@Autowired
	private TypeDao typeDao;
	
	/**
	 * 新增和更新
	 * @param list
	 * @return
	 */
	public SystemTypeList save(SystemTypeList list){
		return typeDao.save(list);
	}
	
	/**
	 * 删除方法
	 */
	public void deleteType(Long typeId){
		 typeDao.delete(typeId);
	}
	

}
