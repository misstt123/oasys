package cn.gson.oasys.model.dao.address;

import java.util.List;
import java.util.Set;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import cn.gson.oasys.model.entity.note.Director;
import cn.gson.oasys.model.entity.note.DirectorUser;
import cn.gson.oasys.model.entity.user.User;

public interface AddressUserDao extends JpaRepository<DirectorUser, Long>{
	
	//根据用户来查找目录，并去重
	@Query("select d.catalogName from DirectorUser d where d.user= ?1 and (d.catalogName !=null and d.catalogName !='')")
	Set<String> findByUser(User user);
	
	//根据用户和目录名字 找集合
	List<DirectorUser> findByCatalogNameAndUser(String catalog,User user);
	
	DirectorUser findByDirectorAndUser(Director director, User user);
	
	
}
