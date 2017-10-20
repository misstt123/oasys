package cn.gson.oasys.model.dao.taskdao;

import java.util.Date;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;

import cn.gson.oasys.model.entity.task.Tasklist;
import cn.gson.oasys.model.entity.user.User;

public interface TaskDao extends JpaRepository<Tasklist, Long>{
  
	
	
	//查找是否置顶的xx
	
	Page<Tasklist> findByUsersId(User userId,Pageable page);
	
	//查找任务完成的用户
	@Query(nativeQuery=true, value="SELECT COUNT(*) from aoa_task_list where aoa_task_list.status_id=?1 and aoa_task_list.task_push_user_id=?2 ")
	Integer countfinish(Long status,Long userid);
	
	
	@Query("update Tasklist ta set ta.statusId=:statusid where ta.taskId=:taskid")
	@Modifying
	int update(@Param("taskid")Long taskid,@Param("statusid")Integer statusid);
	

	
	//根据用户id 和title的模糊查询
	@Query("select tl from Tasklist tl where tl.usersId=:userId and tl.title like %:title%")
	Page<Tasklist> findByTitleLikeAndUsersId(@Param("title")String title,@Param("userId")User userId,Pageable pa);
	
	
	
	//根据任务id和发布时间的模糊查询
	@Query("select tl from Tasklist tl where tl.taskId=:taskid and tl.publishTime like  %:title%")
	Tasklist findByPublishTimeLikeAndTaskId(@Param("taskid")Long taskid,@Param("title")String title);
	
	//类型排序
	Page<Tasklist> findByUsersIdOrderByTypeId(User userId,Pageable page);
	
	//状态排序
	Page<Tasklist> findByUsersIdOrderByStatusId(User userId,Pageable pa);
	
	//时间排序
	Page<Tasklist> findByUsersIdOrderByPublishTimeDesc(User userId,Pageable pa);

	@Query("from Tasklist t where t.taskId in (?1)")
	Page<Tasklist> findTaskByTaskIds(List<Long> taskids,Pageable pa);

	//根据typeid和taskid找任务
	@Query("from Tasklist t where t.typeId = ?1  and t.taskId in (?2)")
	Page<Tasklist> findtaskTypeIdAndTaskId(Long typeId, List<Long> taskids,Pageable pa);


	//根据statusid和taskid找任务
	@Query("from Tasklist t where t.statusId = ?1  and t.taskId in (?2)")
	Page<Tasklist> findtaskStatusIdAndCancelAndTaskId(Integer statusId,List<Long> taskids,Pageable pa);


	//根据用户对象和taskid找任务
	@Query("from Tasklist t where t.usersId	= ?1  and t.taskId in (?2)")
	Page<Tasklist> findtaskUsersIdAndTaskId(User user, List<Long> taskids,Pageable pa);


	@Query("from Tasklist t where t.cancel = ?1  and t.taskId in (?2)")
	Page<Tasklist> findtaskCancelAndTaskId(Boolean b, List<Long> taskids,Pageable pa);

	//根据任务id和title的模糊查询
	@Query("from Tasklist tl where tl.taskId in (?1) and tl.title like  %?2%")
	Page<Tasklist> findtaskByTitleLikeAndTaskId(List<Long> taskids,String title,Pageable pa);




	Page<Tasklist> findByTickingIsNotNull(Pageable pa);

	
	
}
