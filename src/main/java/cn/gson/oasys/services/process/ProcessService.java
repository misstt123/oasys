package cn.gson.oasys.services.process;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import javax.transaction.Transactional;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.domain.Sort.Order;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

import com.github.pagehelper.util.StringUtil;

import cn.gson.oasys.model.dao.notedao.AttachmentDao;
import cn.gson.oasys.model.dao.processdao.BursementDao;
import cn.gson.oasys.model.dao.processdao.ProcessListDao;
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
import cn.gson.oasys.model.entity.process.ProcessList;
import cn.gson.oasys.model.entity.process.Reviewed;
import cn.gson.oasys.model.entity.system.SystemStatusList;
import cn.gson.oasys.model.entity.system.SystemTypeList;
import cn.gson.oasys.model.entity.user.Dept;
import cn.gson.oasys.model.entity.user.Position;
import cn.gson.oasys.model.entity.user.User;
import cn.gson.oasys.services.mail.MailServices;


@Service
@Transactional
public class ProcessService {
	@Autowired
	private UserDao udao;
	@Autowired
	private DeptDao ddao;
	@Autowired
	private RoleDao rdao;
	@Autowired
	private PositionDao pdao;
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
	private BursementDao budao;
	@Autowired
	private MailServices mservice;
	@Autowired
	private ProcessListDao prodao;
	 /**
     * 汉语中数字大写
     */
  private static final String[] CN_UPPER_NUMBER = { "零", "壹", "贰", "叁", "肆",
            "伍", "陆", "柒", "捌", "玖" };
   /**
    * 汉语中货币单位大写，这样的设计类似于占位符
     */
   private static final String[] CN_UPPER_MONETRAY_UNIT = { "分", "角", "元",
           "拾", "佰", "仟", "万", "拾", "佰", "仟", "亿", "拾", "佰", "仟", "兆", "拾",
           "佰", "仟" };
   /**
     * 特殊字符：整
    */
  private static final String CN_FULL = "整";
 /**
     * 特殊字符：负
    */
  private static final String CN_NEGATIVE = "负";
  /**
     * 金额的精度，默认值为2
    */
  private static final int MONEY_PRECISION = 2;
  /**
     * 特殊字符：零元整
    */
  private static final String CN_ZEOR_FULL = "零元" + CN_FULL;
  

