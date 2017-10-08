package cn.gson.oasys.controller.process;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.github.pagehelper.util.StringUtil;

import cn.gson.oasys.model.dao.notedao.AttachmentDao;
import cn.gson.oasys.model.dao.processdao.BursementDao;
import cn.gson.oasys.model.dao.processdao.ReviewedDao;
import cn.gson.oasys.model.dao.processdao.SubjectDao;
import cn.gson.oasys.model.dao.roledao.RoleDao;
import cn.gson.oasys.model.dao.system.StatusDao;
import cn.gson.oasys.model.dao.system.TypeDao;
import cn.gson.oasys.model.dao.user.DeptDao;
import cn.gson.oasys.model.dao.user.PositionDao;
import cn.gson.oasys.model.dao.user.UserDao;
import cn.gson.oasys.model.entity.note.Attachment;
import cn.gson.oasys.model.entity.process.AubUser;
import cn.gson.oasys.model.entity.process.Bursement;
import cn.gson.oasys.model.entity.process.DetailsBurse;
import cn.gson.oasys.model.entity.process.ProcessList;
import cn.gson.oasys.model.entity.process.Reviewed;
import cn.gson.oasys.model.entity.process.Subject;
import cn.gson.oasys.model.entity.role.Role;
import cn.gson.oasys.model.entity.system.SystemTypeList;
import cn.gson.oasys.model.entity.user.Dept;
import cn.gson.oasys.model.entity.user.Position;
import cn.gson.oasys.model.entity.user.User;
import cn.gson.oasys.services.mail.MailServices;
import cn.gson.oasys.services.process.ProcessService;

@Controller
@RequestMapping("/")
public class ProcedureController {
	
	@Autowired
	private UserDao udao;
	@Autowired
	private DeptDao ddao;
	@Autowired
	private RoleDao rdao;
	@Autowired
	private SubjectDao sudao;
	@Autowired
	private StatusDao sdao;
	@Autowired
	private TypeDao tydao;
	@Autowired
	private ReviewedDao redao;
	@Autowired
	private AttachmentDao AttDao;
	@Autowired
	private MailServices mservice;
	@Autowired
	private BursementDao budao;
	@Autowired
	private PositionDao pdao;
	@Autowired
	private ProcessService proservice;
	//新增页面
	@RequestMapping("xinxeng")
	public String index(){
		
		return "process/procedure";
	}
	
