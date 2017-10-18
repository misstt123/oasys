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

import cn.gson.oasys.common.formValid.BindingResultVOUtil;
import cn.gson.oasys.common.formValid.MapToList;
import cn.gson.oasys.common.formValid.ResultEnum;
import cn.gson.oasys.common.formValid.ResultVO;
import cn.gson.oasys.model.dao.system.TypeDao;
import cn.gson.oasys.model.entity.system.SystemTypeList;
import cn.gson.oasys.services.system.TypeService;

@Controller
@RequestMapping("/")
public class TypeSysController {

	Logger log = LoggerFactory.getLogger(getClass());

	@Autowired
	private TypeDao typeDao;

	@Autowired
	private TypeService typeService;

	/**
	 * 进入类型管理表格界面
	 * 
	 * @param req
	 * @return
	 */
	@RequestMapping("testsystype")
	public String testsystype(HttpServletRequest req) {
		Iterable<SystemTypeList> typeList = typeDao.findAll();
		req.setAttribute("typeList", typeList);
		return "systemcontrol/typemanage";
	}
	
	/**
	 * 查找类型表格
	 * 
	 * @param req
	 * @return
	 */
	@RequestMapping("typetable")
	public String typeTable(HttpServletRequest req) {
		if(!StringUtils.isEmpty(req.getParameter("name"))){
			String name="%"+req.getParameter("name")+"%";
			req.setAttribute("typeList",typeDao.findByTypeNameLikeOrTypeModelLike(name, name));
		}
		else{
			Iterable<SystemTypeList> typeList = typeDao.findAll();
			req.setAttribute("typeList", typeList);
		}
		return "systemcontrol/typetable";
	}

	/**
	 * 类型编辑界面；
	 * 
	 * @param req
	 * @return
	 */
	@RequestMapping("typeedit")
	public String typeEdit(HttpServletRequest req) {
		if (!StringUtils.isEmpty(req.getParameter("typeid"))) {
			Long typeid = Long.parseLong(req.getParameter("typeid"));
			SystemTypeList typeObj = typeDao.findOne(typeid);
			req.setAttribute("typeObj", typeObj);
			HttpSession session = req.getSession();
			session.setAttribute("typeid", typeid);
		}
		return "systemcontrol/typeedit";
	}

	/**
	 * 系统管理表单验证
	 * 
	 * @param req
	 * @param menu
	 * @param br
	 * 后台校验表单数据，不通过则回填数据，显示错误信息；通过则直接执行业务，例如新增、编辑等；
	 * @return
	 */
	@RequestMapping("typecheck")
	public String testMess(HttpServletRequest req, @Valid SystemTypeList menu, BindingResult br) {
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
			if (!StringUtils.isEmpty(session.getAttribute("typeid"))) {
				System.out.println(session.getAttribute("typeid"));
				menuId = (Long) session.getAttribute("typeid"); // 获取进入编辑界面的menuID值
				menu.setTypeId(menuId);
				log.info("getId:{}", session.getAttribute("typeid"));
				session.removeAttribute("typeid");
			}
			// 执行业务代码
			typeService.save(menu);
			System.out.println("此操作是正确的");
			req.setAttribute("success", "后台验证成功");
		}
		System.out.println("是否进入最后的实体类信息：" + menu);
		return "systemcontrol/typeedit";
	}
	
	/**
	 * 执行删除方法
	 */
	@RequestMapping("deletetype")
	public String deleteThis(HttpServletRequest req){
		Long typeId=Long.parseLong(req.getParameter("id"));
		typeService.deleteType(typeId);
		return "forward:/testsystype";
	}

}
