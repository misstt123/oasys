package cn.gson.oasys.model.dao.discuss;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import cn.gson.oasys.model.entity.discuss.Discuss;
import cn.gson.oasys.model.entity.discuss.Reply;

public interface ReplyDao extends JpaRepository<Reply, Long>{
	//根据讨论表的id来找所有的回复表
	List<Reply> findByDiscuss(Discuss discuss);
	
}
