package cn.gson.oasys.model.dao.attendcedao;

import java.util.Date;
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
	
	//删除
		public Integer delete(long aid) {
			return attendceDao.delete(aid);
		}
	
	//更改考勤时间
	public Integer updatetime(Date date,String hourmin,Long statusIdlong ,long attid) {
		return attendceDao.updateatttime(date, hourmin,statusIdlong ,attid);
	}
	
	//更新备注
	public Integer updatereamrk(String attendsRemark,long attendsId) {
		return attendceDao.updateremark(attendsRemark, attendsId);
	}
	
	
	
	
	//分页
	public Page<Attends> paging(int page,String baseKey,List<Long> user){
		Pageable pa=null;
		if(!StringUtils.isEmpty(baseKey)){
			//模糊查询
		}else{
			pa=new PageRequest(page, 10);
			return attendceDao.findByUserOrderByAttendsTimeDesc(user, pa);
		}
		
		return null;
		
	}
	
	
	//单个用户分页
	public Page<Attends> singlepage(int page,String baseKey,long userid) {
		Pageable pa=null;
		
		if(!StringUtils.isEmpty(baseKey)){
			//查询
		}
		else{
			//第几页 以及页里面数据的条数
			pa=new PageRequest(page, 10);
			return  attendceDao.findByUserOrderByAttendsTimeDesc(userid, pa);
		}
		return null;
		
	}
}
