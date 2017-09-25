package cn.gson.oasys.model.dao.maildao;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;

import cn.gson.oasys.model.entity.mail.Mailnumber;
import cn.gson.oasys.model.entity.user.User;

public interface MailnumberDao extends PagingAndSortingRepository<Mailnumber, Long>{
	//根据状态和user来找account
	Page<Mailnumber> findByMailUserId(User user,Pageable page);

	//根据用户和type排序account
	Page<Mailnumber> findByMailUserIdOrderByMailType(User user,Pageable page);

	//根据用户和status排序account
	Page<Mailnumber> findByMailUserIdOrderByStatus(User user,Pageable page);

	//根据用户和创建时间排序account
	Page<Mailnumber> findByMailUserIdOrderByMailCreateTimeDesc(User user,Pageable page);

	//根据用户和发件别名模糊查找account
	@Query("select mn from Mailnumber mn where  mn.mailUserName like %:val% and mn.mailUserId=:tu ")
	Page<Mailnumber> findByMailUserNameLikeAndMailUserId(@Param("val")String val,@Param("tu") User tu,Pageable page);
	
	List<Mailnumber> findByStatusAndMailUserId(Long status,User u);

}
