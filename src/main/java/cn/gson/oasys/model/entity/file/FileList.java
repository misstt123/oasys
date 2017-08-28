package cn.gson.oasys.model.entity.file;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "aoa_file_list")
public class FileList {
	
	@Id
	@Column(name = "file_id")
	private Long fileId;	//文件id
	
	@Column(name = "file_name")
	private String fileName;	//文件名字
	
	@Column(name = "file_path")
	private String filePath;	//文件路径
	
	private Long size;	//文件大小
	
	@Column(name = "file_type_id")
	private Integer fileType;	//文件类型id（共享公司个人）
	
	@Column(name = "upload_time")
	private Date uploadTime;	//上传时间
	
	@Column(name = "user_id")
	private Long userId;		//manytoone 外键 字段user_id
	
	private String model;		//所属模块
	
	@Column(name = "file_shuffix")
	private String fileShuffix;	//文件后缀名

	private Long pathId;		//文件路劲id  一对一 外键字段 path_id

	public FileList() {
		
	}

	public Long getFileId() {
		return fileId;
	}

	public void setFileId(Long fileId) {
		this.fileId = fileId;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getFilePath() {
		return filePath;
	}

	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}

	public Long getSize() {
		return size;
	}

	public void setSize(Long size) {
		this.size = size;
	}

	public Integer getFileType() {
		return fileType;
	}

	public void setFileType(Integer fileType) {
		this.fileType = fileType;
	}

	public Date getUploadTime() {
		return uploadTime;
	}

	public void setUploadTime(Date uploadTime) {
		this.uploadTime = uploadTime;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public String getFileShuffix() {
		return fileShuffix;
	}

	public void setFileShuffix(String fileShuffix) {
		this.fileShuffix = fileShuffix;
	}

	public Long getPathId() {
		return pathId;
	}

	public void setPathId(Long pathId) {
		this.pathId = pathId;
	}

	@Override
	public String toString() {
		return "FileList [fileId=" + fileId + ", fileName=" + fileName + ", filePath=" + filePath + ", size=" + size
				+ ", fileType=" + fileType + ", uploadTime=" + uploadTime + ", userId=" + userId + ", model=" + model
				+ ", fileShuffix=" + fileShuffix + ", pathId=" + pathId + "]";
	}
	

}
