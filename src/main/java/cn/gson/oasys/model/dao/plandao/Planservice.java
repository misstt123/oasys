package cn.gson.oasys.model.dao.plandao;

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
import cn.gson.oasys.model.entity.plan.Plan;

@Service
@Transactional
public class Planservice {
 
	@Autowired
	PlanDao planDao;
	
	//删除
	public Integer delete(long pid) {
		return planDao.delete(pid);
		
	}
	
	//分页
	public Page<Plan> paging(int page,String baseKey,long userid, Object type, Object status, Object time){
		Pageable pa=new PageRequest(page, 10);
		if(!StringUtils.isEmpty(baseKey)){
			System.out.println("进来了");
			return planDao.findBybasekey(baseKey, userid, pa);
		}if (!StringUtils.isEmpty(type)) {
			if(type.toString().equals("0")){
				//降序
				return planDao.findByUserOrderByTypeIdDesc(userid, pa);
			}else{
				//升序
				return planDao.findByUserOrderByTypeIdAsc(userid, pa);
			}
		}
		if (!StringUtils.isEmpty(status)) {
			if(status.toString().equals("0")){
				return planDao.findByUserOrderByStatusIdDesc(userid, pa);
			}else{
				return planDao.findByUserOrderByStatusIdAsc(userid, pa);
			}
		}
		if (!StringUtils.isEmpty(time)) {
			if(time.toString().equals("0")){
				return planDao.findByUserOrderByCreateTimeDesc(userid, pa);
			}else{
				return planDao.findByUserOrderByCreateTimeAsc(userid, pa);
			}
		}
		else{
			
			return planDao.findByUserOrderByCreateTimeDesc(userid, pa);
		}
		
		
	}
	
	public Integer updateplan(long typeId,long statusId,Date startTime,Date endTime,
			String title,String label,String planContent,String planSummary,long pid) {
		return planDao.updatesome(typeId, statusId, startTime, endTime, title, label, planContent, planSummary,pid);
		
	}
}
