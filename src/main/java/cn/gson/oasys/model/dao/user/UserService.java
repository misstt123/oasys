package cn.gson.oasys.model.dao.user;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import cn.gson.oasys.model.entity.user.User;

@Transactional
@Service
public class UserService {

	@Autowired
	UserDao userDao;
	
	//找到该管理员下面的所有用户并且分页
	public Page<User> findmyemployuser(int page, String baseKey,long parentid) {
		Pageable pa=new  PageRequest(page, 10);
		if (!StringUtils.isEmpty(baseKey)) {
			// 模糊查询
		}
		else{
			return userDao.findByFatherId(parentid, pa);
		}
		return null;
		
	}
}
