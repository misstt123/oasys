package cn.gson.oasys.model.dao.processdao;



import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import cn.gson.oasys.model.entity.process.Notepaper;
import cn.gson.oasys.model.entity.user.User;

public interface NotepaperDao extends JpaRepository<Notepaper, Long> {
	// 根据用户找便签
	Page<Notepaper> findByUserIdOrderByCreateTimeDesc(User user,Pageable pa);

	// 根据用户找便签
	Page<Notepaper> findByUserIdOrderByCreateTimeDesc(Pageable page);

	/**
	 * 模糊查询
	 * 
	 * @param baseKey
	 * @param page
	 * @return
	 */
	Page<Notepaper> findByTitleLikeOrderByCreateTimeDesc(String baseKey, Pageable page);
}
