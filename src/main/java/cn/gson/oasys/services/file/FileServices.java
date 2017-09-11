package cn.gson.oasys.services.file;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.UUID;

import org.apache.commons.io.FilenameUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import cn.gson.oasys.model.dao.filedao.FileListdao;
import cn.gson.oasys.model.dao.filedao.FilePathdao;
import cn.gson.oasys.model.entity.file.FileList;
import cn.gson.oasys.model.entity.file.FilePath;
import cn.gson.oasys.model.entity.user.User;

@Service
public class FileServices {
	
	Logger log = LoggerFactory.getLogger(getClass());
	
	@Autowired
	private FileListdao fldao;
	@Autowired
	private FilePathdao fpdao;
	
	@Value("${file.root.path}")
	private String rootPath;
	
	/**
	 * 根据父	ID 查询 到路径
	 * @param parentId
	 * @return
	 */
	public List<FilePath> findpathByparent(Long parentId){
		return fpdao.findByParentId(parentId);
	}
	
	/**
	 * 根据路径查询 文件集合
	 * @param filePath
	 * @return
	 */
	public List<FileList> findfileBypath(FilePath filePath){
		return fldao.findByFpath(filePath);
	}
	
	/**
	 * 根据文件路径 递归查询父级目录 
	 * @param filePath
	 * @param parentpaths
	 */
	public void findAllParent(FilePath filePath,List<FilePath> parentpaths){
		if (filePath.getParentId() != 1L) {
			FilePath filepath1 = fpdao.findOne(filePath.getParentId());
			parentpaths.add(filepath1);
			findAllParent(filepath1,parentpaths);
		}
	}
	
	public FileList savefile(MultipartFile file,User user,FilePath nowpath) throws IllegalStateException, IOException{
		List<FilePath> allparentpaths = new ArrayList<>();
		String nowparent = savepath(nowpath,allparentpaths);
		File savePath = new File(this.rootPath,nowparent);
		System.out.println(savePath.getPath());
		String shuffix = FilenameUtils.getExtension(file.getOriginalFilename());
		log.info("shuffix:{}",shuffix);
		String newFileName = UUID.randomUUID().toString().toLowerCase()+"."+shuffix;
		File targetFile = new File(savePath,newFileName);
		file.transferTo(targetFile);
		return null;
	}
	
	public String savepath(FilePath nowpath,List<FilePath> parentpaths){
		findAllParent(nowpath,parentpaths);
		Collections.reverse(parentpaths);
		String savepath = "";
		for (FilePath filePath : parentpaths) {
			savepath += filePath.getPathName()+"/";
		}
		savepath = savepath.substring(0, savepath.length()-1);
		return savepath;
	}
	

}
