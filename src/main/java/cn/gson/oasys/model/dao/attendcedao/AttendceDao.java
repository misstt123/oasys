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

  List<Attends> findByUser(User user);
  
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
