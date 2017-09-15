package cn.gson.oasys.model.dao.taskdao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;

import cn.gson.oasys.model.entity.task.Taskuser;

public interface TaskuserDao extends PagingAndSortingRepository<Taskuser, Long> {

	@Query("select tu.statusId from Taskuser tu where tu.taskId.taskId=:id ")
	List<Integer> findByTaskId(@Param("id")Long id);

}
