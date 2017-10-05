package cn.gson.oasys.model.dao.notedao;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import cn.gson.oasys.model.entity.note.Attachment;
import cn.gson.oasys.model.entity.note.Noteuser;

@Repository
public interface NoteUserDao extends PagingAndSortingRepository<Noteuser, Long>{

	@Query("select n.id from Noteuser n where n.noteId=?1 and n.userId=?2")
	Long findid(long noteid,long userid);
}
