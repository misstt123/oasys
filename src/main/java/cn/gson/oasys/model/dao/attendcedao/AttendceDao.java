package cn.gson.oasys.model.dao.attendcedao;

import java.util.Date;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import cn.gson.oasys.model.entity.attendce.Attends;
import cn.gson.oasys.model.entity.note.Attachment;
import cn.gson.oasys.model.entity.note.Note;
import cn.gson.oasys.model.entity.user.User;

@Repository
public interface AttendceDao  extends JpaRepository<Attends, Long>{
		@Query("update Attends a set a.attendsTime=?1 ,a.attendHmtime=?2 ,a.statusId=?3 where a.attendsId=?4 ")
	@Modifying(clearAutomatically=true)
	Integer updateatttime(Date date,String hourmin,Long statusIdlong ,long attid);
	
		@Query("delete from Attends a where a.attendsId=?1")
		@Modifying
		Integer delete(long aid);
		
	//查找某用户当天下班的考勤记录id
	@Query(nativeQuery=true,value="select a.attends_id from aoa_attends_list a WHERE DATE_format(a.attends_time,'%Y-%m-%d') like %?1% and a.attends_user_id=?2 and a.type_id=9 ")
	Long findoffworkid(String date,long userid);
	
	//查找某用户某天总共的记录
	@Query(nativeQuery=true,value="SELECT COUNT(*) from aoa_attends_list a WHERE DATE_format(a.attends_time,'%Y-%m-%d') like %?1% and a.attends_user_id=?2 ")
	Integer countrecord(String date,long userid);
	
	//查找某用户某天最新记录用来显示用户最新的类型和考勤时间
@Query(nativeQuery=true,value="SELECT * from aoa_attends_list a WHERE DATE_format(a.attends_time,'%Y-%m-%d') like %?1% and a.attends_user_id=?2 ORDER  BY a.attends_time DESC  LIMIT 1")
Attends findlastest(String date,long userid);


@Query("from Attends a where a.user.userId=:userId ORDER BY a.attendsTime DESC")
  Page<Attends> findByUserOrderByAttendsTimeDesc(@Param("userId")long userid,Pageable pa);

//按照某个用户模糊查找
@Query("from Attends a where  (a.attendsRemark like %?1% or DATE_format(a.attendsTime,'%Y-%m-%d') like %?1% or a.user.userName like %?1% or "
  		+ "a.typeId in (select t.typeId from SystemTypeList t where t.typeName like %?1%) or "
  		+ "a.statusId in (select s.statusId from SystemStatusList s where s.statusName like %?1%)) and a.user.userId=?2")
Page<Attends> findonemohu(String baseKey,long userid,Pageable pa);



  @Query("from Attends a where a.user.userId in (:ids) ORDER BY a.attendsTime DESC ")
  Page<Attends> findByUserOrderByAttendsTimeDesc(@Param("ids") List<Long> user,Pageable pa);
  
  //按一些用户模糊查找
  @Query("from Attends a where  (a.attendsRemark like %?1% or DATE_format(a.attendsTime,'%Y-%m-%d') like %?1% or a.user.userName like %?1% or "
  		+ "a.typeId in (select t.typeId from SystemTypeList t where t.typeName like %?1%) or "
  		+ "a.statusId in (select s.statusId from SystemStatusList s where s.statusName like %?1%)) and a.user.userId in ?2")
  Page<Attends> findsomemohu(String baseKey, List<Long> user,Pageable pa);
//类型
  //通过类型降序排序
	@Query("from Attends a where a.user.userId in (:ids) ORDER BY a.typeId DESC ")
	Page<Attends> findByUserOrderByTypeIdDesc(@Param("ids") List<Long> user,Pageable pa);
	
	//通过类型升序排序
	@Query("from Attends a where a.user.userId in (:ids)  ORDER BY a.typeId ASC ")
		Page<Attends> findByUserOrderByTypeIdAsc(@Param("ids") List<Long> user,Pageable pa);
	
	//状态
	 //通过状态降序排序
		@Query("from Attends a where a.user.userId in (:ids)  ORDER BY a.statusId DESC ")
		Page<Attends> findByUserOrderByStatusIdDesc(@Param("ids") List<Long> user,Pageable pa);
		
	//通过状态升序排序
	    @Query("from Attends a where a.user.userId in (:ids)  ORDER BY a.statusId ASC ")
			Page<Attends> findByUserOrderByStatusIdAsc(@Param("ids") List<Long> user,Pageable pa);
	    
	 //时间
	  		//时间降序在开始的时候就已经默认了
	  //通过时间升序排序
	        @Query("from Attends a where a.user.userId in (:ids)  ORDER BY a.attendsTime ASC ")
	  			Page<Attends> findByUserOrderByAttendsTimeAsc(@Param("ids") List<Long> user,Pageable pa);
  
  
  @Query("SELECT count(*) from Attends a where DATE_FORMAT(a.attendsTime,'%Y-%m') like %?1% and a.statusId=?2 and a.user.userId=?3")
  Integer countnum(String month,long statusId,long userid);
  
  @Query("SELECT sum(a.holidayDays) from Attends a where DATE_FORMAT(a.holidayStart,'%Y-%m') like %?1% and a.statusId=?2 and a.user.userId=?3")
  Integer countothernum(String month,long statusId,long userid);
  
  //统计当月上班次数
  @Query("SELECT count(*) from Attends a where DATE_FORMAT(a.attendsTime,'%Y-%m') like %?1%  and a.user.userId=?2 and a.typeId=8")
  Integer counttowork(String month,long userid);
  
  //统计当月下班次数
  @Query("SELECT count(*) from Attends a where DATE_FORMAT(a.attendsTime,'%Y-%m') like %?1% and a.user.userId=?2 and a.typeId=9")
  Integer countoffwork(String month,long userid);
  
  @Query("FROM Attends a where a.attendsTime>?1 and a.attendsTime<?2 and a.user.userId in ?3")
  List<Attends> findoneweek(Date start,Date end,List<Long> user);
  
  //更改备注
  @Query("update Attends a set a.attendsRemark=?1 where a.attendsId=?2")
  @Modifying
  Integer updateremark(String attendsRemark,long attendsId);
  
  
  //类型
  //通过类型降序排序
	@Query("from Attends a where a.user.userId=?1  ORDER BY a.typeId DESC ")
	Page<Attends> findByUserOrderByTypeIdDesc(long userid,Pageable pa);
	
	//通过类型升序排序
	@Query("from Attends a where a.user.userId=?1  ORDER BY a.typeId ASC ")
		Page<Attends> findByUserOrderByTypeIdAsc(long userid,Pageable pa);
	
	//状态
	 //通过状态降序排序
		@Query("from Attends a where a.user.userId=?1  ORDER BY a.statusId DESC ")
		Page<Attends> findByUserOrderByStatusIdDesc(long userid,Pageable pa);
		
	//通过状态升序排序
	    @Query("from Attends a where a.user.userId=?1  ORDER BY a.statusId ASC ")
			Page<Attends> findByUserOrderByStatusIdAsc(long userid,Pageable pa);
	    
	 //时间
	  		//时间降序在开始的时候就已经默认了
	  //通过时间升序排序
	  	    @Query("from Attends a where a.user.userId=?1  ORDER BY a.attendsTime ASC ")
	  			Page<Attends> findByUserOrderByAttendsTimeAsc(long userid,Pageable pa);
	
  
} 
