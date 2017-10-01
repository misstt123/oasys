package cn.gson.oasys.model.dao.discuss;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import cn.gson.oasys.model.entity.discuss.Discuss;
import cn.gson.oasys.model.entity.user.User;

public interface DiscussDao extends JpaRepository<Discuss, Long>{
	
	//根据用户来查找讨论区的自己所发布的；
	Page<Discuss> findByUser(User user,Pageable pa);
	
	//根据用户的标题来找
	Page<Discuss> findByUserAndTitleLike(User user,String title,Pageable pa);
	
	//根据标题来找
	Page<Discuss> findByTitleLike(String title,Pageable pa);
}
