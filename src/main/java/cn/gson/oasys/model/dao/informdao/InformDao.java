package cn.gson.oasys.model.dao.informdao;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;

import cn.gson.oasys.model.entity.notice.NoticeUserRelation;
import cn.gson.oasys.model.entity.notice.NoticeVO;
import cn.gson.oasys.model.entity.notice.NoticesList;

public interface InformDao extends JpaRepository<NoticesList, Long> {

	// 联合两个表（通知表和用户通知关联表）查找出用户的通知列表
	@Query("SELECT n FROM NoticeUserRelation n left outer join n.noticeId u WHERE u.userId.userId=:userId ORDER BY u.top DESC ,u.modifyTime DESC ")
	List<NoticeUserRelation> findNoticeList(@Param("userId") Long userId);

	// 根据用户id来查找所有有关的通知
	List<NoticesList> findByUserId(Long userId);

//	// 根据用户id来查找，并根据是否置顶，和修改时间排序
//	List<NoticesList> findByUserIdAndTopOrderByModifyTimeDesc(Long userId, Boolean boo, Pageable pageable);

	// 根据用户id来查找所有有关的通知
	Page<NoticesList> findByUserId(Long userId, Pageable pageable);
	
	//根据关键字查找
	@Query("from NoticesList n where n.userId = :userId and n.title like :baseKey")
	Page<NoticesList> findByBaseKey(@Param("userId") Long userId,@Param("baseKey") String baseKey,Pageable pageable);
}
