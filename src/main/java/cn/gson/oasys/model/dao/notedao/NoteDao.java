package cn.gson.oasys.model.dao.notedao;


import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import cn.gson.oasys.model.entity.note.Note;

@Repository
public interface NoteDao  extends PagingAndSortingRepository<Note, Long>{

	@Query("update Note n set n.isCollected=?1 where n.noteId=?2")
	@Modifying
	Integer updatecollect(long isCollected,long noteId);
	
	@Query("from Note n where n.isCollected=?1")
	List<Note> findByIsCollected  (long isCollected);
	
	@Query("from Note n where n.catalogId=?1")
	List<Note> findByCatalogId(long catalogId);
	
	
	@Query("from Note n where n.typeId=?1")
	List<Note> findByTypeId(long typeId);
	
	@Query("from Note n where n.title like %?1% "
			+ ""
			+ "")
	List<Note> findBytitle(String title);
	
	
	
}
