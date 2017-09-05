package cn.gson.oasys.model.entity.file;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "aoa_file_path")
public class FilePath {
	
	@Id
	@Column(name = "path_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;	//路径id
	
	@Column(name = "parent_id")
	private Long parentId;
	
	@Column(name = "path_name")
	private String pathName;
	
	@OneToOne(mappedBy = "fpath")
	private FileList fileList;

	public FilePath() {

	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getParentId() {
		return parentId;
	}

	public void setParentId(Long parentId) {
		this.parentId = parentId;
	}

	public String getPathName() {
		return pathName;
	}

	public void setPathName(String pathName) {
		this.pathName = pathName;
	}
	

	public FileList getFileList() {
		return fileList;
	}

	public void setFileList(FileList fileList) {
		this.fileList = fileList;
	}

	@Override
	public String toString() {
		return "FilePath [id=" + id + ", parentId=" + parentId + ", pathName=" + pathName + "]";
	}
	
}
