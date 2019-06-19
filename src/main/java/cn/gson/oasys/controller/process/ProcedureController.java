package cn.gson.oasys.controller.process;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.URLDecoder;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;

import javax.annotation.PostConstruct;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.ResourceUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;

import com.github.pagehelper.util.StringUtil;

import cn.gson.oasys.model.dao.attendcedao.AttendceDao;
import cn.gson.oasys.model.dao.notedao.AttachmentDao;
import cn.gson.oasys.model.dao.plandao.TrafficDao;
import cn.gson.oasys.model.dao.processdao.BursementDao;
import cn.gson.oasys.model.dao.processdao.DetailsBurseDao;
import cn.gson.oasys.model.dao.processdao.EvectionDao;
import cn.gson.oasys.model.dao.processdao.EvectionMoneyDao;
import cn.gson.oasys.model.dao.processdao.HolidayDao;
import cn.gson.oasys.model.dao.processdao.OvertimeDao;
import cn.gson.oasys.model.dao.processdao.ProcessListDao;
import cn.gson.oasys.model.dao.processdao.RegularDao;
import cn.gson.oasys.model.dao.processdao.ResignDao;
import cn.gson.oasys.model.dao.processdao.ReviewedDao;
import cn.gson.oasys.model.dao.processdao.StayDao;
import cn.gson.oasys.model.dao.processdao.SubjectDao;
import cn.gson.oasys.model.dao.system.StatusDao;
import cn.gson.oasys.model.dao.system.TypeDao;
import cn.gson.oasys.model.dao.user.UserDao;
import cn.gson.oasys.model.entity.attendce.Attends;
import cn.gson.oasys.model.entity.note.Attachment;
import cn.gson.oasys.model.entity.process.AubUser;
import cn.gson.oasys.model.entity.process.Bursement;
import cn.gson.oasys.model.entity.process.DetailsBurse;
import cn.gson.oasys.model.entity.process.Evection;
import cn.gson.oasys.model.entity.process.EvectionMoney;
import cn.gson.oasys.model.entity.process.Holiday;
import cn.gson.oasys.model.entity.process.Overtime;
import cn.gson.oasys.model.entity.process.ProcessList;
import cn.gson.oasys.model.entity.process.Regular;
import cn.gson.oasys.model.entity.process.Resign;
import cn.gson.oasys.model.entity.process.Reviewed;
import cn.gson.oasys.model.entity.process.Stay;
import cn.gson.oasys.model.entity.process.Subject;
import cn.gson.oasys.model.entity.process.Traffic;
import cn.gson.oasys.model.entity.system.SystemStatusList;
import cn.gson.oasys.model.entity.system.SystemTypeList;
import cn.gson.oasys.model.entity.user.User;
import cn.gson.oasys.services.process.ProcessService;

@Controller
@RequestMapping("/")
public class ProcedureController {
	
	@Autowired
	private UserDao udao;
	@Autowired
	private SubjectDao sudao;
	@Autowired
	private StatusDao sdao;
	@Autowired
	private TypeDao tydao;
	@Autowired
	private ReviewedDao redao;
	@Autowired
	private EvectionMoneyDao emdao;
	@Autowired
	private BursementDao budao;
	@Autowired
	private ProcessListDao prodao;
	@Autowired
	private DetailsBurseDao dedao;
	@Autowired
	private ProcessService proservice;
	@Autowired
	private TrafficDao tdao;
	@Autowired
	private AttachmentDao AttDao;
	@Autowired
	private StayDao sadao;
	@Autowired
	private EvectionDao edao;
	@Autowired
	private OvertimeDao odao;
	@Autowired
	private HolidayDao hdao;
	@Autowired
	private RegularDao rgdao;
	@Autowired
	private ResignDao rsdao;
	@Autowired
	private AttendceDao adao;
	
//	@Value("${attachment.roopath}")
	private String rootpath;

	@PostConstruct
	public void UserpanelController(){
		try {
			rootpath= ResourceUtils.getURL("classpath:").getPath().replace("/target/classes/","");
			System.out.println(rootpath);

		}catch (IOException e){
			System.out.println("获取项目路径异常");
		}
	}

	//新增页面
	@RequestMapping("xinxeng")
	public String index(){
		
		return "process/procedure";
	}
	
