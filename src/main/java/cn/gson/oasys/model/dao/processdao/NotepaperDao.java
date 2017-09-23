package cn.gson.oasys.model.dao.processdao;

import java.util.List;

import org.springframework.data.repository.PagingAndSortingRepository;

import cn.gson.oasys.model.entity.process.Notepaper;
import cn.gson.oasys.model.entity.user.User;

public interface NotepaperDao extends PagingAndSortingRepository<Notepaper, Long>{
	//根据用户找便签
	List<Notepaper> findByUserIdOrderByCreateTimeDesc(User user);

}
