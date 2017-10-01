package cn.gson.oasys.model.dao.notedao;

import java.util.Date;
import java.util.Set;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
	
	
}
