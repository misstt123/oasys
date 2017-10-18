package cn.gson.oasys.services.system;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.gson.oasys.model.dao.IndexDao;
import cn.gson.oasys.model.dao.roledao.RolepowerlistDao;
import cn.gson.oasys.model.dao.user.UserDao;
import cn.gson.oasys.model.entity.role.Rolemenu;
import cn.gson.oasys.model.entity.system.SystemMenu;
import cn.gson.oasys.model.entity.user.User;

@Service
@Transactional
public class MenuSysService {
	@Autowired
	private IndexDao iDao;
	@Autowired
	private RolepowerlistDao rdao;
	@Autowired
	private UserDao uDao;
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
	
	
	public void findMenuSys(HttpServletRequest req,User user){
	
		List<Rolemenu> oneMenuAll=rdao.findbyparentxianall(0L, user.getRole().getRoleId(), true,true);
		List<Rolemenu> twoMenuAll=rdao.findbyparentsxian(0L, user.getRole().getRoleId(), true,true);
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
