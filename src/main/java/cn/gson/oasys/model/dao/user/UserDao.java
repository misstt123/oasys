package cn.gson.oasys.model.dao.user;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;

import cn.gson.oasys.model.entity.user.User;

public interface UserDao extends PagingAndSortingRepository<User, Long>{
    
	List<User>  findByUserId(Long id);
	
	List<User> findByFatherId(Long parentid);
	
	@Query("select u.userId from User u where u.userName=:name")
	Long findid(@Param("name")String name);
}