	//费用报销表单
	@RequestMapping("burse")
	public String bursement(Model model, @SessionAttribute("userId") Long userId,HttpServletRequest request,
			@RequestParam(value = "page", defaultValue = "0") int page,
			@RequestParam(value = "size", defaultValue = "10") int size){
		//查找类型
		List<SystemTypeList> uplist=tydao.findByTypeModel("aoa_bursement");
		//查找费用科目生成树
		List<Subject> second=sudao.findByParentId(1L);
		List<Subject> sublist=sudao.findByParentIdNot(1L);
		proservice.index6(model, userId, page, size);
		
		model.addAttribute("second", second);
		model.addAttribute("sublist", sublist);
		model.addAttribute("uplist", uplist);
		return "process/bursement";
	}
	/**
	 * 费用表单接收
	 * @return
	 * @throws IOException 
	 * @throws IllegalStateException 
	 */
	@RequestMapping("apply")
	public String apply(@RequestParam("filePath")MultipartFile filePath,HttpServletRequest req,@Valid Bursement bu,BindingResult br,
			@SessionAttribute("userId") Long userId) throws IllegalStateException, IOException{
		User lu=udao.findOne(userId);//申请人
		User reuser=udao.findByUserName(bu.getUsername());//审核人
		User zhuti=udao.findByUserName(bu.getNamemoney());//证明人
		Integer allinvoice=0;
		Double allmoney=0.0;
		Long roleid=lu.getRole().getRoleId();//申请人角色id
		Long fatherid=lu.getFatherId();//申请人父id
		Long userid=reuser.getUserId();//审核人userid
		
		String val=req.getParameter("val");
		
		if(roleid>=3L && Objects.equals(fatherid, userid)){
			
		
		List<DetailsBurse> mm=bu.getDetails();
		for (DetailsBurse detailsBurse : mm) {
			allinvoice+=detailsBurse.getInvoices();
			allmoney+=detailsBurse.getDetailmoney();
			detailsBurse.setBurs(bu);
		}
		//在报销费用表里面set票据总数和总金额
		bu.setAllinvoices(allinvoice);
		bu.setAllMoney(allmoney);
		bu.setUsermoney(zhuti);
		//set主表
		ProcessList pro=bu.getProId();
		proservice.index5(pro, val, lu, filePath,reuser.getUserName());
		budao.save(bu);
		
		//存审核表
		proservice.index7(reuser, pro);
		}else{
			return "common/proce";
		}
		return "redirect:/xinxeng";
	}
	/**
	 * 查找出自己的申请
	 * @return
	 */
	@RequestMapping("flowmanage")
	public String flowManage(@SessionAttribute("userId") Long userId,Model model,
			@RequestParam(value = "page", defaultValue = "0") int page,
			@RequestParam(value = "size", defaultValue = "10") int size){
		Pageable pa=new PageRequest(page, size);
		Page<ProcessList> pagelist=prodao.findByuserId(userId,pa);
		List<ProcessList> prolist=pagelist.getContent();
		
		Iterable<SystemStatusList>  statusname=sdao.findByStatusModel("aoa_process_list");
		Iterable<SystemTypeList> typename=tydao.findByTypeModel("aoa_process_list");
		model.addAttribute("typename", typename);
		model.addAttribute("page", pagelist);
		model.addAttribute("prolist", prolist);
		model.addAttribute("statusname", statusname);
		model.addAttribute("url", "shenser");
		return "process/flowmanage";
	}
	/**
	 * 申请人查看流程条件查询
	 */
	@RequestMapping("shenser")
	public String ser(@SessionAttribute("userId") Long userId,Model model,HttpServletRequest req,
			@RequestParam(value = "page", defaultValue = "0") int page,
			@RequestParam(value = "size", defaultValue = "10") int size){
		Pageable pa=new PageRequest(page, size);
		String val=null;
		if(!StringUtil.isEmpty(req.getParameter("val"))){
			val=req.getParameter("val");
		}
		Page<ProcessList> pagelist=null;
		List<ProcessList> prolist=null;
		SystemStatusList status=sdao.findByStatusModelAndStatusName("aoa_process_list", val);
		if(StringUtil.isEmpty(val)){
			//空查询
			pagelist=prodao.findByuserId(userId,pa);
		}else if(!Objects.isNull(status)){
			//根据状态和申请人查找流程
			pagelist=prodao.findByuserIdandstatus(userId,status.getStatusId(),pa);
			model.addAttribute("sort", "&val="+val);
		}else{
			//根据审核人，类型，标题模糊查询
			pagelist=prodao.findByuserIdandstr(userId,val,pa);
			model.addAttribute("sort", "&val="+val);
		}
		prolist=pagelist.getContent();
		Iterable<SystemStatusList>  statusname=sdao.findByStatusModel("aoa_process_list");
		Iterable<SystemTypeList> typename=tydao.findByTypeModel("aoa_process_list");
		model.addAttribute("typename", typename);
		model.addAttribute("page", pagelist);
		model.addAttribute("prolist", prolist);
		model.addAttribute("statusname", statusname);
		model.addAttribute("url", "shenser");
		
		return "process/managetable";
	}
	/**
	 * 流程审核
	 * @return
	 */
	@RequestMapping("audit")
	public String auding(@SessionAttribute("userId") Long userId,Model model,
			@RequestParam(value = "page", defaultValue = "0") int page,
			@RequestParam(value = "size", defaultValue = "10") int size){
		User user=udao.findOne(userId);
		Page<AubUser> pagelist=proservice.index(user, page, size,null,model);
		List<Map<String, Object>> prolist=proservice.index2(pagelist,user);
		model.addAttribute("page", pagelist);
		model.addAttribute("prolist", prolist);
		model.addAttribute("url", "serch");
		
		return "process/auditing";
	}
	/**
	 * 流程审核条件查询
	 * @return
	 */
	@RequestMapping("serch")
	public String serch(@SessionAttribute("userId") Long userId,Model model,HttpServletRequest req,
			@RequestParam(value = "page", defaultValue = "0") int page,
			@RequestParam(value = "size", defaultValue = "10") int size){
		User user=udao.findOne(userId);
		
		String val=null;
		if(!StringUtil.isEmpty(req.getParameter("val"))){
			val=req.getParameter("val");
		}
		Page<AubUser> pagelist=proservice.index(user, page, size,val,model);
		List<Map<String, Object>> prolist=proservice.index2(pagelist,user);
		model.addAttribute("page", pagelist);
		model.addAttribute("prolist", prolist);
		model.addAttribute("url", "serch");
		
		return "process/audtable";
	}
	
	
	/**
	 * 查看详细
	 * @return
	 */
	@RequestMapping("particular")
	public String particular(@SessionAttribute("userId") Long userId,Model model,HttpServletRequest req){
		User user=udao.findOne(userId);//审核人或者申请人
		User audit=null;//最终审核人
		String id=req.getParameter("id");
		Long proid=Long.parseLong(id);
		String typename=req.getParameter("typename");//类型名称
		String name=null;
		
		Map<String, Object> map=new HashMap<>();
		ProcessList process=prodao.findOne(proid);//查看该条申请
		Boolean flag=process.getUserId().getUserId().equals(userId);//判断是申请人还是审核人
		
		if(!flag){
			name="审核";
		}else{
			name="申请";
		}
		map=proservice.index3(name,user,typename,process);
			if(("费用报销").equals(typename)){
				Bursement bu=budao.findByProId(process);
				User prove=udao.findOne(bu.getUsermoney().getUserId());//证明人
			if(!Objects.isNull(bu.getOperation())){
				audit=udao.findOne(bu.getOperation().getUserId());//最终审核人
			}
				List<DetailsBurse> detaillist=dedao.findByBurs(bu);
				String type=tydao.findname(bu.getTypeId());
				String money=ProcessService.numbertocn(bu.getAllMoney());
				model.addAttribute("prove", prove);
				model.addAttribute("audit", audit);
				model.addAttribute("type", type);
				model.addAttribute("bu", bu);
				model.addAttribute("money", money);
				model.addAttribute("detaillist", detaillist);
				model.addAttribute("map", map);
				return "process/serch";
			}else if(("出差费用").equals(typename)){
				Double	staymoney=0.0;
				Double	tramoney=0.0;
				EvectionMoney emoney=emdao.findByProId(process);
				
				String money=ProcessService.numbertocn(emoney.getMoney());
				List<Stay> staylist=sadao.findByEvemoney(emoney);
				for (Stay stay : staylist) {
					staymoney += stay.getStayMoney();
				}
				List<Traffic> tralist=tdao.findByEvection(emoney);
				for (Traffic traffic : tralist) {
					tramoney+=traffic.getTrafficMoney();
				}
				model.addAttribute("staymoney", staymoney);
				model.addAttribute("tramoney", tramoney);
				model.addAttribute("allmoney", money);
				model.addAttribute("emoney", emoney);
				model.addAttribute("staylist", staylist);
				model.addAttribute("tralist", tralist);
				model.addAttribute("map", map);
				return "process/evemonserch";
			}else if(("出差申请").equals(typename)){
				Evection eve=edao.findByProId(process);
				model.addAttribute("eve", eve);
				model.addAttribute("map", map);
				return "process/eveserach";
			}else if(("加班申请").equals(typename)){
				Overtime eve=odao.findByProId(process);
				String type=tydao.findname(eve.getTypeId());
				model.addAttribute("eve", eve);
				model.addAttribute("map", map);
				model.addAttribute("type", type);
				return "process/overserch";
			}else if(("请假申请").equals(typename)){
				Holiday eve=hdao.findByProId(process);
				String type=tydao.findname(eve.getTypeId());
				model.addAttribute("eve", eve);
				model.addAttribute("map", map);
				model.addAttribute("type", type);
				return "process/holiserch";
			}else if(("转正申请").equals(typename)){
				Regular eve=rgdao.findByProId(process);
				model.addAttribute("eve", eve);
				model.addAttribute("map", map);
				return "process/reguserch";
			}else if(("离职申请").equals(typename)){
				Resign eve=rsdao.findByProId(process);
				model.addAttribute("eve", eve);
				model.addAttribute("map", map);
				return "process/resserch";
			}
		
		
		
		return "process/serch";
	}
	/**
	 * 进入审核页面
	 * @return
	 */
	@RequestMapping("auditing")
	public String auditing(@SessionAttribute("userId") Long userId,Model model,HttpServletRequest req,
			@RequestParam(value = "page", defaultValue = "0") int page,
			@RequestParam(value = "size", defaultValue = "10") int size){
		User u=udao.findOne(userId);
		
		//流程id
		Long id=Long.parseLong(req.getParameter("id"));
		ProcessList process=prodao.findOne(id);
		
		Reviewed re=redao.findByProIdAndUserId(process.getProcessId(), u);//查找审核表
		
		String typename=process.getTypeNmae().trim();
		if(("费用报销").equals(typename)){
			Bursement bu=budao.findByProId(process);
			model.addAttribute("bu", bu);
			
		}else if(("出差费用").equals(typename)){
			EvectionMoney emoney=emdao.findByProId(process);
			model.addAttribute("bu", emoney);
		}else if(("转正申请").equals(typename)||("离职申请").equals(typename)){
			User zhuan=udao.findOne(process.getUserId().getUserId());
			model.addAttribute("position", zhuan);
		}
		proservice.user(page, size, model);
		List<Map<String, Object>> list=proservice.index4(process);
		
		model.addAttribute("statusid", process.getStatusId());
		model.addAttribute("process", process);
		model.addAttribute("revie", list);
		model.addAttribute("size", list.size());
		model.addAttribute("statusid", process.getStatusId());
		model.addAttribute("ustatusid", re.getStatusId());
		model.addAttribute("positionid",u.getPosition().getId());
		model.addAttribute("typename", typename);
		
		return "process/audetail";
		
	}
	/**
	 * 审核确定的页面
	 * @return
	 */
	@RequestMapping("susave")
	public String save(@SessionAttribute("userId") Long userId,Model model,HttpServletRequest req,Reviewed reviewed){
		User u=udao.findOne(userId);
		String name=null;
		String typename=req.getParameter("type");
		Long proid=Long.parseLong(req.getParameter("proId"));
		
		ProcessList pro=prodao.findOne(proid);//找到该条流程
		
		User shen=udao.findOne(pro.getUserId().getUserId());//申请人
		if(!StringUtil.isEmpty(req.getParameter("liuzhuan"))){
			name=req.getParameter("liuzhuan");
		}
		if(!StringUtil.isEmpty(name)){
			//审核并流转
			User u2=udao.findByUserName(reviewed.getUsername());//找到下一个审核人
			if(("离职申请").equals(typename)){
				if(u.getUserId().equals(pro.getUserId().getFatherId())){
					if(u2.getPosition().getId().equals(5L)){
						proservice.save(proid, u, reviewed, pro, u2);
					}else{
						model.addAttribute("error", "请选财务经理。");
						return "common/proce";
					}
				}else{
					if(u2.getPosition().getId().equals(7L)){
						proservice.save(proid, u, reviewed, pro, u2);
					}else{
						model.addAttribute("error", "请选人事经理。");
						return "common/proce";
					}
				}
				
			}else if(("费用报销").equals(typename)||("出差费用").equals(typename)){
				
				if(u2.getPosition().getId().equals(5L)){
					proservice.save(proid, u, reviewed, pro, u2);
				}else{
					model.addAttribute("error", "请选财务经理。");
					return "common/proce";
				}
			}else{
				if(u2.getPosition().getId().equals(7L)){
					proservice.save(proid, u, reviewed, pro, u2);
				}else{
					model.addAttribute("error", "请选人事经理。");
					return "common/proce";
				}
			}

		}else{
			//审核并结案
			Reviewed re=redao.findByProIdAndUserId(proid,u);
			re.setAdvice(reviewed.getAdvice());
			re.setStatusId(reviewed.getStatusId());
			re.setReviewedTime(new Date());
			redao.save(re);
			pro.setStatusId(reviewed.getStatusId());//改变主表的状态
			prodao.save(pro);
			if(("请假申请").equals(typename)||("出差申请").equals(typename)){
			if(reviewed.getStatusId()==25){
				Attends attend=new Attends();
				attend.setHolidayDays(pro.getProcseeDays());
				attend.setHolidayStart(pro.getStartTime());
				attend.setUser(pro.getUserId());
				if(("请假申请").equals(typename)){
					attend.setStatusId(46L);
				}else if(("出差申请").equals(typename)){
					attend.setStatusId(47L);
				}
				adao.save(attend);
			}
			}
			
			
		}
		
		
		if(("费用报销").equals(typename)){
			Bursement  bu=budao.findByProId(pro);
			if(shen.getFatherId().equals(u.getUserId())){
				bu.setManagerAdvice(reviewed.getAdvice());
				budao.save(bu);
			}
			if(u.getPosition().getId()==5){
				bu.setFinancialAdvice(reviewed.getAdvice());
				bu.setBurseTime(new Date());
				bu.setOperation(u);
				budao.save(bu);
			}
		}else if(("出差费用").equals(typename)){
			EvectionMoney emoney=emdao.findByProId(pro);
			if(shen.getFatherId().equals(u.getUserId())){
				emoney.setManagerAdvice(reviewed.getAdvice());
				emdao.save(emoney);
			}
			if(u.getPosition().getId()==5){
				emoney.setFinancialAdvice(reviewed.getAdvice());
				emdao.save(emoney);
			}
		}else if(("出差申请").equals(typename)){
			Evection ev=edao.findByProId(pro);
			if(shen.getFatherId().equals(u.getUserId())){
				ev.setManagerAdvice(reviewed.getAdvice());
				edao.save(ev);
			}
			if(u.getPosition().getId().equals(7L)){
				ev.setPersonnelAdvice(reviewed.getAdvice());
				edao.save(ev);
			}
		}else if(("加班申请").equals(typename)){
			 Overtime over=odao.findByProId(pro);
			if(shen.getFatherId().equals(u.getUserId())){
				over.setManagerAdvice(reviewed.getAdvice());
				odao.save(over);
			}
			if(u.getPosition().getId().equals(7L)){
				over.setPersonnelAdvice(reviewed.getAdvice());
				odao.save(over);
			}
		}else if(("请假申请").equals(typename)){
			 Holiday over=hdao.findByProId(pro);
			if(shen.getFatherId().equals(u.getUserId())){
				over.setManagerAdvice(reviewed.getAdvice());
				hdao.save(over);
			}
			if(u.getPosition().getId().equals(7L)){
				over.setPersonnelAdvice(reviewed.getAdvice());
				hdao.save(over);
			}
		}else if(("转正申请").equals(typename)){
			 Regular over=rgdao.findByProId(pro);
			if(shen.getFatherId().equals(u.getUserId())){
				over.setManagerAdvice(reviewed.getAdvice());
				rgdao.save(over);
			}
			if(u.getPosition().getId().equals(7L)){
				over.setPersonnelAdvice(reviewed.getAdvice());
				rgdao.save(over);
			}
		}else if(("离职申请").equals(typename)){
			
			Resign over=rsdao.findByProId(pro);
			if(shen.getFatherId().equals(u.getUserId())){
				
				over.setManagerAdvice(reviewed.getAdvice());
				rsdao.save(over);
			}
			if(u.getPosition().getId()==5){
				over.setPersonnelAdvice(reviewed.getAdvice());
				rsdao.save(over);
			}else if(u.getPosition().getId().equals(7L)){
				over.setFinancialAdvice(reviewed.getAdvice());
				rsdao.save(over);
			}
		}
		return "redirect:/audit";
		
	}
	
