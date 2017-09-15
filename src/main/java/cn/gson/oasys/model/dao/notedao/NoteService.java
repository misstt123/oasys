package cn.gson.oasys.model.dao.notedao;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@Transactional
public class NoteService {

	@Autowired 
	NoteDao noteDao;
	
	public int updatecollect(long isCollected,long noteId) {
		return noteDao.updatecollect(isCollected, noteId);
	}
}
