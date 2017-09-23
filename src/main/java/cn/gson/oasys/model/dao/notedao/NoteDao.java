package cn.gson.oasys.model.dao.notedao;


import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.apache.ibatis.annotations.Param;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import cn.gson.oasys.model.entity.note.Note;
import cn.gson.oasys.model.entity.user.User;

@Repository
public interface NoteDao  extends PagingAndSortingRepository<Note, Long>{

	@Query("FROM Note n WHERE  n.noteId in (SELECT r.noteId from Noteuser r where r.userId=?1)")
	List<Note> finduser(Long userid);
	
	@Query("update Note n set n.catalogId=?1,n.typeId=?2,n.statusId=?3,"
			+ "n.title=?4,n.content=?5 where n.noteId=?6")
	@Modifying
	Integer updatecollect(Long catalogId,Long typeId,Long statusId,String title,String content,long noteId);
	
	
	@Query("update Note n set n.isCollected=?1 where n.noteId=?2")
	@Modifying
	Integer updatecollect(long isCollected,long noteId);
	
	@Query("from Note n where n.isCollected=?1")
	List<Note> findByIsCollected  (long isCollected);
	
	@Query("from Note n where n.catalogId=?1 and n.noteId in (SELECT r.noteId from Noteuser r where r.userId=?2)")
	List<Note> findByCatalogId(long catalogId,long userid);
	
	
	@Query("from Note n where n.typeId=?1 and n.noteId in (SELECT r.noteId from Noteuser r where r.userId=?2)")
	List<Note> findByTypeId(long typeId,long userid);
	
	@Query("from Note n where n.title like %?1% "
			+ ""
			+ "")
	List<Note> findBytitle(String title);
	
	
	
}
