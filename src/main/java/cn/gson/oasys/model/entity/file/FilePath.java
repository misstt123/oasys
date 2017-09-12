package cn.gson.oasys.model.entity.file;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name = "aoa_file_path")
public class FilePath {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "path_id")
	private Long id;	//路径id
	
	@Column(name = "parent_id")
	private Long parentId;
	
	@Column(name = "path_name")
	private String pathName;
	
	@OneToMany(mappedBy = "fpath")
	@JsonIgnore
	private List<FileList> fileList;

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
	

	public List<FileList> getFileList() {
		return fileList;
	}

	public void setFileList(List<FileList> fileList) {
		this.fileList = fileList;
	}

	@Override
	public String toString() {
		return "FilePath [id=" + id + ", parentId=" + parentId + ", pathName=" + pathName + "]";
	}
	
}
