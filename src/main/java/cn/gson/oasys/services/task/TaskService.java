package cn.gson.oasys.services.task;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Service;

import cn.gson.oasys.model.dao.taskdao.TaskDao;
import cn.gson.oasys.model.dao.taskdao.TaskuserDao;

@Service
@Transactional
public class TaskService {
	
	@Autowired
	private TaskDao tdao;
	@Autowired
	private TaskuserDao tudao;
	
	//修改任务表里面的状态
	public int updateStatusid(Long taskid,Integer statusid){
	int s=	tdao.update(taskid, statusid);
	return s;
	
	}
	//修改任务表中间表的任务状态
	public int updateUStatusid(Long taskid,Integer statusid){
		int s=tudao.updatestatus(taskid, statusid);
		return s;
		
		}
}
