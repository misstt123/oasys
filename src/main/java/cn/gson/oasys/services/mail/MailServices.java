package cn.gson.oasys.services.mail;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.domain.Sort.Order;
import org.springframework.stereotype.Service;

import com.github.pagehelper.util.StringUtil;

import cn.gson.oasys.model.dao.maildao.MailnumberDao;
import cn.gson.oasys.model.dao.system.StatusDao;
import cn.gson.oasys.model.dao.system.TypeDao;
import cn.gson.oasys.model.entity.mail.Mailnumber;
import cn.gson.oasys.model.entity.system.SystemStatusList;

import cn.gson.oasys.model.entity.user.User;

@Service
@Transactional
public class MailServices {
	@Autowired
	private StatusDao sdao;
	@Autowired
	private TypeDao tydao;
	@Autowired
	private MailnumberDao mdao;

	
	public Page<Mailnumber> index(int page,int size,User tu,String val){
		Page<Mailnumber> account=null;
		List<Order> orders = new ArrayList<>();
		Pageable pa=new PageRequest(page, size);
		if(StringUtil.isEmpty(val)){
			orders.addAll(Arrays.asList(new Order(Direction.ASC, "status"), new Order(Direction.DESC, "mailCreateTime")));
			Sort sort = new Sort(orders);
			pa=new PageRequest(page, size, sort);
			account=mdao.findByMailUserId(tu,pa);
		}else if (("类型").equals(val)) {
			account=mdao.findByMailUserIdOrderByMailType(tu,pa);
		}else if(("状态").equals(val)){
			account=mdao.findByMailUserIdOrderByStatus(tu,pa);
		}else if(("创建时间").equals(val)){
			account=mdao.findByMailUserIdOrderByMailCreateTimeDesc(tu,pa);
		}else{
			//名字的模糊查询
			account = mdao.findByMailUserNameLikeAndMailUserId(val,tu,pa);
		}
		return account;
	}
	
	public List<Map<String, Object>> up(Page<Mailnumber> num){
		List<Mailnumber> account=num.getContent();
		List<Map<String, Object>> list = new ArrayList<>();
		for (int i = 0; i < account.size(); i++) {
			Map<String, Object> result=new HashMap<>();
			SystemStatusList status=sdao.findOne(account.get(i).getStatus());
			result.put("accountid", account.get(i).getMailNumberId());
			result.put("typename", tydao.findname(account.get(i).getMailType()));
			result.put("statusname", status.getStatusName());
			result.put("statuscolor", status.getStatusColor());
			result.put("accountname", account.get(i).getMailUserName());
			result.put("creattime", account.get(i).getMailCreateTime());
			list.add(result);
		}
		return list;
	}
	
	
	
	/**
	 * 删除账号
	 */
	public void dele(Long id){
		mdao.delete(id);
	}

}
