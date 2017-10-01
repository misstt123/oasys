package cn.gson.oasys.model.dao.notedao;

import java.util.List;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import cn.gson.oasys.model.entity.note.Catalog;
import cn.gson.oasys.model.entity.note.Note;

@Repository
public interface CatalogDao  extends PagingAndSortingRepository<Catalog, Long>{
	
	//删除
	@Query("delete from Catalog c where c.catalogId=?1 ")
	@Modifying
	Integer delete(long catalogId);
	
	@Query("select catalogId from Catalog c where c.catalogName=?1")
	Long findByCatalogName(String catalogname);
	
	@Query("from Catalog c where c.user.userId=?1")
	List<Catalog> findcatauser(long userid);
	
	@Query("select c.catalogName from Catalog c where c.user.userId=?1")
	List<String> findcataname(long userid);
	
	//通过目录id找到用户id
	@Query("select c.user.userId from Catalog c where c.catalogId=?1")
    long finduserid(long catalogId);
	
	
	
	
}
