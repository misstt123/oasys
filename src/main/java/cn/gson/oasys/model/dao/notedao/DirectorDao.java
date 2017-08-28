package cn.gson.oasys.model.dao.notedao;

import org.springframework.data.repository.PagingAndSortingRepository;

import cn.gson.oasys.model.entity.note.Director;
import cn.gson.oasys.model.entity.note.Note;

public interface DirectorDao  extends PagingAndSortingRepository<Director, Long>{

}
