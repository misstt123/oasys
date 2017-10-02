package cn.gson.oasys.model.dao.notedao;

import java.util.Date;
import java.util.Set;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

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
	
	public Page<Note> paging(int page,String baseKey,Long userid,Long isCollected,Long catalogId,Long typeId){
		Pageable pa=new PageRequest(page, 10);
		if(!StringUtils.isEmpty(baseKey)){
			//查找
			System.out.println(baseKey);
		}
		
		if(!StringUtils.isEmpty(isCollected))
			return noteDao.findByIsCollectedOrderByCreateTimeDesc(isCollected, userid, pa);
		if(!StringUtils.isEmpty(catalogId))
			return noteDao.findByCatalogIdOrderByCreateTimeDesc(catalogId, userid, pa);
		if(!StringUtils.isEmpty(typeId)){
			return noteDao.findByTypeIdOrderByCreateTimeDesc(typeId, userid, pa);
		}
		if(!StringUtils.isEmpty(userid)){
			return noteDao.findByUserssOrderByCreateTimeDesc(userid, pa);
		}
		System.out.println("fdsfasdfasd");
		return null;
	}
}
