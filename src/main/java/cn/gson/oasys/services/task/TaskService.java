package cn.gson.oasys.services.task;

import java.util.Objects;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Service;

import cn.gson.oasys.model.dao.taskdao.TaskDao;
import cn.gson.oasys.model.dao.taskdao.TaskloggerDao;
import cn.gson.oasys.model.dao.taskdao.TaskuserDao;
import cn.gson.oasys.model.entity.task.Tasklist;
import cn.gson.oasys.model.entity.task.Tasklogger;
import cn.gson.oasys.model.entity.task.Taskuser;

@Service
@Transactional
public class TaskService {
	
	@Autowired
	private TaskDao tdao;
	@Autowired
	private TaskuserDao tudao;
	@Autowired
	private TaskloggerDao tldao;
	
	public Tasklist save(Tasklist task){
		return tdao.save(task);
	}
	
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
	
	//删除任务中间表
	public void delete(Long pkid){
		if (!Objects.isNull(pkid)){
			tudao.delete(pkid);
			
		}
		
	}
	
	//删除任务
	public void deteletask(Tasklist task){
		tdao.delete(task);
	}
	//删除日志表
	public void detelelogger(Long taskid){
		Tasklogger taskLogger = tldao.findOne(taskid);
		if (!Objects.isNull(taskLogger)) {
			tldao.delete(taskid);
		}
	}

}
