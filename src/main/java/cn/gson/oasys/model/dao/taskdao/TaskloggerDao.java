package cn.gson.oasys.model.dao.taskdao;

import org.springframework.data.repository.PagingAndSortingRepository;

import cn.gson.oasys.model.entity.task.Tasklogger;

public interface TaskloggerDao extends PagingAndSortingRepository<Tasklogger, Long>{

}
