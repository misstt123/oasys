package cn.gson.oasys.model.dao.informdao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;

import cn.gson.oasys.model.entity.notice.NoticeVO;
import cn.gson.oasys.model.entity.notice.NoticesList;

public interface InformDao extends PagingAndSortingRepository<NoticesList, Long> {
	NoticeVO noticeVo=new NoticeVO();
	
	//根据用户id来查找所有有关的通知
	List<NoticesList> findByUserId(Long userId);
	
	//根据用户id来查找，并根据是否置顶，和修改时间排序
	List<NoticesList> findByUserIdAndTopOrderByModifyTimeDesc(Long userId,Boolean boo);
	
	

}
