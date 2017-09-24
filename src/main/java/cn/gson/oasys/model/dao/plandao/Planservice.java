package cn.gson.oasys.model.dao.plandao;

import java.util.Date;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@Transactional
public class Planservice {
 
	@Autowired
	PlanDao planDao;
	
	public Integer updateplan(long typeId,long statusId,Date startTime,Date endTime,
			String title,String label,String planContent,String planSummary,long pid) {
		return planDao.updatesome(typeId, statusId, startTime, endTime, title, label, planContent, planSummary,pid);
		
	}
}
