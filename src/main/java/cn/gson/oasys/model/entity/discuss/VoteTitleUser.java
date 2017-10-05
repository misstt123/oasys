package cn.gson.oasys.model.entity.discuss;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import cn.gson.oasys.model.entity.user.User;

@Entity
@Table(name="aoa_vote_title_user")
public class VoteTitleUser{
	
		@Id
		@Column(name="vote_title_user_id")
		@GeneratedValue(strategy=GenerationType.IDENTITY)
		private Long voteTitleUserId;
			
//		@Column(name="title_id")	//标题
//		private Long  titleId;
//		
//		@Column(name="user_id")		//用户id
//		private Long  userId;
		
		@Column(name="vote_id")		//投票id
		private Long  voteId;
		
		@ManyToOne
		@JoinColumn(name = "title_id")
		private VoteTitles voteTitles;
		
		@ManyToOne
		@JoinColumn(name = "user_id")
		private User user;
		
		
		public VoteTitleUser() {
			super();
			// TODO Auto-generated constructor stub
		}

		public VoteTitleUser(Long voteId, VoteTitles voteTitles, User user) {
			super();
			this.voteId = voteId;
			this.voteTitles = voteTitles;
			this.user = user;
		}

		public Long getVoteTitleUserId() {
			return voteTitleUserId;
		}

		public void setVoteTitleUserId(Long voteTitleUserId) {
			this.voteTitleUserId = voteTitleUserId;
		}

		public Long getVoteId() {
			return voteId;
		}

		public void setVoteId(Long voteId) {
			this.voteId = voteId;
		}

		public VoteTitles getVoteTitles() {
			return voteTitles;
		}

		public void setVoteTitles(VoteTitles voteTitles) {
			this.voteTitles = voteTitles;
		}

		public User getUser() {
			return user;
		}

		public void setUser(User user) {
			this.user = user;
		}

		@Override
		public String toString() {
			return "VoteTitleUser [voteTitleUserId=" + voteTitleUserId + ", voteId=" + voteId + "]";
		}
		
		
}
