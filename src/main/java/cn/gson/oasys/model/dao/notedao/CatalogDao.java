package cn.gson.oasys.model.dao.notedao;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import cn.gson.oasys.model.entity.note.Catalog;
import cn.gson.oasys.model.entity.note.Note;

@Repository
public interface CatalogDao  extends PagingAndSortingRepository<Catalog, Long>{

	@Query("select catalogId from Note n where n.catalogName=?1")
	Long findByCatalogName(String catalogname);
}
