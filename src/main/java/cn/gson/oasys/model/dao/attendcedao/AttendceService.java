package cn.gson.oasys.model.dao.attendcedao;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@Transactional
public class AttendceService {
 
	@Autowired 
	AttendceDao attendceDao;
	
	public Integer updatereamrk(String attendsRemark,long attendsId) {
		return attendceDao.updateremark(attendsRemark, attendsId);
		
	}
}
