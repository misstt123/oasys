package cn.gson.oasys.services.user;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.transaction.Transactional;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import cn.gson.oasys.model.dao.processdao.NotepaperDao;

@Service
@Transactional
public class NotepaperService {
	
	@Autowired
	private NotepaperDao ndao;
	
	@Value("${img.rootpath}")
	private String rootpath;
	
	public void delete(Long id){
		ndao.delete(id);
	}
	
	/**
	 * 上传头像
	 * @throws IOException 
	 * @throws IllegalStateException 
	 */
	public String upload(MultipartFile file) throws IllegalStateException, IOException{
		File dir=new File(rootpath);
		if(!dir.exists()){
			dir.mkdirs();
		}
		
		String fileName=file.getOriginalFilename();
		
		String suffix=FilenameUtils.getExtension(fileName);
		
		String newFileName = UUID.randomUUID().toString().toLowerCase() + "." + suffix;
		File targetFile = new File(dir,newFileName);
		file.transferTo(targetFile);
		
		String imgpath=targetFile.getPath().replace("D:\\ggit\\oa_system\\src\\main\\resources\\static\\images\\touxiang\\", "");
		
		return imgpath;
		
	}
}
