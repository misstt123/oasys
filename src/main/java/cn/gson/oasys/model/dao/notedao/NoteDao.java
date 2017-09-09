package cn.gson.oasys.model.dao.notedao;


import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import cn.gson.oasys.model.entity.note.Note;

@Repository
public interface NoteDao  extends PagingAndSortingRepository<Note, Long>{

	@Query("from Note n where n.typeId=?1")
	List<Note> findByTypeId(long typeId);
	
	@Query("from Note n where n.title like %?1% "
			+ "or DATE_FORMAT(n.createTime,'%Y-%c-%d %h:%i:%s') like %?2%"
			+ ""
			+ "")
	List<Note> findBytitle(String title,String title2);
	
	
	
}
