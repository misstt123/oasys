package cn.gson.oasys.model.dao.taskdao;

import java.util.List;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;

import cn.gson.oasys.model.entity.task.Tasklist;
import cn.gson.oasys.model.entity.user.User;

public interface TaskDao extends PagingAndSortingRepository<Tasklist, Long>{
  
	
	
	//查找是否置顶的xx
	
	List<Tasklist> findByTopAndUsersIdOrderByModifyTimeDesc(Boolean bo,User userId);
	
	
	
	@Query("update Tasklist ta set ta.statusId=:statusid where ta.taskId=:taskid")
	@Modifying
	int update(@Param("taskid")Long taskid,@Param("statusid")Integer statusid);
	
	Tasklist findByTaskId(Long taskid);
	
	//根据用户id 和title的模糊查询
	@Query("select tl from Tasklist tl where tl.usersId=:userId and tl.title like %:title%")
	List<Tasklist> findByTitleLikeAndUsersId(@Param("title")String title,@Param("userId")User userId);
	
	//根据任务id和title的模糊查询
	@Query("select tl from Tasklist tl where tl.taskId=:taskid and tl.title like %:title%")
	Tasklist findByTitleLikeAndTaskId(@Param("taskid")Long taskid,@Param("title")String title);
	
	//类型排序
	List<Tasklist> findByUsersIdOrderByTypeId(User userId);
	
	//状态排序
	List<Tasklist> findByUsersIdAndCancelOrderByStatusId(User userId,Boolean cancel);
	
	//时间排序
	List<Tasklist> findByUsersIdOrderByPublishTime(User userId);
	
}
