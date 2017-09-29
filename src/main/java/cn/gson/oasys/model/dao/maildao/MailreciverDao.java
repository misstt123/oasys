package cn.gson.oasys.model.dao.maildao;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;

import cn.gson.oasys.model.entity.mail.Mailreciver;
import cn.gson.oasys.model.entity.mail.Pagemail;
import cn.gson.oasys.model.entity.user.User;

public interface MailreciverDao extends PagingAndSortingRepository<Mailreciver, Long>{

	//未读邮件查询
	List<Mailreciver> findByReadAndReciverId(Boolean read,User reciverid);
	
	@Query("select mr.mailId.mailId from Mailreciver mr where mr.reciverId=?1")
	List<Long> findByReciverId(User user);
	
	@Query("from Mailreciver mr where mr.reciverId=?1 and mr.mailId.mailId=?2")
	Mailreciver findbyReciverIdAndmailId(User user,Long id);
	
	
	
	//收件箱查询
	@Query("select new cn.gson.oasys.model.entity.mail.Pagemail(list.mailId,list.mailType,list.mailStatusid,list.mailTitle,list.inReceiver,list.mailFileid.attachmentId,list.mailCreateTime,mr.star,mr.read) "
			+ "from Mailreciver as mr ,Inmaillist as list where list.mailId=mr.mailId.mailId and mr.reciverId=?1 and mr.del=?2 order by list.mailCreateTime DESC")
	Page<Pagemail> findmail(User user,Boolean bo,Pageable pa);
	
	//邮件主题的模糊查询
	@Query("select new cn.gson.oasys.model.entity.mail.Pagemail(list.mailId,list.mailType,list.mailStatusid,list.mailTitle,list.inReceiver,list.mailFileid.attachmentId,list.mailCreateTime,mr.star,mr.read) "
			+ "from Mailreciver as mr ,Inmaillist as list where list.mailId=mr.mailId.mailId and mr.reciverId=?1 and list.mailTitle like %?2% order by list.mailCreateTime DESC")
	Page<Pagemail> findmails(User user,String title,Pageable pa);
	
	//根据状态查询接收邮件
	@Query("select new cn.gson.oasys.model.entity.mail.Pagemail(list.mailId,list.mailType,list.mailStatusid,list.mailTitle,list.inReceiver,list.mailFileid.attachmentId,list.mailCreateTime,mr.star,mr.read) "
			+ "from Mailreciver as mr ,Inmaillist as list where list.mailId=mr.mailId.mailId and mr.reciverId=?1 and list.mailStatusid=?2 order by list.mailCreateTime DESC")
	Page<Pagemail> findmailbystatus(User tu,Long statusId,Pageable pa);
}
