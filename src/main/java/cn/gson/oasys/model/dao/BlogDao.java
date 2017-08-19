package cn.gson.oasys.model.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import cn.gson.oasys.model.entity.Blog;


@Repository
public interface BlogDao extends CrudRepository<Blog, Integer> {
	
	@Query("from Blog blog where blog.userid=?1 and type=1 order by blog.tid desc")
	List<Blog> findUserBlog(@Param("userid")Integer userid);
	
	@Query("from Blog blog where blog.userid=?1 and type=0 order by blog.tid desc")
	List<Blog> findUserRecyBlog(@Param("userid")Integer userid);
	
	@Query("update Blog blog set blog.type=0 where blog.tid= ?1")
	@Modifying
	int deteleByid(@Param("tid")Integer tid);
	
	@Query("update Blog blog set blog.type=1 where blog.tid= ?1")
	@Modifying
	int findByid(@Param("tid")Integer tid);
	
	@Query("from Blog blog where blog.title like :searchs or blog.intro like :searchs or blog.keybody like :searchs")
	List<Blog> findContentLike(@Param("searchs")String searchs);
	
}
