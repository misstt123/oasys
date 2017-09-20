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
	
//	新增与修改菜单管理的内容
	public SystemMenu save(SystemMenu menu){
		return iDao.save(menu);
	}
	
//	1、上移下移按钮先改变其他的排序值
	public int changeSortId(Integer sortId,Integer arithNum, Long parentId){
		return iDao.changeSortId(sortId, arithNum, parentId);
	}
//	2、上移下移按钮先改变自己的排序值
	public int changeSortId2(Integer sortId,Integer arithNum, Long menuId){
		return iDao.changeSortId2(sortId, arithNum, menuId);
	}
	
	
	public void findMenuSys(HttpServletRequest req){
//		查找所有父级都是显示的
		Iterable<SystemMenu> oneMenuAll=iDao.findByParentIdAndShowOrderBySortId(0L, true);
//		查找所有子级都是显示的
		Iterable<SystemMenu> twoMenuAll=iDao.findByParentIdNotAndShowOrderBySortId(0L, true);
		
		req.setAttribute("oneMenuAll", oneMenuAll);
		req.setAttribute("twoMenuAll", twoMenuAll);
		
	}
	
	public void findAllMenuSys(HttpServletRequest req){
//		查找所有父级
		Iterable<SystemMenu> oneMenuAll=iDao.findByParentIdOrderBySortId(0L);
//		查找所有子级
		Iterable<SystemMenu> twoMenuAll=iDao.findByParentIdNotOrderBySortId(0L);
		
		req.setAttribute("oneMenuAll", oneMenuAll);
		req.setAttribute("twoMenuAll", twoMenuAll);
	}
	
	/**
	 * 在service层执行删除方法
	 */
	public int deleteThis(Long menuId){
		return iDao.deleteThis(menuId);
	}
	
}
