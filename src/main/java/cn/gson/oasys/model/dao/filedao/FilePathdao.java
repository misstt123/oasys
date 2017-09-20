package cn.gson.oasys.model.dao.filedao;

import java.util.List;

import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import cn.gson.oasys.model.entity.file.FilePath;

@Repository
public interface FilePathdao extends PagingAndSortingRepository<FilePath, Long> {
	List<FilePath> findByParentId(Long parentId);
	
	FilePath findByPathNameAndParentId(String pathname,Long parentId);
	
	FilePath findByPathName(String pathname);
}
