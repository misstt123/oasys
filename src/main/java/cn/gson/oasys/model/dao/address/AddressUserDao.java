package cn.gson.oasys.model.dao.address;

import java.util.List;
import java.util.Set;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import cn.gson.oasys.model.entity.note.Director;
import cn.gson.oasys.model.entity.note.DirectorUser;
import cn.gson.oasys.model.entity.user.User;

public interface AddressUserDao extends JpaRepository<DirectorUser, Long>{
	
	//根据用户来查找目录，并去重
	@Query("select d.catalogName from DirectorUser d where d.user= ?1 and (d.catalogName !=null and d.catalogName !='')")
	Set<String> findByUser(User user);
	
	//根据外部联系人来找中间表的集合
	List<DirectorUser> findByDirector(Director director);
	
	//根据用户和目录名字 找集合
	List<DirectorUser> findByCatalogNameAndUser(String catalog,User user);
	
	//通过外部通讯录和用户查找唯一的中间表
	DirectorUser findByDirectorAndUser(Director director, User user);
	
	//通过分享用户查找有所该用户的分享给别人的记录
	Page<DirectorUser> findByShareuser(User user,Pageable pa);
	
	//查找给我的所有的记录；1、分享的用户不能为空；，当前用户
	Page<DirectorUser> findByUserAndShareuserNotNull(User user,Pageable pa);
	
	List<DirectorUser> findByUserAndShareuserNotNullAndHandle(User user,Boolean boo);
	
	//模糊查询；可根据联系人名字、电话、用户名字查找中间表
	@Query("from DirectorUser du where (du.director.userName like ?1 or du.director.phoneNumber like ?1 or du.user.userName like ?1) and du.user =?2 and du.shareuser is NOT null")
	Page<DirectorUser> findBaseKey(String baseKey,User user,Pageable pa);
	
}
