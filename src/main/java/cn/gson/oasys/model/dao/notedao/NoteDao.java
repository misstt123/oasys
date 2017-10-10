package cn.gson.oasys.model.dao.notedao;


import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.apache.ibatis.annotations.Param;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import cn.gson.oasys.model.entity.note.Note;
import cn.gson.oasys.model.entity.note.Noteuser;
import cn.gson.oasys.model.entity.user.User;

@Repository
public interface NoteDao  extends JpaRepository<Note, Long>{
    
	
	//删除
	@Query("delete from Note n where n.noteId=?1 ")
	@Modifying
	Integer delete(long noteid);
	
	@Query("update Note n set n.catalogId=?1,n.typeId=?2,n.statusId=?3,"
			+ "n.title=?4,n.content=?5 where n.noteId=?6")
	@Modifying
	Integer updatecollect(Long catalogId,Long typeId,Long statusId,String title,String content,long noteId);
	
	@Query("update Note n set n.isCollected=?1 where n.noteId=?2")
	@Modifying
	Integer updatecollect(long isCollected,long noteId);
	
	//通过用户id查找
	@Query("FROM Note n WHERE  n.noteId in (SELECT r.noteId from Noteuser r where r.userId=?1)")
	Page<Note> findByUserss(Long userid,Pageable pa);
	
	//单纯查找是否已经收藏
	@Query("from Note n where n.isCollected=?1 and n.noteId in (SELECT r.noteId from Noteuser r where r.userId=?2)")
	Page<Note> findByIsCollectedOrderByCreateTimeDesc  (long isCollected,long userid,Pageable pa);
	
	//通过目录查找是否已经收藏
	@Query("from Note n where n.isCollected=?1 and n.catalogId=?2 and n.noteId in (SELECT r.noteId from Noteuser r where r.userId=?3)")
	Page<Note> findByIsCollectedAndCatalogIdOrderByCreateTimeDesc(long isCollected,long  catalogId,long userid,Pageable pa);
	
	//查找目录
	@Query("from Note n where n.catalogId=?1 and n.noteId in (SELECT r.noteId from Noteuser r where r.userId=?2) ORDER BY n.createTime DESC")
	Page<Note> findByCatalogIdOrderByCreateTimeDesc(long catalogId,long userid,Pageable pa);
	
	//查找目录没有分页
	@Query("from Note n where n.catalogId=?1 and n.noteId in (SELECT r.noteId from Noteuser r where r.userId=?2)")
	List<Note> findByCatalogId(long catalogId,long userid);
	
	//查找目录再查找类型
	@Query("from Note n where n.typeId=?1 and n.catalogId=?2 and n.noteId in (SELECT r.noteId from Noteuser r where r.userId=?3)")
	Page<Note> findByTypeIdOrderByCreateTimeDesc(long typeId,long catalogId,long userid,Pageable pa);
	
	//直接查找类型
		@Query("from Note n where n.typeId=?1 and n.noteId in (SELECT r.noteId from Noteuser r where r.userId=?2)")
		Page<Note> findByTypeIdOrderByCreateTimeDesc(long typeId,long userid,Pageable pa);
	
	//四种模糊查找
	@Query("from Note n where (n.statusId in (SELECT s.statusId from SystemStatusList s where s.statusName like %?1%)"
			+ " or DATE_format(n.createTime,'%Y-%m-%d') like %?1%"
			+ " or n.typeId in (SELECT t.typeId from SystemTypeList t where t.typeName like %?1%) or n.title like %?1%) "
			+ "and n.noteId in (SELECT r.noteId from Noteuser r where r.userId=?2)"
			+ "")
	Page<Note> findBytitleOrderByCreateTimeDesc(String basekey,long userid,Pageable pa);
	
	//在目录里面进行查询
	@Query("from Note n where (n.statusId in (SELECT s.statusId from SystemStatusList s where s.statusName like %?1%)"
			+ " or DATE_format(n.createTime,'%Y-%m-%d') like %?1%"
			+ " or n.typeId in (SELECT t.typeId from SystemTypeList t where t.typeName like %?1%) or n.title like %?1%) "
			+ "and n.noteId in (SELECT r.noteId from Noteuser r where r.userId=?2) and n.catalogId=?3"
			+ "")
	Page<Note> findBytitleAndCatalogId(String basekey,long userid,long cataid,Pageable pa);
	
	//通过类型降序排序
	@Query("from Note n " 
			+ " where n.noteId in (SELECT r.noteId from Noteuser r where r.userId=?1) ORDER BY n.typeId DESC "
			+ "")
	Page<Note> findByUserssOrderByTypeIdDesc(long userid,Pageable pa);
	
	//通过类型升序排序
		@Query("from Note n " 
				+ " where n.noteId in (SELECT r.noteId from Noteuser r where r.userId=?1) ORDER BY n.typeId ASC"
				+ "")
		Page<Note> findByUserssOrderByTypeIdAsc(long userid,Pageable pa);
	
	//通过状态排序
	@Query("from Note n " 
			+ " where n.noteId in (SELECT r.noteId from Noteuser r where r.userId=?1) ORDER BY n.statusId DESC"
			+ "")
	Page<Note> findByUserssOrderByStatusIdDesc(long userid,Pageable pa);
	
	//通过状态排序
		@Query("from Note n" 
				+ " where n.noteId in (SELECT r.noteId from Noteuser r where r.userId=?1) ORDER BY n.statusId ASC"
				+ "")
	Page<Note> findByUserssOrderByStatusIdAsc(long userid,Pageable pa);

