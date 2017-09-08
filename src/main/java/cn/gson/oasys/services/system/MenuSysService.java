package cn.gson.oasys.services.system;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.gson.oasys.model.dao.IndexDao;
import cn.gson.oasys.model.entity.system.SystemMenu;

@Service
@Transactional
public class MenuSysService {
	@Autowired
	private IndexDao iDao;
	
	public int changeSortId(Integer sortId,Integer arithNum, Long parentId){
		return iDao.changeSortId(sortId, arithNum, parentId);
	}
	
	public int changeSortId2(Integer sortId,Integer arithNum, Long menuId){
		return iDao.changeSortId2(sortId, arithNum, menuId);
	}
	
	
	public void findMenuSys(HttpServletRequest req){
		HttpSession session=req.getSession();
//		查找所有父级
		Iterable<SystemMenu> oneMenuAll=iDao.findByParentIdOrderBySortId(0L);
//		查找所有子级
		Iterable<SystemMenu> twoMenuAll=iDao.findByParentIdNotOrderBySortId(0L);
		
		session.setAttribute("oneMenuAll", oneMenuAll);
		session.setAttribute("twoMenuAll", twoMenuAll);
		
	}
}
