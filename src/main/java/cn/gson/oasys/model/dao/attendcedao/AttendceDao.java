package cn.gson.oasys.model.dao.attendcedao;

import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import cn.gson.oasys.model.entity.attendce.Attends;
import cn.gson.oasys.model.entity.note.Attachment;
import cn.gson.oasys.model.entity.note.Note;

@Repository
public interface AttendceDao  extends PagingAndSortingRepository<Attends, Long>{

}
