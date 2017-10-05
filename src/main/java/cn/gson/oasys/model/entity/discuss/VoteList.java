package cn.gson.oasys.model.entity.discuss;

import java.util.Date;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="aoa_voteList")
public class VoteList{
	
	@Id
	@Column(name="vote_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long voteId;				//主键id
	
	@Column(name="start_time")			//投票开始时间
	private Date startTime;
	
	@Column(name="end_time")			//投票结束时间
	private Date endTime;
	
	private Integer selectone;				//单选和多选
	
	@OneToOne(mappedBy = "voteList")
	private Discuss discuss;
	
	@OneToMany(mappedBy="voteList",fetch=FetchType.LAZY,cascade=CascadeType.ALL)
	private Set<VoteTitles> voteTitles;
	
	
	
	

	public Integer getSelectone() {
		return selectone;
	}

	public void setSelectone(Integer selectone) {
		this.selectone = selectone;
	}

	public Set<VoteTitles> getVoteTitles() {
		return voteTitles;
	}

	public void setVoteTitles(Set<VoteTitles> voteTitles) {
		this.voteTitles = voteTitles;
	}

	public Discuss getDiscuss() {
		return discuss;
	}

	public void setDiscuss(Discuss discuss) {
		this.discuss = discuss;
	}

	public Long getVoteId() {
		return voteId;
	}

	public void setVoteId(Long voteId) {
		this.voteId = voteId;
	}

	public Date getStartTime() {
		return startTime;
	}

	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}

	public Date getEndTime() {
		return endTime;
	}

	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}

	public VoteList() {
		super();
	}

	@Override
	public String toString() {
		return "VoteList [voteId=" + voteId + ", startTime=" + startTime + ", endTime=" + endTime + ", selectone=" + selectone
				+ "]";
	}
	
	
	
	
	
}