	//时间升序
		@Query("FROM Note n WHERE  n.noteId in (SELECT r.noteId from Noteuser r where r.userId=?1) ORDER BY n.createTime ASC")
		Page<Note> findByUserssOrderByCreateTimeAsc (Long userid,Pageable pa);

		//时间降序
			@Query("FROM Note n WHERE  n.noteId in (SELECT r.noteId from Noteuser r where r.userId=?1) ORDER BY n.createTime DESC")
			Page<Note> findByUserssOrderByCreateTimeDesc (Long userid,Pageable pa);
		
	//通过笔记id找到用户id
	@Query("from Noteuser nu where nu.noteId=?1 and nu.userId=?2")
	Noteuser finduserid(long noteid,Long userId);
	
	//排序
	@Query("from Note n where n.typeId=?1 and n.catalogId=?2 and n.noteId in (SELECT r.noteId from Noteuser r where r.userId=?3) ORDER BY n.typeId DESC")
	Page<Note> findByTypeIdOrderByTypeIdDesc(Long typeId, Long catalogId, long userid, Pageable pa);
	@Query("from Note n where n.typeId=?1 and n.catalogId=?2 and n.noteId in (SELECT r.noteId from Noteuser r where r.userId=?3) ORDER BY n.typeId ASC")
	Page<Note> findByTypeIdOrderByTypeIdAsc(Long typeId, Long catalogId, long userid, Pageable pa);
	@Query("from Note n where n.typeId=?1 and n.catalogId=?2 and n.noteId in (SELECT r.noteId from Noteuser r where r.userId=?3) ORDER BY n.statusId DESC")
	Page<Note> findByTypeIdOrderByStatusIdDesc(Long typeId, Long catalogId, long userid, Pageable pa);
	@Query("from Note n where n.typeId=?1 and n.catalogId=?2 and n.noteId in (SELECT r.noteId from Noteuser r where r.userId=?3) ORDER BY n.statusId ASC")
	Page<Note> findByTypeIdOrderByStatusIdAsc(Long typeId, Long catalogId, long userid, Pageable pa);
	@Query("from Note n where n.typeId=?1 and n.catalogId=?2 and n.noteId in (SELECT r.noteId from Noteuser r where r.userId=?3) ORDER BY n.createTime DESC")
	Page<Note> findByTypeIdOrderByCreateTimeAsc(Long typeId, Long catalogId, long userid, Pageable pa);

	
	@Query("from Note n where n.typeId=?1 and n.noteId in (SELECT r.noteId from Noteuser r where r.userId=?2) ORDER BY n.typeId DESC")
	Page<Note> findByTypeIdOrderByTypeIdDesc(Long typeId, long userid, Pageable pa);
	@Query("from Note n where n.typeId=?1 and n.noteId in (SELECT r.noteId from Noteuser r where r.userId=?2) ORDER BY n.typeId ASC")
	Page<Note> findByTypeIdOrderByTypeIdAsc(Long typeId, long userid, Pageable pa);
	@Query("from Note n where n.typeId=?1 and n.noteId in (SELECT r.noteId from Noteuser r where r.userId=?2) ORDER BY n.statusId DESC")
	Page<Note> findByTypeIdOrderByStatusIdDesc(Long typeId, long userid, Pageable pa);
	@Query("from Note n where n.typeId=?1 and n.noteId in (SELECT r.noteId from Noteuser r where r.userId=?2) ORDER BY n.statusId ASC")
	Page<Note> findByTypeIdOrderByStatusIdAsc(Long typeId, long userid, Pageable pa);
	@Query("from Note n where n.typeId=?1 and n.noteId in (SELECT r.noteId from Noteuser r where r.userId=?2) ORDER BY n.createTime DESC")
	Page<Note> findByTypeIdOrderByCreateTimeAsc(Long typeId, long userid, Pageable pa);

	
	@Query("from Note n where n.catalogId=?1 and n.noteId in (SELECT r.noteId from Noteuser r where r.userId=?2) ORDER BY n.typeId DESC ")
	Page<Note> findByCatalogIdOrderByTypeIdDesc(Long catalogId, long userid, Pageable pa);
	@Query("from Note n where n.catalogId=?1 and n.noteId in (SELECT r.noteId from Noteuser r where r.userId=?2) ORDER BY n.typeId ASC")
	Page<Note> findByCatalogIdOrderByTypeIdAsc(Long catalogId, long userid, Pageable pa);
	@Query("from Note n where n.catalogId=?1 and n.noteId in (SELECT r.noteId from Noteuser r where r.userId=?2) ORDER BY n.statusId DESC")
	Page<Note> findByCatalogIdOrderByStatusIdDesc(Long catalogId, long userid, Pageable pa);

	@Query("from Note n where n.catalogId=?1 and n.noteId in (SELECT r.noteId from Noteuser r where r.userId=?2) ORDER BY n.statusId ASC")
	Page<Note> findByCatalogIdOrderByStatusIdAsc(Long catalogId, long userid, Pageable pa);
	@Query("from Note n where n.catalogId=?1 and n.noteId in (SELECT r.noteId from Noteuser r where r.userId=?2) ORDER BY n.createTime ASC")
	Page<Note> findByCatalogIdOrderByCreateTimeAsc(Long catalogId, long userid, Pageable pa);
	

	
}
