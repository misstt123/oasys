package cn.gson.oasys.model.dao.plandao;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import cn.gson.oasys.model.entity.note.Attachment;
import cn.gson.oasys.model.entity.note.Note;
import cn.gson.oasys.model.entity.plan.Plan;
import cn.gson.oasys.model.entity.user.User;

@Repository
public interface PlanDao  extends PagingAndSortingRepository<Plan, Long>{

	List<Plan> findByUser(User user);
	
	@Query("update Plan p set p.typeId=?1,p.statusId=?2,p.startTime=?3,p.endTime=?4,"
			+ "p.title=?5,p.label=?6,p.planContent=?7,p.planSummary=?8 where p.planId=?9")
	@Modifying
	Integer updatesome(long typeId,long statusId,Date startTime,Date endTime,
			String title,String label,String planContent,String planSummary,long pid);
	
	
	@Query(nativeQuery=true,value="SELECT * from aoa_plan_list p WHERE p.create_time>?1 and p.create_time<?2 and p.plan_user_id=?3 ORDER BY p.create_time DESC limit 0,1")
	Plan findlatest(Date start,Date end,long id);
}
