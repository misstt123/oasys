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
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import cn.gson.oasys.model.dao.filedao.FileListdao;
import cn.gson.oasys.model.dao.filedao.FilePathdao;
import cn.gson.oasys.model.dao.notedao.AttachService;
import cn.gson.oasys.model.dao.notedao.AttachmentDao;
import cn.gson.oasys.model.entity.file.FileList;
import cn.gson.oasys.model.entity.file.FilePath;
import cn.gson.oasys.model.entity.note.Attachment;
import cn.gson.oasys.model.entity.user.User;

@Service
public class FileServices {
	
	Logger log = LoggerFactory.getLogger(getClass());
	
	@Autowired
	private FileListdao fldao;
	@Autowired
	private FilePathdao fpdao;
	@Autowired
	private AttachmentDao AttDao;
	@Autowired
	private AttachService AttachService;
	
	
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
	
	/**
	 * 保存文件以及附件
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
			String filename = file.getOriginalFilename();
			filename = onlyname(filename,nowpath,shuffix,1,true);
			filelist.setFileName(filename);
			filelist.setFilePath(targetFile.getAbsolutePath().replace("\\", "/").replace(this.rootPath, ""));
			filelist.setFileShuffix(shuffix);
			filelist.setSize(file.getSize());
			filelist.setUploadTime(new Date());
			filelist.setFpath(nowpath);
			filelist.setContentType(file.getContentType());
			filelist.setUser(user);
			fldao.save(filelist);
			return filelist;
		}else{
			Attachment attachment=new Attachment();
			attachment.setAttachmentName(file.getOriginalFilename());
			attachment.setAttachmentPath(targetFile.getAbsolutePath().replace("\\", "/").replace(this.rootPath, ""));
			attachment.setAttachmentShuffix(shuffix);
			attachment.setAttachmentSize(file.getSize());
			attachment.setAttachmentType(file.getContentType());
			attachment.setUploadTime(new Date());
			attachment.setUserId(user.getUserId()+"");
			AttDao.save(attachment);
			return attachment;
		}
	}
	
	//修改附件
	public Integer updateatt(MultipartFile file,User user,FilePath nowpath,long attid) throws IllegalStateException, IOException{
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy/MM");
		File root = new File(this.rootPath,simpleDateFormat.format(new Date()));
		
		File savepath = new File(root,user.getUserName());
		//System.out.println(savePath.getPath());
		
		if (!savepath.exists()) {
			savepath.mkdirs();
		}
		if(!file.isEmpty()){
		String shuffix = FilenameUtils.getExtension(file.getOriginalFilename());
		log.info("shuffix:{}",shuffix);
		String newFileName = UUID.randomUUID().toString().toLowerCase()+"."+shuffix;
		File targetFile = new File(savepath,newFileName);
		file.transferTo(targetFile);
		
		
		return AttachService.updateatt(file.getOriginalFilename(),
				targetFile.getAbsolutePath().replace("\\", "/").replace(this.rootPath, ""), shuffix, file.getSize(),
			    file.getContentType(), new Date(), attid);
		}
		return 0;
	}
	
	
	/**
	 * 根据文件id 批量 删除文件  同时删除 数据库以及本地文件
	 * @param fileids
	 */
	@Transactional
	public void deleteFile(List<Long> fileids){
		for (Long fileid : fileids) {
			FileList filelist = fldao.findOne(fileid);
			File file = new File(this.rootPath,filelist.getFilePath());
			//System.out.println(fileid+":"+file.exists());
			if(file.exists()&&file.isFile()){
				System.out.println("现在删除"+filelist.getFileName()+"本地文件    >>>>>>>>>");
				file.delete();
				System.out.println("现在删除"+filelist.getFileName()+"数据库存档>>>>>>>>>");
				fldao.delete(fileid);
			}
		}
	}
	
