package cn.gson.oasys.model.dao.attendcedao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import cn.gson.oasys.model.entity.attendce.Attends;
import cn.gson.oasys.model.entity.user.User;

@Service
@Transactional
public class AttendceService {
 
	@Autowired 
	AttendceDao attendceDao;
	
	//更新
	public Integer updatereamrk(String attendsRemark,long attendsId) {
		return attendceDao.updateremark(attendsRemark, attendsId);
		
	}
	
	//分页
	public Page<Attends> paging(int page,String baseKey,List<Long> user){
		Pageable pa=null;
		if(!StringUtils.isEmpty(baseKey)){
			
		}else{
			pa=new PageRequest(page, 10);
			return attendceDao.findByUserOrderByAttendsTimeDesc(user, pa);
		}
		
		return null;
		
	}
}
