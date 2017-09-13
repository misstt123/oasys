package cn.gson.oasys.services.file;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
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
	
	private int filenamemun=1;
	
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
	
	/**
	 * 保存文件
	 * @param file
	 * @param user
	 * @param nowpath
	 * @return
	 * @throws IllegalStateException
	 * @throws IOException
	 */
	public Object savefile(MultipartFile file,User user,FilePath nowpath,boolean isfile) throws IllegalStateException, IOException{
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy/MM");
		File root = new File(this.rootPath,simpleDateFormat.format(new Date()));
		
		File savepath = new File(root,user.getUserName());
		//System.out.println(savePath.getPath());
		
		if (!savepath.exists()) {
			savepath.mkdirs();
		}
		
		String shuffix = FilenameUtils.getExtension(file.getOriginalFilename());
		log.info("shuffix:{}",shuffix);
		String newFileName = UUID.randomUUID().toString().toLowerCase()+"."+shuffix;
		File targetFile = new File(savepath,newFileName);
		file.transferTo(targetFile);
		
		if(isfile){
			FileList filelist = new FileList();
			System.out.println(file.getOriginalFilename());
			filelist.setFileName(file.getOriginalFilename());
			filelist.setFilePath(targetFile.getAbsolutePath().replace("\\", "/").replace(this.rootPath, ""));
			filelist.setFileShuffix(shuffix);
			filelist.setSize(file.getSize());
			filelist.setUploadTime(new Date());
			filelist.setFpath(nowpath);
			filelist.setUser(user);
			fldao.save(filelist);
			return filelist;
		}else{
			
		}
		return null;
	}
	
	public String onlyfilename(String filename,FilePath filepath){
		FileList fileList = fldao.findByFileNameAndFpath(filename, filepath);
		String newname="";
		if(fileList != null){
			newname += fileList.getFileName()+"("+this.filenamemun+")";
			this.filenamemun += 1;
		}
		return newname;
	}
	
	/**
	 * 找到父级目录 并 拼接成路径
	 * @param nowpath
	 * @param parentpaths
	 * @return
	 */
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
