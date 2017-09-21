package cn.gson.oasys.controller.plan;


import java.net.DatagramSocketImplFactory;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.ibatis.annotations.Param;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import cn.gson.oasys.common.formValid.BindingResultVOUtil;
import cn.gson.oasys.common.formValid.MapToList;
import cn.gson.oasys.common.formValid.ResultEnum;
import cn.gson.oasys.common.formValid.ResultVO;
import cn.gson.oasys.model.dao.plandao.PlanDao;
import cn.gson.oasys.model.dao.system.StatusDao;
import cn.gson.oasys.model.dao.system.TypeDao;
import cn.gson.oasys.model.entity.plan.Plan;
import cn.gson.oasys.model.entity.system.SystemMenu;


@Controller
@RequestMapping("/")
public class PlanController {
		
	@Autowired
	PlanDao planDao;
	@Autowired
    TypeDao typeDao;
	@Autowired
    StatusDao statusDao;
	
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
		public String test3(HttpServletRequest request,Model model){ 
			long pid=Long.valueOf(request.getParameter("pid"));
			//新建
			if(pid==-1){
				model.addAttribute("plan", null);
				model.addAttribute("pid", pid);
			}
			else if(pid>0){
				Plan plan=planDao.findOne(pid);
				model.addAttribute("plan", plan);
				model.addAttribute("pid", pid);
			}
			
			return "plan/planedit";
		}
	    
		
		@RequestMapping(value="plansave",method=RequestMethod.GET)
		public void Datagr(){}
		
		@RequestMapping(value="plansave",method=RequestMethod.POST)
		public String testMess(@RequestParam("file")MultipartFile file, HttpServletRequest req,  BindingResult br) {
			HttpSession session = req.getSession();
			
			String type=req.getParameter("type");
			String status=req.getParameter("status");
			long typeid=typeDao.findByTypeModelAndTypeName("aoa_plan_list", type).getTypeId();
			long statusid=statusDao.findByStatusModelAndStatusName("aoa_plan_list", status).getStatusId();
			
			
			
			// 这里返回ResultVO对象，如果校验通过，ResultEnum.SUCCESS.getCode()返回的值为200；否则就是没有通过；
			ResultVO res = BindingResultVOUtil.hasErrors(br);
			// 校验失败
			if (!ResultEnum.SUCCESS.getCode().equals(res.getCode())) {
				List<Object> list = new MapToList<>().mapToList(res.getData());
				req.setAttribute("errormess", list.get(0).toString());
				// 代码调试阶段，下面是错误的相关信息；
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
				req.setAttribute("success", "后台验证成功");
			}
			return "forward:/planview";
		}
	
	

}
