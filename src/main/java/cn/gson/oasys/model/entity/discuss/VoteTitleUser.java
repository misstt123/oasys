package cn.gson.oasys.model.entity.discuss;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="aoa_vote_title_user")
public class VoteTitleUser{
		
		@Column(name="title_id")	//标题
		private Long  titleId;
		
		@Column(name="user_id")		//用户id
		private Long  userId;
		
		@Column(name="vote_id")		//投票id
		private Long  voteId;
}
