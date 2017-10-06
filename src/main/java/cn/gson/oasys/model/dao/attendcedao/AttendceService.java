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

	// 删除
	public Integer delete(long aid) {
		return attendceDao.delete(aid);
	}

	// 更改考勤时间
	public Integer updatetime(Date date, String hourmin, Long statusIdlong, long attid) {
		return attendceDao.updateatttime(date, hourmin, statusIdlong, attid);
	}

	// 更新备注
	public Integer updatereamrk(String attendsRemark, long attendsId) {
		return attendceDao.updateremark(attendsRemark, attendsId);
	}

	//查找在这个时间段的每个用户的考勤
//	public Page<Attends> findoneweekatt(int page, String baseKey, Date start,Date end, List<Long> user) {
//		Pageable pa =new PageRequest(page, 10);
//		if (!StringUtils.isEmpty(baseKey)) {
//			// 模糊查询
//		}else{
//			return attendceDao.findoneweek(start, end, user, pa);
//		}
//		return null;
//		
//	}
	
	// 分页
	public Page<Attends> paging(int page, String baseKey, List<Long> user, Object type, Object status, Object time) {
		Pageable pa =new PageRequest(page, 10);
		if (!StringUtils.isEmpty(baseKey)) {
			// 模糊查询
			return attendceDao.findsomemohu(baseKey, user, pa);
		}if (!StringUtils.isEmpty(type)) {
			if(type.toString().equals("0")){
				//降序
				return attendceDao.findByUserOrderByTypeIdDesc(user, pa);
			}else{System.out.println("22");
				//升序
				return attendceDao.findByUserOrderByTypeIdAsc(user, pa);
			}
		}
		if (!StringUtils.isEmpty(status)) {
			if(status.toString().equals("0")){
				return attendceDao.findByUserOrderByStatusIdDesc(user, pa);
			}else{
				return attendceDao.findByUserOrderByStatusIdAsc(user, pa);
			}
		}
		if (!StringUtils.isEmpty(time)) {
			if(time.toString().equals("0")){
				return attendceDao.findByUserOrderByAttendsTimeDesc(user, pa);
			}else{
				return attendceDao.findByUserOrderByAttendsTimeAsc(user, pa);
			}
		}
		else {
			return attendceDao.findByUserOrderByAttendsTimeDesc(user, pa);
		}


	}

	// 单个用户分页
	public Page<Attends> singlepage(int page, String baseKey, long userid, Object type, Object status, Object time) {
		Pageable pa = new PageRequest(page, 10);
		//0为降序 1为升序
		if (!StringUtils.isEmpty(baseKey)) {
			// 查询
			System.out.println(baseKey);
			attendceDao.findonemohu(baseKey, userid, pa);
		}
		if (!StringUtils.isEmpty(type)) {
			if(type.toString().equals("0")){
				//降序
				return attendceDao.findByUserOrderByTypeIdDesc(userid, pa);
			}else{
				//升序
				return attendceDao.findByUserOrderByTypeIdAsc(userid, pa);
			}
		}
		if (!StringUtils.isEmpty(status)) {
			if(status.toString().equals("0")){
				return attendceDao.findByUserOrderByStatusIdDesc(userid, pa);
			}else{
				return attendceDao.findByUserOrderByStatusIdAsc(userid, pa);
			}
		}
		if (!StringUtils.isEmpty(time)) {
			if(time.toString().equals("0")){
				return attendceDao.findByUserOrderByAttendsTimeDesc(userid, pa);
			}else{
				return attendceDao.findByUserOrderByAttendsTimeAsc(userid, pa);
			}
		} else {
			// 第几页 以及页里面数据的条数
			return attendceDao.findByUserOrderByAttendsTimeDesc(userid, pa);
		}

	}
}
