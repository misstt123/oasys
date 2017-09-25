package cn.gson.oasys.controller.plan;


import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.DatagramSocketImplFactory;
import java.util.Date;
import java.util.List;
import java.util.function.Function;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.commons.io.IOUtils;
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

import aj.org.objectweb.asm.Type;
import cn.gson.oasys.common.formValid.BindingResultVOUtil;
import cn.gson.oasys.common.formValid.MapToList;
import cn.gson.oasys.common.formValid.ResultEnum;
import cn.gson.oasys.common.formValid.ResultVO;
import cn.gson.oasys.model.dao.notedao.AttachmentDao;
import cn.gson.oasys.model.dao.plandao.PlanDao;
import cn.gson.oasys.model.dao.system.StatusDao;
import cn.gson.oasys.model.dao.system.TypeDao;
import cn.gson.oasys.model.dao.user.UserDao;
import cn.gson.oasys.model.entity.note.Attachment;
import cn.gson.oasys.model.entity.note.Note;
import cn.gson.oasys.model.entity.plan.Plan;
import cn.gson.oasys.model.entity.system.SystemMenu;
import cn.gson.oasys.model.entity.system.SystemStatusList;
import cn.gson.oasys.model.entity.system.SystemTypeList;
import cn.gson.oasys.model.entity.user.User;
import cn.gson.oasys.services.file.FileServices;


@Controller
@RequestMapping("/")
public class PlanController {
		
	@Autowired
	PlanDao planDao;
	@Autowired
    TypeDao typeDao;
	@Autowired
    StatusDao statusDao;
	@Autowired 
	FileServices fServices;
	@Autowired
	UserDao userDao;
	@Autowired
	AttachmentDao attachmentDao;
	
	
	List<Plan> pList;
	Logger log=LoggerFactory.getLogger(getClass());
	
	
	//计划管理
	@RequestMapping("planview")
	public String test(Model model,HttpSession session){
		Long userid=Long.valueOf(session.getAttribute("userId")+"");
		User user=userDao.findOne(userid);
		pList=(List<Plan>) planDao.findByUser(user);
		List<SystemTypeList>  type= (List<SystemTypeList>) typeDao.findByTypeModel("aoa_plan_list");
		List<SystemStatusList>  status=(List<SystemStatusList>) statusDao.findByStatusModel("aoa_plan_list");
		model.addAttribute("type", type);
		model.addAttribute("status", status);
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
			if(!StringUtils.isEmpty(request.getAttribute("errormess"))){
				request.setAttribute("errormess", request.getAttribute("errormess"));
				request.setAttribute("plan", request.getAttribute("plan2"));
			}
			else if(!StringUtils.isEmpty(request.getAttribute("success"))){
				request.setAttribute("success", request.getAttribute("success"));
				request.setAttribute("plan", request.getAttribute("plan2"));
			}
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
			
			List<SystemTypeList>  type= (List<SystemTypeList>) typeDao.findByTypeModel("aoa_plan_list");
			List<SystemStatusList>  status=(List<SystemStatusList>) statusDao.findByStatusModel("aoa_plan_list");
			model.addAttribute("type", type);
			model.addAttribute("status", status);
			return "plan/planedit";
		}
	    
		
		@RequestMapping(value="plansave",method=RequestMethod.GET)
		public void Datagr(){}
		
		@RequestMapping(value="plansave",method=RequestMethod.POST)
		public String testMess(@RequestParam("file")MultipartFile file, HttpServletRequest req, @Valid Plan plan2, BindingResult br) throws IllegalStateException, IOException {
			Attachment att = null;
			Long attid=null; 
			HttpSession session = req.getSession();
			long userid=Long.valueOf(session.getAttribute("userId")+"");
			User user=userDao.findOne(userid);
			req.setAttribute("plan2", plan2);
			//获取到类型和状态id
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
					System.out.println("验证通过，进入狗太了");
				}
				if(!file.isEmpty())
				{
				att =(Attachment) fServices.savefile(file, user, null, false);
			    attid=att.getAttachmentId();
				}
				else if(file.isEmpty())
					attid=null;
				
				Plan plan=new Plan(typeid, statusid,attid,plan2.getStartTime(), plan2.getEndTime(), new Date(), 
						plan2.getTitle(), plan2.getLabel(), plan2.getPlanContent(), plan2.getPlanSummary(), plan2.getPlanSummary());
				plan.setUser(user);
				planDao.save(plan);
				req.setAttribute("success", "后台验证成功");
			}
			return "forward:/planedit";
		}
	
		

}
