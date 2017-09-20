package cn.gson.oasys.controller.inform;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.gson.oasys.model.dao.system.StatusDao;
import cn.gson.oasys.model.dao.system.TypeDao;
import cn.gson.oasys.model.entity.system.SystemStatusList;
import cn.gson.oasys.model.entity.system.SystemTypeList;

@Controller
@RequestMapping("/")
public class InformManageController {
	
	Logger log=LoggerFactory.getLogger(getClass());
	
	@Autowired
	private StatusDao statusDao;
	
	@Autowired
	private TypeDao typeDao;
	
	/**
	 * 通知管理面板
	 * @return
	 */
	@RequestMapping("infrommanage")
	public String infromManage(){
		return "inform/informmanage";
	}
	
	/**
	 * 通知列表
	 * @return
	 */
	@RequestMapping("infromlist")
	public String infromList(){
		return "inform/informlist";
	}
	
	/**
	 * 编辑通知界面
	 */
	@RequestMapping("informedit")
	public String infromEdit(HttpServletRequest req){
		List<SystemTypeList> typeList=typeDao.findByTypeModel("inform");
		List<SystemStatusList> statusList=statusDao.findByStatusModel("inform");
		req.setAttribute("typeList", typeList);
		req.setAttribute("statusList", statusList);
		return "inform/informedit";
	}

}
