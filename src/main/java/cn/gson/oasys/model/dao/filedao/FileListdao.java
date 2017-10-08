package cn.gson.oasys.model.dao.filedao;

import java.util.List;

import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import cn.gson.oasys.model.entity.file.FileList;
import cn.gson.oasys.model.entity.file.FilePath;
import cn.gson.oasys.model.entity.user.User;

@Repository
public interface FileListdao extends PagingAndSortingRepository<FileList, Long>{
	List<FileList> findByFpath(FilePath filepath);
	
	FileList findByFileNameAndFpath(String filename,FilePath filepath);
	
	List<FileList> findByUserAndContentTypeLike(User user,String contenttype);
}
