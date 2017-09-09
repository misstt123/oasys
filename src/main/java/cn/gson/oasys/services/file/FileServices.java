package cn.gson.oasys.services.file;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.gson.oasys.model.dao.filedao.FileListdao;
import cn.gson.oasys.model.dao.filedao.FilePathdao;
import cn.gson.oasys.model.entity.file.FileList;
import cn.gson.oasys.model.entity.file.FilePath;

@Service
public class FileServices {
	@Autowired
	private FileListdao fldao;
	@Autowired
	private FilePathdao fpdao;
	
	public List<FilePath> findpathByparent(Long parentId){
		return fpdao.findByParentId(parentId);
	}
	
	public List<FileList> findfileBypath(FilePath filePath){
		return fldao.findByFpath(filePath);
	}
	
	public void findAllParent(FilePath filePath,List<FilePath> parentpaths){
		if (filePath.getParentId() != 1L) {
			FilePath filepath1 = fpdao.findOne(filePath.getParentId());
			parentpaths.add(filepath1);
			findAllParent(filepath1,parentpaths);
		}
	}

}
