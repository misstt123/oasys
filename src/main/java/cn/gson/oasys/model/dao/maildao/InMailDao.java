package cn.gson.oasys.model.dao.maildao;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;

import cn.gson.oasys.model.entity.mail.Inmaillist;
import cn.gson.oasys.model.entity.user.User;

public interface InMailDao extends PagingAndSortingRepository<Inmaillist, Long>{
	
	//查找创建了但是却没有发送的邮件
	List<Inmaillist> findByPushAndDelAndMailUserid(Boolean bo,Boolean del,User user);

	//查找发送的邮件
	Page<Inmaillist> findByPushAndMailUseridAndDelOrderByMailCreateTimeDesc(Boolean b, User mu,Boolean del, Pageable pa);
	
	//根据状态查找邮件
	Page<Inmaillist> findByMailUseridAndMailStatusidAndPushOrderByMailCreateTimeDesc( User mu,Long statusid,Boolean b,Pageable pa);

	//根据发件主题或者收件人模糊查找
	@Query("from Inmaillist as mail where mail.mailUserid=?1 and mail.push=?2 and mail.mailTitle like %?3% or mail.inReceiver like %?3% "
			+ "order by mail.mailCreateTime desc")
	Page<Inmaillist> findbyMailUseridAndPushAndMailTitleLikeOrderByMailCreateTimeDesc( User mu,Boolean b,String title,Pageable pa);

	Inmaillist findByMailUseridAndMailId(User user,Long id);

}
