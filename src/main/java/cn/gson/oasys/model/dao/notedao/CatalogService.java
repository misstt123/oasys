package cn.gson.oasys.model.dao.notedao;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@Transactional
public class CatalogService {

	@Autowired
	CatalogDao catalogDao;
	
	//删除
		public int delete(long catalogId) {
			return catalogDao.delete(catalogId);
		}
		
	
}
