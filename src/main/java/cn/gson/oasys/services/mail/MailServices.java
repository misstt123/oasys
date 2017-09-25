package cn.gson.oasys.services.mail;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.gson.oasys.model.dao.maildao.MailnumberDao;
import cn.gson.oasys.model.dao.system.StatusDao;
import cn.gson.oasys.model.dao.system.TypeDao;
import cn.gson.oasys.model.entity.mail.Mailnumber;
import cn.gson.oasys.model.entity.system.SystemStatusList;

@Service
@Transactional
public class MailServices {
	@Autowired
	private StatusDao sdao;
	@Autowired
	private TypeDao tydao;
	@Autowired
	private MailnumberDao mdao;
	
	public List<Map<String, Object>> up(List<Mailnumber> account){
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
