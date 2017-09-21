package cn.gson.oasys.services.user;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.gson.oasys.model.dao.processdao.NotepaperDao;

@Service
@Transactional
public class NotepaperService {
	
	@Autowired
	private NotepaperDao ndao;
	
	public void delete(Long id){
		ndao.delete(id);
	}
}
