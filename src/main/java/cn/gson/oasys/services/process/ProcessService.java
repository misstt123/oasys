package cn.gson.oasys.services.process;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.github.pagehelper.util.StringUtil;

import cn.gson.oasys.model.dao.notedao.AttachmentDao;
import cn.gson.oasys.model.dao.processdao.BursementDao;
import cn.gson.oasys.model.dao.processdao.ReviewedDao;
import cn.gson.oasys.model.dao.processdao.SubjectDao;
import cn.gson.oasys.model.dao.roledao.RoleDao;
import cn.gson.oasys.model.dao.system.StatusDao;
import cn.gson.oasys.model.dao.system.TypeDao;
import cn.gson.oasys.model.dao.user.DeptDao;
import cn.gson.oasys.model.dao.user.UserDao;
import cn.gson.oasys.model.entity.process.AubUser;
import cn.gson.oasys.model.entity.system.SystemStatusList;
import cn.gson.oasys.model.entity.user.User;


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
	
	public Page<AubUser> index(User user,int page,int size,String val){
		Pageable pa=new PageRequest(page, size);
		Page<AubUser> pagelist=null;
		Page<AubUser> pagelist2=null;
		User  u=udao.findByUserName(val);//找用户
		SystemStatusList status=sdao.findByStatusModelAndStatusName("aoa_process_list", val);
		if(StringUtil.isEmpty(val)){
			pagelist=redao.findByUserIdOrderByStatusId(user, pa);
		}else if(!Objects.isNull(u)){
			pagelist=redao.findprocesslist(user,u,pa);
		}else if(!Objects.isNull(status)){
			pagelist=redao.findbystatusprocesslist(user,status.getStatusId(),pa);
		}else{
			pagelist2=redao.findbytypenameprocesslist(user, val, pa);
			if(!pagelist2.hasContent()){
				pagelist2=redao.findbyprocessnameprocesslist(user, val, pa);
			}
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
}
