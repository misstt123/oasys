package cn.gson.oasys.model.entity.note;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * catalog_id
 * type_id 
 * status_id
 * attach_id
 * publisher_id就是用户id
 * 外键没有连
 * @author admin
 *
 *---笔记表----
 */
@Entity
@Table(name="aoa_note_list")
public class Note {

	@Id
	@Column(name="note_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long noteId; //笔记id
	
	private String title;//笔记标题
	
	private String content;//内容
	
	@Column(name="create_time")
	private Date createTime;//发布时间

	public Note() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Note(Long noteId, String title, String content, Date createTime) {
		super();
		this.noteId = noteId;
		this.title = title;
		this.content = content;
		this.createTime = createTime;
	}

	public Long getNoteId() {
		return noteId;
	}

	public void setNoteId(Long noteId) {
		this.noteId = noteId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	@Override
	public String toString() {
		return "Note [noteId=" + noteId + ", title=" + title + ", content=" + content + ", createTime=" + createTime
				+ "]";
	}
	
	
	
}
