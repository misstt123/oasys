package cn.gson.oasys.model.dao.processdao;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;

import cn.gson.oasys.model.entity.process.AubUser;
import cn.gson.oasys.model.entity.process.Reviewed;
import cn.gson.oasys.model.entity.user.User;

public interface ReviewedDao extends PagingAndSortingRepository<Reviewed, Long>{

	@Query("select new cn.gson.oasys.model.entity.process.AubUser(pro.processId,pro.typeNmae,pro.deeply,pro.processName,pro.userId.userName,pro.applyTime,rev.statusId) "
			+ "from ProcessList as pro,Reviewed as rev where rev.proId.processId=pro.processId and rev.userId=?1 order by rev.statusId")
	Page<AubUser> findByUserIdOrderByStatusId(User user,Pageable pa);
}
