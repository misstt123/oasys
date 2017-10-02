package cn.gson.oasys.services.discuss;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.gson.oasys.model.dao.discuss.CommentDao;
import cn.gson.oasys.model.entity.discuss.Comment;

@Service
@Transactional
public class CommentService {
	@Autowired
	private CommentDao commentDao;
	
	public Comment save(Comment comment){
		return commentDao.save(comment);
	}

}
