package cn.gson.oasys.model.dao.maildao;

import java.util.List;

import org.springframework.data.repository.PagingAndSortingRepository;

import cn.gson.oasys.model.entity.mail.Mailreciver;
import cn.gson.oasys.model.entity.user.User;

public interface MailreciverDao extends PagingAndSortingRepository<Mailreciver, Long>{

	List<Mailreciver> findByReadAndReciverId(Boolean read,User reciverid);
}
