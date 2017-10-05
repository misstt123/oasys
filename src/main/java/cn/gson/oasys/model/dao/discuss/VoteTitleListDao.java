package cn.gson.oasys.model.dao.discuss;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import cn.gson.oasys.model.entity.discuss.VoteList;
import cn.gson.oasys.model.entity.discuss.VoteTitles;

public interface VoteTitleListDao extends JpaRepository<VoteTitles, Long>{
	
	List<VoteTitles> findByVoteList(VoteList voteList);
}
