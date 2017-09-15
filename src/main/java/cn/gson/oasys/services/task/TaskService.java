package cn.gson.oasys.services.task;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Service;

import cn.gson.oasys.model.dao.taskdao.TaskDao;

@Service
@Transactional
public class TaskService {
	
	@Autowired
	private TaskDao tdao;
	
	public int updateStatusid(Long taskid,Integer statusid){
	int s=	tdao.update(taskid, statusid);
	return s;
	
	}

}
