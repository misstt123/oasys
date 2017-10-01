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


@Query("from Attends a where a.user.userId=:userId")
  Page<Attends> findByUserOrderByAttendsTimeDesc(@Param("userId")long userid,Pageable pa);
  
  @Query("from Attends a where a.user.userId in (:ids)")
  Page<Attends> findByUserOrderByAttendsTimeDesc(@Param("ids") List<Long> user,Pageable pa);
  
  
  @Query("SELECT count(*) from Attends a where DATE_FORMAT(a.attendsTime,'%Y-%m') like %?1% and a.statusId=?2 and a.user.userId=?3")
  Integer countnum(String month,long statusId,long userid);
  
  @Query("FROM Attends a where a.attendsTime>?1 and a.attendsTime<?2")
  List<Attends> findoneweek(Date start,Date end);
  
  //更改备注
  @Query("update Attends a set a.attendsRemark=?1 where a.attendsId=?2")
  @Modifying
  Integer updateremark(String attendsRemark,long attendsId);
  
} 
