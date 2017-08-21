package cn.gson.oasys.model.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name="aoa_voteTitles")
@Entity
public class VoteTitles{
		
	@Id
	@Column(name="title_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private  Long titleId;
	
	@Column(name="vote_id")				//投票id
	private Long voteId;				
	
	private String  title;				//投票标题
	
	private String color;				//进度条颜色

	
	public Long getTitleId() {
		return titleId;
	}

	public void setTitleId(Long titleId) {
		this.titleId = titleId;
	}

	public Long getVoteId() {
		return voteId;
	}

	public void setVoteId(Long voteId) {
		this.voteId = voteId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public VoteTitles() {
		super();
	}
	
	
}