	/**
	 * 写文件 方法
	 * 
	 * @param response
	 * @param file
	 * @throws IOException 
	 */
	public void writefile(HttpServletResponse response, File file) {
		ServletOutputStream sos = null;
		FileInputStream aa = null;
		try {
			aa = new FileInputStream(file);
			sos = response.getOutputStream();
			// 读取文件问字节码
			byte[] data = new byte[(int) file.length()];
			IOUtils.readFully(aa, data);
			// 将文件流输出到浏览器
			IOUtils.write(data, sos);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				sos.close();
				aa.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
	
	}
  /**
   * 用户封装
   * @param user
   * @param page
   * @param size
   * @param val
   * @return
   */
	public void user(int page,int size,Model model){
		Pageable pa=new PageRequest(page, size);
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
	}
	
	
	public Page<AubUser> index(User user,int page,int size,String val,Model model){
		Pageable pa=new PageRequest(page, size);
		Page<AubUser> pagelist=null;
		Page<AubUser> pagelist2=null;
		List<Order> orders = new ArrayList<>();
		User  u=udao.findByUserName(val);//找用户
		SystemStatusList status=sdao.findByStatusModelAndStatusName("aoa_process_list", val);
		if(StringUtil.isEmpty(val)){
			orders.add(new Order(Direction.DESC, "applyTime"));
			Sort sort = new Sort(orders);
			pa=new PageRequest(page, size,sort);
			pagelist=redao.findByUserIdOrderByStatusId(user,false, pa);
		}else if(!Objects.isNull(u)){
			pagelist=redao.findprocesslist(user,u,false,pa);
			model.addAttribute("sort", "&val="+val);
		}else if(!Objects.isNull(status)){
			pagelist=redao.findbystatusprocesslist(user,status.getStatusId(),false,pa);
			model.addAttribute("sort", "&val="+val);
		}else{
			pagelist2=redao.findbytypenameprocesslist(user, val,false, pa);
			if(!pagelist2.hasContent()){
				pagelist2=redao.findbyprocessnameprocesslist(user, val,false, pa);
			}
			model.addAttribute("sort", "&val="+val);
			return pagelist2;
		}
		return pagelist;
	}

	public List<Map<String,Object>> index2(Page<AubUser> page,User user){
		List<Map<String, Object>> list = new ArrayList<>();
		List<AubUser> prolist=page.getContent();
		for (int i = 0; i < prolist.size(); i++) {
			String harryname=tydao.findname(prolist.get(i).getDeeply());
			SystemStatusList status=sdao.findOne(prolist.get(i).getStatusId());
			Map<String, Object> result=new HashMap<>();
			result.put("typename", prolist.get(i).getTypeNmae());
			result.put("title", prolist.get(i).getProcessName());
			result.put("pushuser", prolist.get(i).getUserName());
			result.put("applytime",  prolist.get(i).getApplyTime());
			result.put("harry", harryname);
			result.put("statusname", status.getStatusName());
			result.put("statuscolor", status.getStatusColor());
			result.put("proid", prolist.get(i).getProcessId());
			list.add(result);
			
		}
		return list;
	}
	/**
	 * 审核人封装
	 */
	public List<Map<String,Object>> index4(ProcessList process){
		List<Map<String,Object>> relist=new ArrayList<>();
		List<Reviewed> revie=redao.findByReviewedTimeNotNullAndProId(process);
		for (int i = 0; i <revie.size(); i++) {
			Map<String, Object> result=new HashMap<>();
			User u=udao.findOne(revie.get(i).getUserId().getUserId());
			Position po=pdao.findOne(u.getPosition().getId());
			SystemStatusList status=sdao.findOne(revie.get(i).getStatusId());
			result.put("poname", po.getName());
			result.put("username", u.getUserName());
			result.put("retime",revie.get(i).getReviewedTime());
			result.put("restatus",status.getStatusName());
			result.put("statuscolor",status.getStatusColor());
			result.put("des", revie.get(i).getAdvice());
			result.put("img",u.getImgPath());
			result.put("positionid",u.getPosition().getId());
			relist.add(result);
		}
		return relist;
	}
	/**
	 * process数据封装
	 */
	
	public Map<String,Object> index3(String name,User user,String typename,ProcessList process){
		System.out.println(name);
		Map<String,Object> result=new HashMap<>();
		String harryname=tydao.findname(process.getDeeply());
		result.put("proId", process.getProcessId());
		result.put("harryname", harryname);
		result.put("processName", process.getProcessName());
		result.put("processDescribe",process.getProcessDescribe());
		if(("审核").equals(name)){
			result.put("username", process.getUserId().getUserName());//提单人员
			result.put("deptname", ddao.findname(process.getUserId().getDept().getDeptId()));//部门
		}else if(("申请").equals(name)){
			result.put("username", user.getUserName());
			result.put("deptname", ddao.findname(process.getUserId().getDept().getDeptId()));
		}
		result.put("applytime", process.getApplyTime());
		if(!Objects.isNull(process.getProFileid())){
			result.put("file", process.getProFileid());
		}else{
			result.put("file", "file");
		}
		result.put("name", name);
		result.put("typename", process.getTypeNmae());
		result.put("startime", process.getStartTime());
		result.put("endtime", process.getEndTime());
		result.put("tianshu", process.getProcseeDays());
		result.put("statusid", process.getStatusId());
		if( process.getProFileid()!=null){
		   result.put("filepath", process.getProFileid().getAttachmentPath());
			if(process.getProFileid().getAttachmentType().startsWith("image")){
				result.put("filetype", "img");
			}else{
				result.put("filetype", "appli");
			}
		}
		return result;
	}
	/**
	 * 公用
	 */
	public void  index6(Model model,Long id,int page,int size){
		User lu=udao.findOne(id);//申请人
		Pageable pa=new PageRequest(page, size);
		List<SystemTypeList> harrylist=tydao.findByTypeModel("aoa_process_list");
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
		model.addAttribute("username", lu.getUserName());
		model.addAttribute("harrylist", harrylist);
	}
	/**
	 * 存表
	 * @throws IOException 
	 * @throws IllegalStateException 
	 */
	public void index5(ProcessList pro,String val,User lu,MultipartFile filePath,String name) throws IllegalStateException, IOException{
		
		pro.setTypeNmae(val);
		pro.setApplyTime(new Date());
		pro.setUserId(lu);
		pro.setStatusId(23L);
		pro.setShenuser(name);
		Attachment attaid=null;
		if(!StringUtil.isEmpty(filePath.getOriginalFilename())){
			attaid=mservice.upload(filePath, lu);
			attaid.setModel("aoa_bursement");
			AttDao.save(attaid);
			pro.setProFileid(attaid);
		}
	}
	public void index8(ProcessList pro,String val,User lu,String name) {
		pro.setTypeNmae(val);
		pro.setApplyTime(new Date());
		pro.setUserId(lu);
		pro.setStatusId(23L);
		pro.setShenuser(name);
	}
	/**
	 * 存主表
	 */
	public void save(Long proid,User u,Reviewed reviewed,ProcessList pro,User u2){
		Reviewed re=redao.findByProIdAndUserId(proid,u);
		re.setAdvice(reviewed.getAdvice());
		re.setStatusId(reviewed.getStatusId());
		re.setReviewedTime(new Date());
		re.setStatusId(reviewed.getStatusId());
		redao.save(re);
		
		
		Reviewed re2=new  Reviewed();
		re2.setProId(pro);
		re2.setUserId(u2);
		re2.setStatusId(23L);
		redao.save(re2);
		
		pro.getShenuser();
		pro.setShenuser(pro.getShenuser()+";"+u2.getUserName());
		pro.setStatusId(24L);//改变主表的状态
		prodao.save(pro);
	}
	/**
	 * 存审核表
	 */
	public void index7(User reuser,ProcessList pro){
		Reviewed revie=new Reviewed();
		revie.setUserId(reuser);
		revie.setStatusId(23L);
		revie.setProId(pro);
		redao.save(revie);
	}
	/**
	      * 把输入的金额转换为汉语中人民币的大写
	       * 
	      * @param numberOfMoney
	      *            输入的金额
	      * @return 对应的汉语大写
	      */
	    public static String number2CNMontrayUnit(BigDecimal numberOfMoney) {
	         StringBuffer sb = new StringBuffer();
	        // -1, 0, or 1 as the value of this BigDecimal is negative, zero, or
	       // positive.
	        int signum = numberOfMoney.signum();
	        // 零元整的情况
	         if (signum == 0) {
	             return CN_ZEOR_FULL;
	       }
	        //这里会进行金额的四舍五入
	         long number = numberOfMoney.movePointRight(MONEY_PRECISION)
	                .setScale(0, 4).abs().longValue();
	        // 得到小数点后两位值
	         long scale = number % 100;
	        int numUnit = 0;
	        int numIndex = 0;
	        boolean getZero = false;
	        // 判断最后两位数，一共有四中情况：00 = 0, 01 = 1, 10, 11
	        if (!(scale > 0)) {
	            numIndex = 2;
	             number = number / 100;
	             getZero = true;
	        }
	        if ((scale > 0) && (!(scale % 10 > 0))) {
	             numIndex = 1;
	            number = number / 10;
	             getZero = true;
	        }
	        int zeroSize = 0;
	        while (true) {
	             if (number <= 0) {
	                break;
	            }
	           // 每次获取到最后一个数
	           numUnit = (int) (number % 10);
	             if (numUnit > 0) {
	                 if ((numIndex == 9) && (zeroSize >= 3)) {
	                     sb.insert(0, CN_UPPER_MONETRAY_UNIT[6]);
	                }
	               if ((numIndex == 13) && (zeroSize >= 3)) {
	                    sb.insert(0, CN_UPPER_MONETRAY_UNIT[10]);
	              }
	                sb.insert(0, CN_UPPER_MONETRAY_UNIT[numIndex]);
	                 sb.insert(0, CN_UPPER_NUMBER[numUnit]);
	                getZero = false;
	                zeroSize = 0;
	            } else {
	                ++zeroSize;
	                if (!(getZero)) {
	                   sb.insert(0, CN_UPPER_NUMBER[numUnit]);
	                }
	               if (numIndex == 2) {
	                   if (number > 0) {
	                        sb.insert(0, CN_UPPER_MONETRAY_UNIT[numIndex]);
	                    }
	                } else if (((numIndex - 2) % 4 == 0) && (number % 1000 > 0)) {
	                    sb.insert(0, CN_UPPER_MONETRAY_UNIT[numIndex]);
	                }
	               getZero = true;
	            }
	             // 让number每次都去掉最后一个数
	             number = number / 10;
	            ++numIndex;
	         }
	        // 如果signum == -1，则说明输入的数字为负数，就在最前面追加特殊字符：负
	         if (signum == -1) {
	            sb.insert(0, CN_NEGATIVE);
	        }
	        // 输入的数字小数点后两位为"00"的情况，则要在最后追加特殊字符：整
	       if (!(scale > 0)) {
	           sb.append(CN_FULL);
	       }
	        return sb.toString();
	    }
	 
	    public static String numbertocn(Double money){
	    	BigDecimal numberOfMoney = new BigDecimal(money);
	        String s = number2CNMontrayUnit(numberOfMoney);
	        System.out.println("你输入的金额为：【"+ money +"】   #--# [" +s.toString()+"]");
	          return s.toString();
	    }	

	
	
}
