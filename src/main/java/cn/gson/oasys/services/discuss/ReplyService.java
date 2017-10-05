package cn.gson.oasys.services.discuss;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.gson.oasys.model.dao.discuss.ReplyDao;
import cn.gson.oasys.model.entity.discuss.Reply;

@Service
@Transactional
public class ReplyService {
	@Autowired
	private ReplyDao replyDao;

	// 保存对象至数据库
	public Reply save(Reply reply) {
		return replyDao.save(reply);
	}

	// 删除一个回复
	public void deleteReply(Reply reply) {
		replyDao.delete(reply);
	}

}
