package cn.gson.oasys.model.dao.maildao;

import java.util.List;

import org.springframework.data.repository.PagingAndSortingRepository;

import cn.gson.oasys.model.entity.mail.Inmaillist;
import cn.gson.oasys.model.entity.user.User;

public interface InMailDao extends PagingAndSortingRepository<Inmaillist, Long>{
	
	//查找创建了但是却没有发送的邮件
	List<Inmaillist> findByPushAndMailUserid(Boolean bo,User user);

}
