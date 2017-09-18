package cn.gson.oasys.model.dao.taskdao;

import java.util.List;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;

import cn.gson.oasys.model.entity.task.Tasklist;

public interface TaskDao extends PagingAndSortingRepository<Tasklist, Long>{
  
	@Query("select ta from Tasklist ta where ta.usersId.userId=:id")
	List<Tasklist> findtask(@Param("id")Long id);
	

	@Query("update Tasklist ta set ta.statusId=:statusid where ta.taskId=:taskid")
	@Modifying
	int update(@Param("taskid")Long taskid,@Param("statusid")Integer statusid);
	
//	List<Tasklist> findByTaskId(@Param("id")Long taskid);
	
	Tasklist findByTaskId(Long taskid);
}
