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
	
	
	//下面开始就是分页
	//单纯根据用户分页
	public Page<Note> userpaging(int page,String baseKey,long userid) {
		if(!StringUtils.isEmpty(baseKey)){
			//查找
		}else{
			Pageable pa=new PageRequest(page, 10);
			return noteDao.findByUserssOrderByCreateTimeDesc(userid, pa);
		}
		return null;
	}
	
	//在根据是否收藏分页
	public Page<Note> collectpaging(int page,long isCollected,long userid) {
			Pageable pa=new PageRequest(page, 10);
			return noteDao.findByIsCollectedOrderByCreateTimeDesc(isCollected, userid, pa);
	}
	
	//在根据是否目录分页
	public Page<Note> catapaging(int page,long catalogId,long userid) {
		
			Pageable pa=new PageRequest(page, 10);
			return noteDao.findByCatalogIdOrderByCreateTimeDesc(catalogId, userid, pa);
		
	}
	
	//在根据是否类型分页
	public Page<Note> typepaging(int page,long typeId,long userid) {
			Pageable pa=new PageRequest(page, 10);
			return noteDao.findByTypeIdOrderByCreateTimeDesc(typeId, userid, pa);
	}
	
}