	//费用报销表单
	@RequestMapping("burse")
	public String bursement(Model model, HttpSession session,HttpServletRequest request,
			@RequestParam(value = "page", defaultValue = "0") int page,
			@RequestParam(value = "size", defaultValue = "10") int size){
		String userId = ((String) session.getAttribute("userId")).trim();
		Long lid=Long.parseLong(userId);
		Pageable pa=new PageRequest(page, size);
		User lu=udao.findOne(lid);
		//查找类型
		List<SystemTypeList> harrylist=tydao.findByTypeModel("aoa_process_list");
		List<SystemTypeList> uplist=tydao.findByTypeModel("aoa_bursement");
		//查找费用科目生成树
		List<Subject> second=sudao.findByParentId(1L);
		List<Subject> sublist=sudao.findByParentIdNot(1L);
		//查看用户并分页
		Page<User> pageuser=udao.findAll(pa);
		List<User> userlist=pageuser.getContent();
		// 查询部门表
		Iterable<Dept> deptlist = ddao.findAll();
		// 查职位表
		Iterable<Position> poslist = pdao.findAll();
		model.addAttribute("page", pageuser);
		model.addAttribute("emplist", userlist);
		model.addAttribute("deptlist", deptlist);
		model.addAttribute("poslist", poslist);
		model.addAttribute("url", "names");
		model.addAttribute("second", second);
		model.addAttribute("sublist", sublist);
		model.addAttribute("username", lu.getUserName());
		model.addAttribute("harrylist", harrylist);
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
			HttpSession session) throws IllegalStateException, IOException{
		String userId = ((String) session.getAttribute("userId")).trim();
		Long lid=Long.parseLong(userId);
		User lu=udao.findOne(lid);//申请人
		User reuser=udao.findByUserName(bu.getUsername());//审核人
		User zhuti=udao.findByUserName(bu.getNamemoney());//证明人
		Integer allinvoice=0;
		Double allmoney=0.0;
		Long roleid=lu.getRole().getRoleId();//申请人角色id
		Long fatherid=lu.getFatherId();//申请人父id
		Long userid=reuser.getUserId();//审核人userid
		if(roleid>=3L && fatherid==userid){
			
		
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
		pro.setTypeNmae("费用报销");
		pro.setApplyTime(new Date());
		pro.setUserId(lu);
		pro.setStatusId(23L);
		
		Attachment attaid=null;
		if(!StringUtil.isEmpty(filePath.getOriginalFilename())){
			attaid=mservice.upload(filePath, lu);
			attaid.setModel("aoa_bursement");
			AttDao.save(attaid);
			pro.setProFileid(attaid);
		}
		budao.save(bu);
		
		//存审核表
		Reviewed revie=new Reviewed();
		revie.setUserId(reuser);
		revie.setStatusId(23L);
		revie.setProId(pro);
		redao.save(revie);
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
	public String flowManage(HttpSession session,Model model,
			@RequestParam(value = "page", defaultValue = "0") int page,
			@RequestParam(value = "size", defaultValue = "10") int size){
		Pageable pa=new PageRequest(page, size);
		String userId = ((String) session.getAttribute("userId")).trim();
		Long userid = Long.parseLong(userId);
		
		return "process/flowmanage";
	}
	/**
	 * 流程审核
	 * @return
	 */
	@RequestMapping("audit")
	public String auding(HttpSession session,Model model,
			@RequestParam(value = "page", defaultValue = "0") int page,
			@RequestParam(value = "size", defaultValue = "10") int size){
		String userId = ((String) session.getAttribute("userId")).trim();
		Long userid = Long.parseLong(userId);
		User user=udao.findOne(userid);
		Page<AubUser> pagelist=proservice.index(user, page, size,null);
		List<Map<String, Object>> prolist=proservice.index2(pagelist,user);
		model.addAttribute("page", pagelist);
		model.addAttribute("prolist", prolist);
		model.addAttribute("url", "serch");
		System.out.println(prolist);
		return "process/auditing";
	}
/**
 * 流程审核条件查询
 * @return
 */
	@RequestMapping("serch")
	public String serch(HttpSession session,Model model,HttpServletRequest req,
			@RequestParam(value = "page", defaultValue = "0") int page,
			@RequestParam(value = "size", defaultValue = "10") int size){
		String userId = ((String) session.getAttribute("userId")).trim();
		Long userid = Long.parseLong(userId);
		User user=udao.findOne(userid);
		
		String val=null;
		if(!StringUtil.isEmpty(req.getParameter("val"))){
			val=req.getParameter("val");
		}
		Page<AubUser> pagelist=proservice.index(user, page, size,val);
		List<Map<String, Object>> prolist=proservice.index2(pagelist,user);
		model.addAttribute("page", pagelist);
		model.addAttribute("prolist", prolist);
		model.addAttribute("url", "serch");
		model.addAttribute("sort", "&val="+val);
		return "process/audtable";
	}
	
	
	/**
	 * 查看详细
	 * @return
	 */
	@RequestMapping("particular")
	public String particular(){
		
		return "process/serch";
	}
	//出差费用申请
	@RequestMapping("evemoney")
	public String evemoney(){
		return "process/evectionmoney";
	}
	//出差申请
	@RequestMapping("evection")
	public String evection(){
		return "process/evection";
	}
	//请假申请
	@RequestMapping("holiday")
	public String holiday(){
		return "process/holiday";
	}
	//加班申请
	@RequestMapping("overtime")
	public String overtime(){
		return "process/overtime";
	}
	//转正申请
	@RequestMapping("regular")
	public String regular(){
		return "process/regular";
	}
	//转正申请
	@RequestMapping("resign")
	public String resign(){
		return "process/resign";
	}
	
}