	//出差费用
	@RequestMapping("evemoney")
	public String evemoney(Model model, @SessionAttribute("userId") Long userId,HttpServletRequest req,
			@RequestParam(value = "page", defaultValue = "0") int page,
			@RequestParam(value = "size", defaultValue = "10") int size){
		Long proid=Long.parseLong(req.getParameter("id"));//出差申请的id
		ProcessList prolist=prodao.findbyuseridandtitle(userId, proid);//找这个用户的出差申请
		proservice.index6(model, userId, page, size);
		model.addAttribute("prolist", prolist);
		return "process/evectionmoney";
	}
	/**
	 * 出差费用表单接收
	 * @param model
	 * @param session
	 * @param request
	 * @param page
	 * @param size
	 * @return
	 */
	@RequestMapping("moneyeve")
	public String moneyeve(@RequestParam("filePath")MultipartFile filePath,HttpServletRequest req,@Valid EvectionMoney eve,BindingResult br,
			@SessionAttribute("userId") Long userId,Model model) throws IllegalStateException, IOException{
			User lu=udao.findOne(userId);//申请人
			User shen=udao.findByUserName(eve.getShenname());//审核人
			Long roleid=lu.getRole().getRoleId();//申请人角色id
			Long fatherid=lu.getFatherId();//申请人父id
			Long userid=shen.getUserId();//审核人userid
			String val=req.getParameter("val");
			Double allmoney=0.0;
			if(roleid>=3L && Objects.equals(fatherid, userid)){
						List<Traffic> ss=eve.getTraffic();
						for (Traffic traffic : ss) {
							allmoney+=traffic.getTrafficMoney();
							User u=udao.findByUserName(traffic.getUsername());
							traffic.setUser(u);
							traffic.setEvection(eve);
							
						}
						List<Stay> mm=eve.getStay();
						for (Stay stay : mm) {
							allmoney+=stay.getStayMoney()*stay.getDay();
							User u=udao.findByUserName(stay.getNameuser());
							stay.setUser(u);
							stay.setEvemoney(eve);
						}
						
						eve.setMoney(allmoney);
						//set主表
						ProcessList pro=eve.getProId();
						System.out.println(pro+"mmmmmm");
						proservice.index5(pro, val, lu, filePath,shen.getUserName());
						emdao.save(eve);
						//存审核表
						proservice.index7(shen, pro);
					}else{
						return "common/proce";
					}
			
				return "redirect:/flowmanage";
		
	}
	//出差申请
	@RequestMapping("evection")
	public String evection(Model model, @SessionAttribute("userId") Long userId,HttpServletRequest request,
			@RequestParam(value = "page", defaultValue = "0") int page,
			@RequestParam(value = "size", defaultValue = "10") int size){
		//查找类型
		List<SystemTypeList> outtype=tydao.findByTypeModel("aoa_evection");
		proservice.index6(model, userId, page, size);
		model.addAttribute("outtype", outtype);
		return "process/evection";
	}
	/**
	 * 出差申请表单接收
	 * @param model
	 * @param session
	 * @param request
	 * @param page
	 * @param size
	 * @return
	 * @throws IOException 
	 * @throws IllegalStateException 
	 */
	@RequestMapping("evec")
	public String evec(@RequestParam("filePath")MultipartFile filePath,HttpServletRequest req,@Valid Evection eve,BindingResult br,
			@SessionAttribute("userId") Long userId) throws IllegalStateException, IOException{
		User lu=udao.findOne(userId);//申请人
		User shen=udao.findByUserName(eve.getNameuser());//审核人
		Long roleid=lu.getRole().getRoleId();//申请人角色id
		Long fatherid=lu.getFatherId();//申请人父id
		Long userid=shen.getUserId();//审核人userid
		String val=req.getParameter("val");
		if(roleid>=3L && Objects.equals(fatherid, userid)){
			//set主表
			ProcessList pro=eve.getProId();
			proservice.index5(pro, val, lu, filePath,shen.getUserName());
			edao.save(eve);
			//存审核表
			proservice.index7(shen, pro);
		}else{
			return "common/proce";
		}
		
		return "redirect:/xinxeng";
	}
	//加班申请
		@RequestMapping("overtime")
		public String overtime(Model model, @SessionAttribute("userId") Long userId,HttpServletRequest request,
				@RequestParam(value = "page", defaultValue = "0") int page,
				@RequestParam(value = "size", defaultValue = "10") int size){
			//查找类型
			List<SystemTypeList> overtype=tydao.findByTypeModel("aoa_overtime");
			proservice.index6(model, userId, page, size);
			model.addAttribute("overtype", overtype);
			return "process/overtime";
		}
	/**
	 * 加班申请接收
	 * @param model
	 * @param session
	 * @param request
	 * @param page
	 * @param size
	 * @return
	 */
		@RequestMapping("over")
		public String over(HttpServletRequest req,@Valid Overtime eve,BindingResult br,
				@SessionAttribute("userId") Long userId) throws IllegalStateException, IOException{
			User lu=udao.findOne(userId);//申请人
			User shen=udao.findByUserName(eve.getNameuser());//审核人
			Long roleid=lu.getRole().getRoleId();//申请人角色id
			Long fatherid=lu.getFatherId();//申请人父id
			Long userid=shen.getUserId();//审核人userid
			String val=req.getParameter("val");
			if(roleid>=3L && Objects.equals(fatherid, userid)){
				//set主表
				ProcessList pro=eve.getProId();
				proservice.index8(pro, val, lu,shen.getUserName());
				odao.save(eve);
				//存审核表
				proservice.index7(shen, pro);
			}else{
				return "common/proce";
			}
			
			return "redirect:/xinxeng";
			
		}
	//请假申请
	@RequestMapping("holiday")
	public String holiday(Model model, @SessionAttribute("userId") Long userId,HttpServletRequest request,
			@RequestParam(value = "page", defaultValue = "0") int page,
			@RequestParam(value = "size", defaultValue = "10") int size){
		//查找类型
		List<SystemTypeList> overtype=tydao.findByTypeModel("aoa_holiday");
		proservice.index6(model, userId, page, size);
		model.addAttribute("overtype", overtype);
		return "process/holiday";
	}
	/**
	 * 请假申请接收
	 * @param model
	 * @param session
	 * @param request
	 * @param page
	 * @param size
	 * @return
	 */
	@RequestMapping("holi")
	public String holi(@RequestParam("filePath")MultipartFile filePath,HttpServletRequest req,@Valid Holiday eve,BindingResult br,
			@SessionAttribute("userId") Long userId,Model model) throws IllegalStateException, IOException{
		User lu=udao.findOne(userId);//申请人
		User shen=udao.findByUserName(eve.getNameuser());//审核人
		Long roleid=lu.getRole().getRoleId();//申请人角色id
		Long fatherid=lu.getFatherId();//申请人父id
		Long userid=shen.getUserId();//审核人userid
		String val=req.getParameter("val");
		if(roleid>=3L && Objects.equals(fatherid, userid)){
			SystemTypeList  type=tydao.findOne(eve.getTypeId());
			if(eve.getTypeId()==40){
				if(type.getTypeSortValue()<eve.getLeaveDays()){
					model.addAttribute("error", "婚假必须小于10天。");
					return "common/proce";
				}
			}else if(eve.getTypeId()==38){
				if(type.getTypeSortValue()<eve.getLeaveDays()){
					model.addAttribute("error", "单次事假必须小于4天。");
					return "common/proce";
				}
			}else if(eve.getTypeId()==42){
				if(type.getTypeSortValue()<eve.getLeaveDays()){
					model.addAttribute("error", "陪产假必须小于10天。");
					return "common/proce";
				}
			}else{
				//set主表
				ProcessList pro=eve.getProId();
				proservice.index5(pro, val, lu, filePath,shen.getUserName());
				hdao.save(eve);
				//存审核表
				proservice.index7(shen, pro);
			}
		}else{
			return "common/proce";
		}
		
		return "redirect:/xinxeng";
	}
	//转正申请
	@RequestMapping("regular")
	public String regular(Model model, @SessionAttribute("userId") Long userId,HttpServletRequest request,
			@RequestParam(value = "page", defaultValue = "0") int page,
			@RequestParam(value = "size", defaultValue = "10") int size){
		proservice.index6(model, userId, page, size);
		return "process/regular";
	}
	/**
	 * 转正申请接收
	 * @param model
	 * @param session
	 * @param request
	 * @param page
	 * @param size
	 * @return
	 */
		@RequestMapping("regu")
		public String regu(HttpServletRequest req,@Valid Regular eve,BindingResult br,
				@SessionAttribute("userId") Long userId,Model model) throws IllegalStateException, IOException{
			User lu=udao.findOne(userId);//申请人
			User shen=udao.findByUserName(eve.getNameuser());//审核人
			Long roleid=lu.getRole().getRoleId();//申请人角色id
			Long fatherid=lu.getFatherId();//申请人父id
			Long userid=shen.getUserId();//审核人userid
			String val=req.getParameter("val");
			if(roleid>=3L && Objects.equals(fatherid, userid)){
				if(lu.getRole().getRoleId()==6 ||lu.getRole().getRoleId()==7){
					
					//set主表
					ProcessList pro=eve.getProId();
					proservice.index8(pro, val, lu,shen.getUserName());
					rgdao.save(eve);
					//存审核表
					proservice.index7(shen, pro);
				}else{
					model.addAttribute("error", "你不需要转正。。。");
					return "common/proce";
				}
			}else{
				return "common/proce";
			}
			
			return "redirect:/xinxeng";
			
		}
	//离职申请
	@RequestMapping("resign")
	public String resign(Model model, @SessionAttribute("userId") Long userId,HttpServletRequest request,
			@RequestParam(value = "page", defaultValue = "0") int page,
			@RequestParam(value = "size", defaultValue = "10") int size){
		proservice.index6(model, userId, page, size);
		return "process/resign";
	}
	/**
	 * 离职申请接收
	 * @param model
	 * @param session
	 * @param request
	 * @param page
	 * @param size
	 * @return
	 */
		@RequestMapping("res")
		public String res(HttpServletRequest req,@Valid Resign eve,BindingResult br,
				@SessionAttribute("userId") Long userId,Model model) throws IllegalStateException, IOException{
			User lu=udao.findOne(userId);//申请人
			User shen=udao.findByUserName(eve.getNameuser());//审核人
			Long roleid=lu.getRole().getRoleId();//申请人角色id
			Long fatherid=lu.getFatherId();//申请人父id
			Long userid=shen.getUserId();//审核人userid
			String val=req.getParameter("val");
			if(roleid>=3L && Objects.equals(fatherid, userid)){
				//set主表
				ProcessList pro=eve.getProId();
				proservice.index8(pro, val, lu,shen.getUserName());
				eve.setHandUser(udao.findByUserName(eve.getHanduser()));
				rsdao.save(eve);
				//存审核表
				proservice.index7(shen, pro);
			}else{
				return "common/proce";
			}
			
			return "redirect:/xinxeng";
			
		}
		
