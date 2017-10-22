package cn.gson.oasys.model.dao.filedao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import cn.gson.oasys.model.entity.file.FileList;
import cn.gson.oasys.model.entity.file.FilePath;
import cn.gson.oasys.model.entity.user.User;

@Repository
public interface FileListdao extends PagingAndSortingRepository<FileList, Long>{
	List<FileList> findByFpath(FilePath filepath);
	
	List<FileList> findByFpathAndFileIstrash(FilePath filepath,Long istrash);
	
	FileList findByFileNameAndFpath(String filename,FilePath filepath);
	
	List<FileList> findByUserAndContentTypeLikeAndFileIstrash(User user,String contenttype,Long istrash);
	
	List<FileList> findByUserAndFileIstrash(User user,Long istrash);
	
	@Query("from FileList f where f.user=?1 and f.fileIstrash=0 and f.contentType NOT LIKE 'image/%' and f.contentType NOT LIKE 'application/x%' and f.contentType NOT LIKE 'video/%' and f.contentType NOT LIKE 'audio/%'")
	List<FileList> finddocument(User user);
	
	@Query("from FileList f where f.user=?1 and f.fileIstrash=0 and f.fileName LIKE ?2 and f.contentType NOT LIKE 'image/%' and f.contentType NOT LIKE 'application/x%' and f.contentType NOT LIKE 'video/%' and f.contentType NOT LIKE 'audio/%'")
	List<FileList> finddocumentlike(User user ,String likefilename);
	
	List<FileList> findByUserAndFileIstrashAndContentTypeLikeAndFileNameLike(User user,Long istrash,String contenttype,String likefilename);
	
	List<FileList> findByFileIsshareAndFileIstrash(Long isshare,Long istrash);
	
	List<FileList> findByFileIsshareAndFileNameLike(Long isshare,String likefile);
	
	List<FileList> findByUserAndFileIsshareAndFileIstrash(User user,Long isshare,Long istrash);
	
	List<FileList> findByUserAndFileIstrashAndFileNameLike(User user,Long istrash,String likefile);
	
}
