package cn.gson.oasys.model.dao.notedao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import cn.gson.oasys.model.entity.note.Catalog;
import cn.gson.oasys.model.entity.note.Note;

@Repository
public interface CatalogDao  extends PagingAndSortingRepository<Catalog, Long>{

	@Query("select catalogId from Catalog c where c.catalogName=?1")
	Long findByCatalogName(String catalogname);
	
	@Query("from Catalog c where c.user.userId=?1")
	List<Catalog> findcatauser(long userid);
	
	@Query("select c.catalogName from Catalog c where c.user.userId=?1")
	List<String> findcataname(long userid);
}
