package cn.gson.oasys.model.dao.plandao;

import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import cn.gson.oasys.model.entity.note.Attachment;
import cn.gson.oasys.model.entity.note.Note;
import cn.gson.oasys.model.entity.plan.Plan;

@Repository
public interface PlanDao  extends PagingAndSortingRepository<Plan, Long>{

}
