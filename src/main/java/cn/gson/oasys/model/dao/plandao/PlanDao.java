package cn.gson.oasys.model.dao.plandao;

import org.springframework.data.repository.PagingAndSortingRepository;

import cn.gson.oasys.model.entity.note.Attachment;
import cn.gson.oasys.model.entity.note.Note;
import cn.gson.oasys.model.entity.plan.Plan;

public interface PlanDao  extends PagingAndSortingRepository<Plan, Long>{

}
