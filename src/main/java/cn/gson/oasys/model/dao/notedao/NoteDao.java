package cn.gson.oasys.model.dao.notedao;

import org.springframework.data.repository.PagingAndSortingRepository;

import cn.gson.oasys.model.entity.note.Note;

public interface NoteDao  extends PagingAndSortingRepository<Note, Long>{

}
