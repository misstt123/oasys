package cn.gson.oasys.services.inform;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.gson.oasys.model.dao.informdao.InformDao;
import cn.gson.oasys.model.dao.system.StatusDao;
import cn.gson.oasys.model.dao.system.TypeDao;
import cn.gson.oasys.model.dao.user.DeptDao;
import cn.gson.oasys.model.dao.user.UserDao;
import cn.gson.oasys.model.entity.notice.NoticesList;

@Service
@Transactional
public class InformService  {
	
	@Autowired
	private InformDao informDao;
	
	@Autowired
	private TypeDao tydao;
	
	@Autowired
	private StatusDao sdao;
	
	@Autowired
	private UserDao udao;
	
	public NoticesList save(NoticesList noticelist){
		return informDao.save(noticelist);
	}
	
	public List<Map<String, Object>> fengZhuang(List<NoticesList> noticelist){
		List<Map<String, Object>> list=new ArrayList<>();
		for(int i=0; i<noticelist.size(); i++){
			Map<String, Object> result = new HashMap<>();
			result.put("noticeId", noticelist.get(i).getNoticeId());
			result.put("typename", tydao.findname(noticelist.get(i).getTypeId()));
			result.put("statusname", sdao.findname(noticelist.get(i).getStatusId()));
			result.put("statuscolor", sdao.findcolor(noticelist.get(i).getStatusId()));
			result.put("title", noticelist.get(i).getTitle());
			result.put("noticeTime", noticelist.get(i).getNoticeTime());
			result.put("top", noticelist.get(i).getTop());
			result.put("username",udao.findOne(noticelist.get(i).getUserId()).getUserName());
			result.put("deptname", udao.findOne(noticelist.get(i).getUserId()).getDept().getDeptName());
			list.add(result);
		}
		return list;
		
	}
	
}
