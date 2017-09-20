package cn.gson.oasys.controller.plan;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.ibatis.annotations.Param;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fasterxml.jackson.annotation.JsonCreator.Mode;

import cn.gson.oasys.common.formValid.BindingResultVOUtil;
import cn.gson.oasys.common.formValid.MapToList;
import cn.gson.oasys.common.formValid.ResultEnum;
import cn.gson.oasys.common.formValid.ResultVO;
import cn.gson.oasys.model.dao.BlogDao;
import cn.gson.oasys.model.dao.notedao.CatalogDao;
import cn.gson.oasys.model.dao.notedao.NoteDao;
import cn.gson.oasys.model.dao.plandao.PlanDao;
import cn.gson.oasys.model.entity.Blog;
import cn.gson.oasys.model.entity.plan.Plan;
import cn.gson.oasys.model.entity.system.SystemMenu;
import cn.gson.oasys.services.system.MenuSysService;


@Controller
@RequestMapping("/")
public class PlanController {
		
	@Autowired
	PlanDao planDao;
	
	List<Plan> pList;
	Logger log=LoggerFactory.getLogger(getClass());
	

	//计划管理
	@RequestMapping("planview")
	public String test(Model model){
		pList=(List<Plan>) planDao.findAll();
		model.addAttribute("plist", pList);
		return "plan/planview";
	}
	//计划报表
	@RequestMapping("myplan")
	public String test2(){
		return "plan/plantable";
	}
	//我的编辑
		@RequestMapping("planedit")
		public String test3(@Param("pid")String pid,Model model){ 
			model.addAttribute("pid", pid);
			return "plan/planedit";
		}
	
		@RequestMapping("td")
		public String testMess(HttpServletRequest req, @Valid SystemMenu menu, BindingResult br) {
			HttpSession session = req.getSession();

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
				if (!StringUtils.isEmpty(session.getAttribute("getId"))) {
					
				}
				//执行业务代码
				System.out.println("此操作是正确的");
				req.setAttribute("success", "后台验证成功");
			}
			System.out.println("是否进入最后的实体类信息：" + menu);
			return "forward:/menuedit";
		}
	
	

}
