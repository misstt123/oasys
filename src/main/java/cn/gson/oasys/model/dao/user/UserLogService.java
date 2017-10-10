package cn.gson.oasys.model.dao.user;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import cn.gson.oasys.model.entity.user.UserLog;

@Transactional
@Service
public class UserLogService {
	
	@Autowired
	UserLogDao userLogDao;
	
	public Page<UserLog> ulogpaging(int page,String basekey,Long userid,Object time) {
		Pageable  pa=new PageRequest(page, 15);
		if(!StringUtils.isEmpty(basekey)){
			//模糊
			return userLogDao.findbasekey(userid, basekey, pa);
		}//0为降序 1为升序
		if(!StringUtils.isEmpty(time)){
			if(time.toString().equals("0")) return userLogDao.findByUserOrderBylogTimeDesc(userid, pa);
			if(time.toString().equals("1")) return userLogDao.findByUserOrderBylogTimeAsc(userid, pa);
		}else{
			return userLogDao.findByUserOrderBylogTimeDesc(userid, pa);
		}
		return null;
		
	}
}
