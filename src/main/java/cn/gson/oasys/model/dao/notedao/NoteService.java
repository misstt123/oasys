package cn.gson.oasys.model.dao.notedao;

import java.util.Date;
import java.util.List;
import java.util.Set;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import cn.gson.oasys.model.entity.attendce.Attends;
import cn.gson.oasys.model.entity.note.Note;
import cn.gson.oasys.model.entity.user.User;

@Service
@Transactional
public class NoteService {

	@Autowired 
	NoteDao noteDao;
	
	//删除
	public int delete(long noteId) {
		return noteDao.delete(noteId);
	}
	
	public int updatecollect(long isCollected,long noteId) {
		return noteDao.updatecollect(isCollected, noteId);
	}
	
	
	public int updatenote(Long catalogId,Long typeId,Long statusId,String title,String content,Long noteId) {
		return noteDao.updatecollect(catalogId, typeId, statusId, title, content, noteId);
	}
	
	public Page<Note> paging(int page,Object baseKey,Long userid,Long isCollected,Long catalogId,Long typeId){
		Pageable pa=new PageRequest(page, 10);
		if(!StringUtils.isEmpty(baseKey)){
			return noteDao.findBytitleOrderByCreateTimeDesc(baseKey, userid, pa);
		}
		if(!StringUtils.isEmpty(isCollected))
			return noteDao.findByIsCollectedOrderByCreateTimeDesc(isCollected, userid, pa);
		if(!StringUtils.isEmpty(typeId)){
		if(!StringUtils.isEmpty(typeId)&&!StringUtils.isEmpty(catalogId)){
			System.out.println("目录类型");
			//根据目录 然后再根据类型查找
			return noteDao.findByTypeIdOrderByCreateTimeDesc(typeId,catalogId, userid, pa);
		}
		if(!StringUtils.isEmpty(typeId)&&StringUtils.isEmpty(catalogId)){
			System.out.println("单纯类型");
			//为空就直接按照类型查找
			return noteDao.findByTypeIdOrderByCreateTimeDesc(typeId, userid, pa);
		}}
		if(!StringUtils.isEmpty(catalogId)&&(StringUtils.isEmpty(typeId)))
			return noteDao.findByCatalogIdOrderByCreateTimeDesc(catalogId, userid, pa);
		if(!StringUtils.isEmpty(userid)){
			return noteDao.findByUserssOrderByCreateTimeDesc(userid, pa);
		}
		return null;
	}
	
	//排序分页
	public Page<Note> sortpage(int page, String baseKey, long userid, Object type, Object status, Object time) {
		Pageable pa = new PageRequest(page, 10);
		//0为降序 1为升序
		if (!StringUtils.isEmpty(baseKey)) {
			// 查询
			return noteDao.findBytitleOrderByCreateTimeDesc(baseKey, userid, pa);
		}
		if (!StringUtils.isEmpty(type)) {
			if(type.toString().equals("0")){
				//降序
				return noteDao.findByUserssOrderByTypeIdDesc(userid, pa);
			}else{
				//升序
				return noteDao.findByUserssOrderByTypeIdAsc(userid, pa);
			}
		}
		if (!StringUtils.isEmpty(status)) {
			if(status.toString().equals("0")){
				
				return noteDao.findByUserssOrderByStatusIdDesc(userid, pa);
			}else{
				return noteDao.findByUserssOrderByStatusIdAsc(userid, pa);
			}
		}
		if (!StringUtils.isEmpty(time)) {
			if(time.toString().equals("0")){
				return noteDao.findByUserssOrderByCreateTimeDesc(userid, pa);
			}else{
				return noteDao.findByUserssOrderByCreateTimeAsc(userid, pa);
			}
		} else {
			// 第几页 以及页里面数据的条数
			return noteDao.findByUserssOrderByCreateTimeDesc(userid, pa);
		}

	}
	
	
	
}