		/**
		 * 删除
		 */
		@RequestMapping("sdelete")
		public String dele(HttpServletRequest req,@SessionAttribute("userId") Long userId,Model model){
			User lu=udao.findOne(userId);//审核人
			Long proid=Long.parseLong(req.getParameter("id"));
			Reviewed rev=redao.findByProIdAndUserId(proid, lu);
			if(!Objects.isNull(rev)){
				rev.setDel(true);
				redao.save(rev);
			}else{
				return "common/proce";
			}
			return "redirect:/audit";
			
		}
		
		/**
		 * 下载文件
		 * @param response
		 * @param fileid
		 */
		@RequestMapping("file")
		public void downFile(HttpServletResponse response, @RequestParam("fileid") Long fileid) {
			try {
				Attachment attd = AttDao.findOne(fileid);
				File file = new File(rootpath,attd.getAttachmentPath());
				response.setContentLength(attd.getAttachmentSize().intValue());
				response.setContentType(attd.getAttachmentType());
				response.setHeader("Content-Disposition","attachment;filename=" + new String(attd.getAttachmentName().getBytes("UTF-8"), "ISO8859-1"));
				proservice.writefile(response, file);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		/**
		 * 图片预览
		 * @param response
		 * @param fileid
		 */
		@RequestMapping("show/**")
		public void image(Model model, HttpServletResponse response, @SessionAttribute("userId") Long userId, HttpServletRequest request)
				throws IOException {

			String startpath = new String(URLDecoder.decode(request.getRequestURI(), "utf-8"));
			
			String path = startpath.replace("/show", "");
			
			File f = new File(rootpath, path);
			System.out.println(f.getAbsolutePath());
			ServletOutputStream sos = response.getOutputStream();
			FileInputStream input = new FileInputStream(f.getPath());
			byte[] data = new byte[(int) f.length()];
			IOUtils.readFully(input, data);
			// 将文件流输出到浏览器
			IOUtils.write(data, sos);
			input.close();
			sos.close();
		}
}