	/**
	 * 根据文件夹id 批量删除 文件夹    并删除此路径下的所有文件以及文件夹
	 * @param pathids
	 */
	@Transactional
	public void deletePath(List<Long> pathids){
		for (Long pathid : pathids) {
			FilePath filepath = fpdao.findOne(pathid);
//			System.out.println("第一个文件夹："+filepath);
			
			//首先删除此文件夹下的文件
			List<FileList> files = fldao.findByFpath(filepath);
			if(!files.isEmpty()){
//				System.out.println("找到第一个文件夹下的文件不为空！~~~");
//				System.out.println(files);
				List<Long> fileids= new ArrayList<>();
				for (FileList filelist : files) {
					fileids.add(filelist.getFileId());
				}
				deleteFile(fileids);
			}
			
			//然后删除此文件夹下的文件夹
			List<FilePath> filepaths = fpdao.findByParentId(pathid);
			if(!filepaths.isEmpty()){
				List<Long> pathids2 = new ArrayList<>();
				for (FilePath filePath : filepaths) {
					pathids2.add(filePath.getId());
				}
				deletePath(pathids2);
			}
			
			fpdao.delete(filepath);
		}
	}
	
	/**
	 * 复制和移动
	 * @param ids
	 * @param fromwhere  1为移动  2 为复制
	 */
	@Transactional
	public void moveAndcopy(List<Long> mcfileids,List<Long> mcpathids,Long topathid,boolean fromwhere){
		FilePath topath = fpdao.findOne(topathid);
		if(fromwhere){
			System.out.println("这里是移动！！~~");
			if(!mcfileids.isEmpty()){
				System.out.println("fileid is not null");
				for (Long mcfileid : mcfileids) {
					FileList filelist = fldao.findOne(mcfileid);
					String filename = onlyname(filelist.getFileName(),topath,filelist.getFileShuffix(),1,true);
					filelist.setFpath(topath);
					filelist.setFileName(filename);
					fldao.save(filelist);
				}
			}
			if(!mcpathids.isEmpty()){
				System.out.println("pathid is not null");
				for (Long mcpathid : mcpathids) {
					FilePath filepath = fpdao.findOne(mcpathid);
					String name = onlyname(filepath.getPathName(), topath, null, 1, false);
					filepath.setParentId(topathid);
					filepath.setPathName(name);
					fpdao.save(filepath);
				}
			}
		}else{
			System.out.println("这里是复制！！~~");
		}
	}
	
	/**
	 * 文件以及路径得同名处理
	 * @param name
	 * @param filepath
	 * @param shuffix
	 * @param num
	 * @return
	 */
	public String onlyname(String name,FilePath filepath,String shuffix,int num,boolean isfile){
		Object f = null;
		if (isfile) {
			f = fldao.findByFileNameAndFpath(name, filepath);
		}else{
			f = fpdao.findByPathNameAndParentId(name, filepath.getId());
		}
		if(f != null){
			int num2 = num -1;
			if(shuffix == null){
				name = name.replace("("+num2+")", "")+"("+num+")";
			}else{
				name = name.replace("."+shuffix,"").replace("("+num2+")", "")+"("+num+")"+"."+shuffix;
			}
			num += 1;
			return onlyname(name,filepath,shuffix,num,isfile);
		}
		return name;
	}
	/**
	 * 得到文件
	 * @param filepath
	 * @return
	 */
	public File getFile(String filepath){
		return new File(this.rootPath,filepath);
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
	
	/**
	 * 复制和移动  根据上级目录id 查询 所有子目录
	 * @param parentid
	 * @return
	 */
	public List<FilePath> moveandcopy(Long parentid){
		List<FilePath> filePaths= fpdao.findByParentId(parentid);
		return filePaths;
	}
	
	
	/**
	 * 获取附件
	 * 
	 * @param att
	 * @return
	 */
	public File get(Attachment att) {
		return new File(this.rootPath+att.getAttachmentPath());
	}
	
	public Attachment get(String filePath) {
		return AttDao.findByAttachmentPath(filePath);
	}
	
	
	
}
