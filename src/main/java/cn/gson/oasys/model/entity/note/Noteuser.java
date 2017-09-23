package cn.gson.oasys.model.entity.note;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="aoa_receiver_note")
public class Noteuser {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	/**
	 * 笔记id
	 */
	@Column(name = "note_id", nullable = false)
	private Long noteId;
	
	/**
	 * 用户id
	 */
	@Column(name = "user_id", nullable = false)
	private Long userId;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getNoteId() {
		return noteId;
	}

	public void setNoteId(Long noteId) {
		this.noteId = noteId;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	@Override
	public String toString() {
		return "Noteuser [id=" + id + ", noteId=" + noteId + ", userId=" + userId + "]";
	}

	public Noteuser(Long id, Long noteId, Long userId) {
		super();
		this.id = id;
		this.noteId = noteId;
		this.userId = userId;
	}

	public Noteuser() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	
}
