package cn.gson.oasys.model.dao.taskdao;

import java.util.Date;
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
	@Query("select tl from Tasklist tl where tl.taskId=:taskid and tl.title like  %:title%")
	Tasklist findByTitleLikeAndTaskId(@Param("taskid")Long taskid,@Param("title")String title);
	
	//根据任务id和发布时间的模糊查询
	@Query("select tl from Tasklist tl where tl.taskId=:taskid and tl.publishTime like  %:title%")
	Tasklist findByPublishTimeLikeAndTaskId(@Param("taskid")Long taskid,@Param("title")String title);
	
	//类型排序
	List<Tasklist> findByUsersIdOrderByTypeId(User userId);
	
	//状态排序
	List<Tasklist> findByUsersIdAndCancelOrderByStatusId(User userId,Boolean cancel);
	
	//时间排序
	List<Tasklist> findByUsersIdOrderByPublishTimeDesc(User userId);


	//根据typeid和taskid找任务
	Tasklist findByTypeIdAndTaskId(Long typeId, Long long1);


	//根据statusid和taskid找任务
	Tasklist findByStatusIdAndCancelAndTaskId(Integer statusId,Boolean cancel, Long long1);


	//根据用户对象和taskid找任务
	Tasklist findByUsersIdAndTaskId(User user, Long long1);



	Tasklist findByCancelAndTaskId(Boolean b, Long long1);
	
}
