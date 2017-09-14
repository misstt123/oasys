package cn.gson.oasys.controller.system;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import com.alibaba.fastjson.JSONArray;

import cn.gson.oasys.common.formValid.BindingResultVOUtil;
import cn.gson.oasys.common.formValid.MapToList;
import cn.gson.oasys.common.formValid.ResultEnum;
import cn.gson.oasys.common.formValid.ResultVO;
import cn.gson.oasys.model.dao.IndexDao;
import cn.gson.oasys.model.entity.system.SystemMenu;
import cn.gson.oasys.services.system.MenuSysService;

@Controller
@RequestMapping("/")
public class MenuSysController {

	Logger log = LoggerFactory.getLogger(getClass());

	@Autowired
	private IndexDao iDao;
	@Autowired
	private MenuSysService menuService;

	// 显示菜单管理界面
	@RequestMapping("testsysmenu")
	public String testsysmenu(HttpServletRequest req) {
		menuService.findMenuSys(req);
		return "systemcontrol/menumanage";
	}

	// 改变排序
	@RequestMapping("changeSortId")
	public String changeSortId(HttpServletRequest req) {
		Long parentId = Long.parseLong(req.getParameter("parentid"));
		Long menuId = Long.parseLong(req.getParameter("menuid"));
		Integer sortId = Integer.parseInt(req.getParameter("sortid"));
		Integer arithNum = Integer.parseInt(req.getParameter("num"));
		log.info("parentId:{}", parentId);
		log.info("menuId:{}", menuId);
		log.info("sortId:{}", sortId);
		log.info("arithNum:{}", arithNum);
		if (arithNum == 1) {
			int a1 = menuService.changeSortId(sortId, arithNum, parentId);
			int a2 = menuService.changeSortId2(sortId, arithNum, menuId);
			log.info("a1：{}", a1);
			log.info("a2：{}", a2);
		} else {
			int a1 = menuService.changeSortId(sortId, arithNum, parentId);
			int a2 = menuService.changeSortId2(sortId, arithNum, menuId);
			log.info("a1：{}", a1);
			log.info("a2：{}", a2);
		}
		menuService.findMenuSys(req);
		return "systemcontrol/menumanage";
	}

	@RequestMapping("menuedit")
	public String newpage(HttpServletRequest req) {
		HttpSession session = req.getSession();
		String getId = null;

		if (!StringUtils.isEmpty(req.getParameter("id"))) {
			getId = req.getParameter("id");
			Long id = Long.parseLong(getId);
			SystemMenu menuObj = iDao.findOne(id);
			req.setAttribute("menuObj", menuObj);
			if (!StringUtils.isEmpty(req.getParameter("add"))) {
				String getAdd = req.getParameter("add");
				req.setAttribute("getAdd", getAdd);
				log.info("getAdd:{}", getAdd);
			} else {
				session.setAttribute("getId", getId);
				log.info("getId:{}", getId);
			}

		}

		return "systemcontrol/menuedit";
	}
	
	@RequestMapping("test111")
	public String testMess(HttpServletRequest req,SystemMenu menu){
		req.setAttribute("errormess", "错误信息Error");
		System.out.println(menu);
		
		return "systemcontrol/menuedit";
	}

	@RequestMapping("changemess")
	public String changeMess(HttpServletRequest req, @Valid SystemMenu menu, BindingResult br) {
		ResultVO res = BindingResultVOUtil.hasErrors(br);
		// 成功
		if (!ResultEnum.SUCCESS.getCode().equals(res.getCode())) {
			List<Object> list=new MapToList<>().testMapToList(res.getData());
			System.out.println("list:"+list);
			System.out.println("list:"+list.get(0));
			log.info("getData:{}", res.getData());
			log.info("getCode:{}", res.getCode());
			log.info("getMsg:{}", res.getMsg());
		}
		
		HttpSession session = req.getSession();
		Integer isShow = null;
		Long menuId = null;
		if (StringUtils.isEmpty(req.getParameter("checkid"))) {
			isShow = 0;
		} else {
			isShow = 1;
		}
		System.out.println(isShow);
		// 判断从编辑进入的界面
		if (!StringUtils.isEmpty(session.getAttribute("getId"))) {
			menuId = Long.parseLong((String) session.getAttribute("getId")); // 获取进入编辑界面的menuID值
			menu = iDao.findOne(menuId);
			log.info("getId:{}", session.getAttribute("getId"));
			session.removeAttribute("getId");
		}
		// 新增进入的界面
		else {
			menu = new SystemMenu();
		}
		menuService.save(menu);
		log.info("menu的值：{}", menu);
		return "redirect:/testsysmenu";

	}

}
