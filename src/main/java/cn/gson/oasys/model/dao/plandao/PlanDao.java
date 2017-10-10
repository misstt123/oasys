package cn.gson.oasys.model.dao.plandao;

import java.util.Date;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import cn.gson.oasys.model.entity.note.Attachment;
import cn.gson.oasys.model.entity.note.Note;
import cn.gson.oasys.model.entity.plan.Plan;
import cn.gson.oasys.model.entity.user.User;

@Repository
public interface PlanDao  extends JpaRepository<Plan, Long>{

	List<Plan> findByUser(User user);
	
	@Query("update Plan p set p.typeId=?1,p.statusId=?2,p.startTime=?3,p.endTime=?4,"
			+ "p.title=?5,p.label=?6,p.planContent=?7,p.planSummary=?8 where p.planId=?9")
	@Modifying
	Integer updatesome(long typeId,long statusId,Date startTime,Date endTime,
			String title,String label,String planContent,String planSummary,long pid);
	
	@Query("delete from Plan p where p.planId=?1")
	@Modifying
	Integer delete(long pid);
	
	@Query(nativeQuery=true,value="SELECT * from aoa_plan_list p WHERE p.create_time>?1 and p.create_time<?2  and p.plan_user_id=?3 and p.type_id=?4 ORDER BY p.create_time DESC limit 0,1")
	Plan findlatest(Date start,Date end,long id,long typeid);
	
	//首页显示限制5条
	@Query(nativeQuery=true, value="SELECT * from aoa_plan_list p where p.plan_user_id=?1 ORDER BY p.create_time DESC,p.end_time DESC LIMIT 0,2")
	List<Plan> findByUserlimit(long userid);
	
	//分页
	@Query("from Plan p where p.user.userId=?1 order by p.createTime Desc ")
	Page<Plan> findByUserOrderByCreateTimeDesc(long userid,Pageable pa);
	
	//模糊查询
	@Query("from Plan p where (p.label like %?1% or p.title like %?1% or DATE_format(p.createTime,'%Y-%m-%d') like %?1% or "
			+ "p.typeId in (select t.typeId from SystemTypeList t where t.typeName like %?1% ) or "
			+ "p.statusId in (select s.statusId from SystemStatusList s where s.statusName like %?1%)) and p.user.userId=?2")
	Page<Plan> findBybasekey (String baseKey, long userid,Pageable pa);
	
	//类型
		@Query("from Plan p where p.user.userId=?1  order by p.typeId Desc")
		Page<Plan> findByUserOrderByTypeIdDesc(long userid,Pageable pa);
		
		@Query("from Plan p where p.user.userId=?1  order by p.typeId Asc")
		Page<Plan> findByUserOrderByTypeIdAsc(long userid,Pageable pa);
	//状态
		@Query("from Plan p where p.user.userId=?1  order by p.statusId Desc")
		Page<Plan> findByUserOrderByStatusIdDesc(long userid,Pageable pa);
		
		@Query("from Plan p where p.user.userId=?1  order by p.statusId Asc")
		Page<Plan> findByUserOrderByStatusIdAsc(long userid,Pageable pa);
	//时间
		@Query("from Plan p where p.user.userId=?1 order by p.createTime Asc")
		Page<Plan> findByUserOrderByCreateTimeAsc(long userid,Pageable pa);
}
