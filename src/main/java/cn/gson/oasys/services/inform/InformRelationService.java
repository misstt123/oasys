package cn.gson.oasys.services.inform;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.gson.oasys.model.dao.informdao.InformDao;
import cn.gson.oasys.model.dao.informdao.InformRelationDao;
import cn.gson.oasys.model.entity.notice.NoticeUserRelation;

@Service
@Transactional
public class InformRelationService {
	@Autowired
	private InformRelationDao informRelationdao;
	
	//保存一个对象
	public NoticeUserRelation save(NoticeUserRelation noticeRelation){
		return informRelationdao.save(noticeRelation);
	}
	
	//保存多个
	public List<NoticeUserRelation> saves(List<NoticeUserRelation> noticeUser){
		return (List<NoticeUserRelation>) informRelationdao.save(noticeUser);
	}
	
	//删除一个中间表
	public void deleteOne(NoticeUserRelation noticeRelation){
		informRelationdao.delete(noticeRelation);
	}
	

}
