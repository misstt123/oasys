package cn.gson.oasys.model.dao.notedao;

import java.util.Date;
import java.util.List;
import java.util.Set;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import cn.gson.oasys.model.entity.attendce.Attends;
import cn.gson.oasys.model.entity.note.Note;
import cn.gson.oasys.model.entity.user.User;

@Service
@Transactional
public class NoteService {

	@Autowired 
	NoteDao noteDao;
	
	//删除
	public int delete(long noteId) {
		return noteDao.delete(noteId);
	}
	
	public int updatecollect(long isCollected,long noteId) {
		return noteDao.updatecollect(isCollected, noteId);
	}
	
	
	public int updatenote(Long catalogId,Long typeId,Long statusId,String title,String content,Long noteId) {
		return noteDao.updatecollect(catalogId, typeId, statusId, title, content, noteId);
	}
	
	
	//排序分页
	public Page<Note> sortpage(int page, String baseKey, long userid,Long isCollected,Long catalogId,Long typeId, Object type, Object status, Object time) {
		Pageable pa = new PageRequest(page, 10);
		System.out.println("进来了"+baseKey+";目录"+catalogId);
		if(!StringUtils.isEmpty(baseKey)&&StringUtils.isEmpty(catalogId)){
			return noteDao.findBytitleOrderByCreateTimeDesc(baseKey, userid, pa);
		}
		if(!StringUtils.isEmpty(baseKey)&&!StringUtils.isEmpty(catalogId)){
			
			return noteDao.findBytitleAndCatalogId(baseKey, userid, catalogId, pa);
		}//0为降序 1为升序
		if(!StringUtils.isEmpty(isCollected)){
			
			if(!StringUtils.isEmpty(isCollected)&&!StringUtils.isEmpty(catalogId)){
				
				return noteDao.findByIsCollectedAndCatalogIdOrderByCreateTimeDesc(isCollected, catalogId, userid, pa);
			}
			if(!StringUtils.isEmpty(isCollected)&&StringUtils.isEmpty(catalogId)){
				return noteDao.findByIsCollectedOrderByCreateTimeDesc(isCollected, userid, pa);
			}
		}
			
		if(!StringUtils.isEmpty(typeId)){
		if(!StringUtils.isEmpty(typeId)&&!StringUtils.isEmpty(catalogId)){
			System.out.println("目录类型");
			
			//根据目录 然后再根据类型查找
			if(!StringUtils.isEmpty(type)){
			if(type.toString().equals("0")) return noteDao.findByTypeIdOrderByTypeIdDesc(typeId,catalogId, userid, pa);
			if(type.toString().equals("1")) return noteDao.findByTypeIdOrderByTypeIdAsc(typeId, catalogId, userid, pa);
			}
			if(!StringUtils.isEmpty(status)){
			if(status.toString().equals("0")) return noteDao.findByTypeIdOrderByStatusIdDesc(typeId, catalogId, userid, pa);
			if(status.toString().equals("1")) return noteDao.findByTypeIdOrderByStatusIdAsc(typeId, catalogId, userid, pa);
			}
			if(!StringUtils.isEmpty(time)){
				
			if(time.toString().equals("0")) return noteDao.findByTypeIdOrderByCreateTimeDesc(typeId, catalogId, userid, pa);
			if(time.toString().equals("1")) return noteDao.findByTypeIdOrderByCreateTimeAsc(typeId, catalogId, userid, pa);
			}
			else return noteDao.findByTypeIdOrderByCreateTimeDesc(typeId,catalogId, userid, pa);
		}
		if(!StringUtils.isEmpty(typeId)&&StringUtils.isEmpty(catalogId)){
			System.out.println("单纯类型");
			//为空就直接按照类型查找
			
			if(!StringUtils.isEmpty(type)){
			if(type.toString().equals("0")) return noteDao.findByTypeIdOrderByTypeIdDesc(typeId, userid, pa);
			if(type.toString().equals("1")) return noteDao.findByTypeIdOrderByTypeIdAsc(typeId, userid, pa);
			}
			if(!StringUtils.isEmpty(status)){
			if(status.toString().equals("0")) return noteDao.findByTypeIdOrderByStatusIdDesc(typeId, userid, pa);
			if(status.toString().equals("1")) return noteDao.findByTypeIdOrderByStatusIdAsc(typeId, userid, pa);
			}
			if(!StringUtils.isEmpty(time)){
			
			if(time.toString().equals("0")) return noteDao.findByTypeIdOrderByCreateTimeDesc(typeId, userid, pa);
			if(time.toString().equals("1")) return noteDao.findByTypeIdOrderByCreateTimeAsc(typeId, userid, pa);
			}
			else return noteDao.findByTypeIdOrderByCreateTimeDesc(typeId, userid, pa);
		}}
		
		
		if(!StringUtils.isEmpty(catalogId)&&(StringUtils.isEmpty(typeId))&&(StringUtils.isEmpty(isCollected)))
			{//单纯查找目录
			if(!StringUtils.isEmpty(type)){
			if(type.toString().equals("0")) return noteDao.findByCatalogIdOrderByTypeIdDesc(catalogId, userid, pa);
		if(type.toString().equals("1")) return noteDao.findByCatalogIdOrderByTypeIdAsc(catalogId, userid, pa);
			}if(!StringUtils.isEmpty(status)){
		if(status.toString().equals("0")) return noteDao.findByCatalogIdOrderByStatusIdDesc(catalogId, userid, pa);
		if(status.toString().equals("1")) return noteDao.findByCatalogIdOrderByStatusIdAsc(catalogId, userid, pa);
			}if(!StringUtils.isEmpty(time)){
		if(time.toString().equals("0")) return noteDao.findByCatalogIdOrderByCreateTimeDesc(catalogId, userid, pa);
		if(time.toString().equals("1")) return noteDao.findByCatalogIdOrderByCreateTimeAsc(catalogId, userid, pa);
			}
		else	return noteDao.findByCatalogIdOrderByCreateTimeDesc(catalogId, userid, pa);
			}
		
		
		
		if(StringUtils.isEmpty(isCollected)&&StringUtils.isEmpty(typeId)&&StringUtils.isEmpty(catalogId)){
			if (!StringUtils.isEmpty(type)) {
			if(type.toString().equals("0")){
				//降序
				return noteDao.findByUserssOrderByTypeIdDesc(userid, pa);
			}else{
				//升序
				return noteDao.findByUserssOrderByTypeIdAsc(userid, pa);
			}
		}
		if (!StringUtils.isEmpty(status)) {
			if(status.toString().equals("0")){
				
				return noteDao.findByUserssOrderByStatusIdDesc(userid, pa);
			}else{
				return noteDao.findByUserssOrderByStatusIdAsc(userid, pa);
			}
		}
		if (!StringUtils.isEmpty(time)) {
			if(time.toString().equals("0")){
				System.out.println("时间"+time);
				return noteDao.findByUserssOrderByCreateTimeDesc(userid, pa);
			}else{
				return noteDao.findByUserssOrderByCreateTimeAsc(userid, pa);
			}
		} }
		if(!StringUtils.isEmpty(userid)){
			return noteDao.findByUserssOrderByCreateTimeDesc(userid, pa);
		}
		else {
			System.out.println("what");
			// 第几页 以及页里面数据的条数
			return noteDao.findByUserss(userid, pa);
		}

	}
	
	
	
}
