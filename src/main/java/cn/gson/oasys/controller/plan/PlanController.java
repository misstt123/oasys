package cn.gson.oasys.controller.plan;



import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.support.DefaultConversionService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import cn.gson.oasys.common.StringtoDate;
import cn.gson.oasys.common.formValid.BindingResultVOUtil;
import cn.gson.oasys.common.formValid.MapToList;
import cn.gson.oasys.common.formValid.ResultEnum;
import cn.gson.oasys.common.formValid.ResultVO;
import cn.gson.oasys.model.dao.notedao.AttachmentDao;
import cn.gson.oasys.model.dao.plandao.PlanDao;
import cn.gson.oasys.model.dao.plandao.Planservice;
import cn.gson.oasys.model.dao.system.StatusDao;
import cn.gson.oasys.model.dao.system.TypeDao;
import cn.gson.oasys.model.dao.user.UserDao;
import cn.gson.oasys.model.entity.note.Attachment;
import cn.gson.oasys.model.entity.plan.Plan;
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
	Planservice planservice;
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
	List<User> uList;
	Logger log=LoggerFactory.getLogger(getClass());
	//格式转化导入
	DefaultConversionService service=new DefaultConversionService();
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
	
	//真正的报表
		@RequestMapping("realplantable")
		public String test23(HttpServletRequest request, Model model){
			List<Plan> plans = new ArrayList<>();
			//利用set过滤掉重复的plan_user_id 因为set不能重复
			Set<Long> number=new HashSet();
			Plan  plan2;
			service.addConverter(new StringtoDate());
			String  starttime= request.getParameter("starttime");
			String endtime=request.getParameter("endtime");
			Date start=service.convert(starttime, Date.class);
			Date end=service.convert(endtime, Date.class);
			pList= (List<Plan>) planDao.findAll();
			uList= (List<User>) userDao.findAll();
			for (Plan plan : pList) {
				number.add(plan.getUser().getUserId());
			}
			//找到相对应的计划记录
			for (Long num: number) {
				plan2=planDao.findlatest(start, end,num);
				if(plan2!=null)
				plans.add(plan2);
			}
//			System.out.println(plans);
			//将用户名和list绑定在一起
			Map<String,Plan> uMap=new HashMap<>();
			 for (User user : uList) {
				 for (Plan plan : plans) {
					if(user.getUserId()==plan.getUser().getUserId()){
						System.out.println(plan.getUser().getUserId());
						 uMap.put(user.getUserName(), plan);
						 break;
						 }
					else{
						uMap.put(user.getUserName(), null);
					}
				}
	    	}
	    
			List<SystemTypeList>  type= (List<SystemTypeList>) typeDao.findByTypeModel("aoa_plan_list");
			List<SystemStatusList>  status=(List<SystemStatusList>) statusDao.findByStatusModel("aoa_plan_list");
			System.out.println(uMap);
			model.addAttribute("uMap", uMap);
			model.addAttribute("type", type);
			model.addAttribute("status", status);
			model.addAttribute("plist", pList);
			model.addAttribute("ulist", uList);
			model.addAttribute("plans", plans);
			return "plan/realplantable";
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
	    
		//修改评论
//		@RequestMapping("comment")
//		public 
		
		
		@RequestMapping(value="plansave",method=RequestMethod.GET)
		public void Datagr(){}
		
		@RequestMapping(value="plansave",method=RequestMethod.POST)
		public String testMess(@RequestParam("file")MultipartFile file, HttpServletRequest req, @Valid Plan plan2, BindingResult br) throws IllegalStateException, IOException {
			service.addConverter(new StringtoDate());
			//格式化开始日期和结束日期
			Date start=service.convert(plan2.getStartTime(), Date.class);
			Date end=service.convert(plan2.getEndTime(), Date.class);
			Attachment att = null;
			Long attid=null; 
			Plan plan=null;
			
			HttpSession session = req.getSession();
			long userid=Long.valueOf(session.getAttribute("userId")+"");
			User user=userDao.findOne(userid);
			
			//获取到类型和状态id
			String type=req.getParameter("type");
			String status=req.getParameter("status");
			long typeid=typeDao.findByTypeModelAndTypeName("aoa_plan_list", type).getTypeId();
			long statusid=statusDao.findByStatusModelAndStatusName("aoa_plan_list", status).getStatusId();
			long pid=Long.valueOf(req.getParameter("pid")+"");

			// 这里返回ResultVO对象，如果校验通过，ResultEnum.SUCCESS.getCode()返回的值为200；否则就是没有通过；
			ResultVO res = BindingResultVOUtil.hasErrors(br);
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
				//新建
				if(pid==-1){
					if(!file.isEmpty())
					{
					att =(Attachment) fServices.savefile(file, user, null, false);
				    attid=att.getAttachmentId();
					}
					else if(file.isEmpty())
						attid=null;
					
					plan=new Plan(typeid, statusid,attid,start, end,new Date(), 
							plan2.getTitle(), plan2.getLabel(), plan2.getPlanContent(), plan2.getPlanSummary(), plan2.getPlanSummary());
					plan.setUser(user);
					planDao.save(plan);
				}
				if(pid>0){
					plan=planDao.findOne(pid);
					System.out.println(plan);
					if(plan.getAttachId()==null){
					if(!file.isEmpty())
					{
					att =(Attachment) fServices.savefile(file, user, null, false);
				    attid=att.getAttachmentId();
				    plan.setAttachId(attid);
				    planDao.save(plan);
				    }}
					if(plan.getAttachId()!=null)
					fServices.updateatt(file, user, null, plan.getAttachId());
					planservice.updateplan(typeid, statusid, start, end,
							plan2.getTitle(), plan2.getLabel(), plan2.getPlanContent(), plan2.getPlanSummary(),pid);
					
				}
				req.setAttribute("success", "后台验证成功");
			}
			req.setAttribute("plan2", plan2);
			return "forward:/planedit";
		}
	
		

}
