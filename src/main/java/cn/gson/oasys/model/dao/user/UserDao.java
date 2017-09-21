package cn.gson.oasys.model.dao.user;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;

import cn.gson.oasys.model.entity.user.User;

public interface UserDao extends PagingAndSortingRepository<User, Long>{
    
	List<User>  findByUserId(Long id);
	
	List<User> findByFatherId(Long parentid);
	
	@Query("select u from User u where u.userName=:name")
	User findid(@Param("name")String name);
	
	@Query("select tu.pkId from Taskuser tu where tu.taskId.taskId=:taskid and tu.userId.userId=:userid")
	Long findpkId(@Param("taskid")Long taskid,@Param("userid")Long userid);
	
	//根据名字找用户
	User findByUserName(String title);
	
	
	
}
