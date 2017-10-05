package cn.gson.oasys.model.entity.process;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="aoa_subject")
//费用科目明细表
public class Subject {

	@Id
	@Column(name="subject_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long subjectId;
	
	@Column(name="parent_id")
	private Long parentId;
	
	private String name;

	public Long getSubjectId() {
		return subjectId;
	}

	public void setSubjectId(Long subjectId) {
		this.subjectId = subjectId;
	}


	public Long getParentId() {
		return parentId;
	}

	public void setParentId(Long parentId) {
		this.parentId = parentId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "Subject [subjectId=" + subjectId + ", parentId=" + parentId + ", name=" + name + "]";
	}
	
	
}
