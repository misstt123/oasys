package cn.gson.oasys.model.dao.user;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;

import cn.gson.oasys.model.entity.user.Dept;
import cn.gson.oasys.model.entity.user.User;

public interface UserDao extends JpaRepository<User, Long>{
    
	List<User>  findByUserId(Long id);
	
	List<User>  findByFatherId(Long parentid);
	
	Page<User> findByFatherId(Long parentid,Pageable pa);
	
	//名字模糊查找
	@Query("select u from User u where  (u.userName like %?1% or u.realName like %?1%) and u.fatherId=?2 ")
	Page<User> findbyFatherId(String name,Long parentid,Pageable pa);
	
	@Query("select u from User u where u.userName=:name")
	User findid(@Param("name")String name);
	
	@Query("select tu.pkId from Taskuser tu where tu.taskId.taskId=:taskid and tu.userId.userId=:userid")
	Long findpkId(@Param("taskid")Long taskid,@Param("userid")Long userid);
	
	//根据名字找用户
	User findByUserName(String title);
	
	//根据用户名模糊查找
	@Query("from User u where u.userName like %:name% or u.realName like %:name%")
	Page<User> findbyUserNameLike(@Param("name")String name,Pageable pa);
	//根据真实姓名模糊查找
	Page<User> findByrealNameLike(String title,Pageable pa);
	
	//根据姓名首拼模糊查找，并分页
	Page<User> findByPinyinLike(String pinyin,Pageable pa);
	
	//根据姓名首拼+查找关键字查找(部门、姓名、电话号码)，并分页
	@Query("from User u where (u.userName like ?1 or u.dept.deptName like ?1 or u.userTel like ?1 or u.position.name like ?1) and u.pinyin like ?2")
	Page<User> findSelectUsers(String baseKey,String pinyinm,Pageable pa);
	
	//根据姓名首拼+查找关键字查找(部门、姓名、电话号码)，并分页
	@Query("from User u where u.userName like ?1 or u.dept.deptName like ?1 or u.userTel like ?1 or u.position.name like ?1 or u.pinyin like ?2")
	Page<User> findUsers(String baseKey,String baseKey2,Pageable pa);
	/**
	 * 用户管理查询可用用户
	 * @param isLock
	 * @param pa
	 * @return
	 */
	Page<User> findByIsLock(Integer isLock,Pageable pa);
	
	
	@Query("from User u where u.dept.deptName like %?1% or u.userName like %?1% or u.realName like %?1% or u.userTel like %?1% or u.role.roleName like %?1%")
	Page<User> findnamelike(String name,Pageable pa);
	
	List<User> findByDept(Dept dept);
	@Query("select u from User u where u.role.roleId=?1")
	List<User> findrole(Long lid); 
	
	/*通过（用户名或者电话号码）+密码查找用户*/
	@Query("from User u where (u.userName = ?1 or u.userTel = ?1) and u.password =?2")
	User findOneUser(String userName,String password);
}
