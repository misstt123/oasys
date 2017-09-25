package cn.gson.oasys.model.dao.maildao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;

import cn.gson.oasys.model.entity.mail.Mailnumber;
import cn.gson.oasys.model.entity.user.User;

public interface MailnumberDao extends PagingAndSortingRepository<Mailnumber, Long>{
	//根据状态和user来找account
	List<Mailnumber> findByStatusAndMailUserIdOrderByMailCreateTimeDesc(Long statuid,User user);

	//根据用户和type排序account
	List<Mailnumber> findByMailUserIdOrderByMailType(User user);

	//根据用户和status排序account
	List<Mailnumber> findByMailUserIdOrderByStatus(User user);

	//根据用户和创建时间排序account
	List<Mailnumber> findByMailUserIdOrderByMailCreateTimeDesc(User user);

	//根据用户和发件别名模糊查找account
	@Query("select mn from Mailnumber mn where  mn.mailUserName like %:val% and mn.mailUserId=:tu ")
	List<Mailnumber> findByMailUserNameLikeAndMailUserId(@Param("val")String val,@Param("tu") User tu);
}
