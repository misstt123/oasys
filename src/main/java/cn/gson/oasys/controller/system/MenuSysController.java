package cn.gson.oasys.controller.system;

import java.util.List;

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
import org.springframework.web.bind.annotation.SessionAttribute;

import com.alibaba.fastjson.JSONArray;

import cn.gson.oasys.common.formValid.BindingResultVOUtil;
import cn.gson.oasys.common.formValid.MapToList;
import cn.gson.oasys.common.formValid.ResultEnum;
import cn.gson.oasys.common.formValid.ResultVO;
import cn.gson.oasys.model.dao.IndexDao;
import cn.gson.oasys.model.dao.roledao.RoleDao;
import cn.gson.oasys.model.dao.roledao.RolepowerlistDao;
import cn.gson.oasys.model.dao.user.UserDao;
import cn.gson.oasys.model.entity.role.Role;
import cn.gson.oasys.model.entity.role.Rolepowerlist;
import cn.gson.oasys.model.entity.system.SystemMenu;
import cn.gson.oasys.model.entity.user.User;
import cn.gson.oasys.services.role.RoleService;
import cn.gson.oasys.services.system.MenuSysService;

@Controller
@RequestMapping("/")
public class MenuSysController {

	Logger log = LoggerFactory.getLogger(getClass());

	@Autowired
	private IndexDao iDao;
	@Autowired
	private MenuSysService menuService;
	@Autowired
	private UserDao uDao;
	@Autowired
	private RoleDao rdao;
	@Autowired
	private RolepowerlistDao rldao;
	@Autowired
	private RoleService roleService;

	/**
	 *  显示菜单管理界面
	 * @param req
	 * @return
	 */
	@RequestMapping("testsysmenu")
	public String testsysmenu(HttpServletRequest req) {
		menuService.findAllMenuSys(req);
		return "systemcontrol/menumanage";
	}
	
	/**
	 * 查找菜单
	 */
	@RequestMapping("menutable")
	public String menuTable(HttpServletRequest req){
		if(!StringUtils.isEmpty(req.getParameter("name"))){
			req.setAttribute("oneMenuAll", iDao.findByMenuNameLike("%"+req.getParameter("name")+"%"));
		}
		else{
			menuService.findAllMenuSys(req);
		}
		return "systemcontrol/menutable";
	}
	
	/**
	 * 改变排序
	 * @param req
	 * @return
	 */
	@RequestMapping("changeSortId")
	public String changeSortId(HttpServletRequest req,@SessionAttribute("userId")Long userId) {
		User user=uDao.findOne(userId);
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
		menuService.findMenuSys(req,user);
		return "redirect:/testsysmenu";
	}
	
	/**
	 * 菜单管理的编辑界面
	 * @param req
	 * @return
	 */
	@RequestMapping("menuedit")
	public String newpage(HttpServletRequest req) {
		if(!StringUtils.isEmpty(req.getAttribute("errormess"))){
			req.setAttribute("errormess", req.getAttribute("errormess"));
		}
		if(!StringUtils.isEmpty(req.getAttribute("success"))){
			req.setAttribute("success", req.getAttribute("success"));
		}
		
		List<SystemMenu> parentList=iDao.findByParentIdOrderBySortId(0L);
		req.setAttribute("parentList", parentList);
		HttpSession session = req.getSession();
		session.removeAttribute("getId");
		if (!StringUtils.isEmpty(req.getParameter("id"))) {
			Long getId = Long.parseLong(req.getParameter("id"));
			SystemMenu menuObj = iDao.findOne(getId);
			if (!StringUtils.isEmpty(req.getParameter("add"))) {
				Long getAdd = menuObj.getMenuId();
				String getName=menuObj.getMenuName();
				req.setAttribute("getAdd", getAdd);
				req.setAttribute("getName", getName);
				log.info("getAdd:{}", getAdd);
			} else {
				session.setAttribute("getId", getId);
				log.info("getId:{}", getId);
				req.setAttribute("menuObj", menuObj);
			}
		}
		return "systemcontrol/menuedit";
	}
	
	/**
	 * 系统管理表单验证
	 * @param req
	 * @param menu
	 * @param br
	 * 后台校验表单数据，不通过则回填数据，显示错误信息；通过则直接执行业务，例如新增、编辑等；
	 * @return
	 */
	@RequestMapping("test111")
	public String testMess(HttpServletRequest req, @Valid SystemMenu menu, BindingResult br) {
		HttpSession session = req.getSession();
		Long menuId = null;
		req.setAttribute("menuObj", menu);

		// 这里返回ResultVO对象，如果校验通过，ResultEnum.SUCCESS.getCode()返回的值为200；否则就是没有通过；
		ResultVO res = BindingResultVOUtil.hasErrors(br);
		// 校验失败
		if (!ResultEnum.SUCCESS.getCode().equals(res.getCode())) {
			List<Object> list = new MapToList<>().mapToList(res.getData());
			req.setAttribute("errormess", list.get(0).toString());
			// 代码调试阶段，下面是错误的相关信息；
			System.out.println("list错误的实体类信息：" + menu);
			System.out.println("list错误详情:" + list);
			System.out.println("list错误第一条:" + list.get(0));
			System.out.println("啊啊啊错误的信息——：" + list.get(0).toString());
			// 下面的info信息是打印出详细的信息
			log.info("getData:{}", res.getData());
			log.info("getCode:{}", res.getCode());
			log.info("getMsg:{}", res.getMsg());
		}
		// 校验通过，下面写自己的逻辑业务
		else {
			// 判断是否从编辑界面进来的，前面有"session.setAttribute("getId",getId);",在这里获取，并remove掉；
			if (!StringUtils.isEmpty(session.getAttribute("getId"))) {
				menuId = (Long)session.getAttribute("getId"); // 获取进入编辑界面的menuID值
				menu.setMenuId(menuId);
				log.info("getId:{}", session.getAttribute("getId"));
				session.removeAttribute("getId");
				menuService.save(menu);
			}else{
				//执行新增 的代码；
				menuService.save(menu);
				List<Role> roles=rdao.findAll();
				for (Role role : roles) {
					if(role.getRoleId()==1){
						roleService.sava(new Rolepowerlist(role, menu, true));
					}else{
						roleService.sava(new Rolepowerlist(role, menu, false));
					}
				}
				
			}
			//执行业务代码
			
			System.out.println("此操作是正确的");
			req.setAttribute("success", "后台验证成功");
		}
		System.out.println("是否进入最后的实体类信息：" + menu);
		return "forward:/menuedit";
	}
	
	/**
	 * 菜单管理的删除
	 * @return
	 */
	@RequestMapping("deletethis")
	public String delete(HttpServletRequest req){
		Long menuId=Long.parseLong(req.getParameter("id"));
		int i=menuService.deleteThis(menuId);
		log.info("{}:i=",i);
		return "forward:/testsysmenu";
	}

}
