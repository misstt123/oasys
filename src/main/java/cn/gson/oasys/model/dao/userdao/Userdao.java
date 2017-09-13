package cn.gson.oasys.model.dao.userdao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import cn.gson.oasys.model.entity.user.User;

public interface Userdao extends CrudRepository<User, Long>{
	
	List<User>  findByUserId(Long id);

	List<User> findByFatherId(Long parentid);
}
