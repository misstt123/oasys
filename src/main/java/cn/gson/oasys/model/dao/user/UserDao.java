package cn.gson.oasys.model.dao.user;

import java.util.List;

import org.springframework.data.repository.PagingAndSortingRepository;

import cn.gson.oasys.model.entity.user.User;

public interface UserDao extends PagingAndSortingRepository<User, Long>{
    
	List<User>  findByUserId(Long id);
	
	List<User> findByFatherId(Long parentid);
}
