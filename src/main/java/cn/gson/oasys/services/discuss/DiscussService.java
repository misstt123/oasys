package cn.gson.oasys.services.discuss;

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
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.domain.Sort.Order;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import cn.gson.oasys.model.dao.discuss.DiscussDao;
import cn.gson.oasys.model.dao.system.TypeDao;
import cn.gson.oasys.model.dao.user.UserDao;
import cn.gson.oasys.model.entity.discuss.Discuss;
import cn.gson.oasys.model.entity.user.User;

@Service
@Transactional
public class DiscussService {
	@Autowired
	private DiscussDao discussDao;

	@Autowired
	private UserDao uDao;

	@Autowired
	private TypeDao typeDao;

	// 保存
	public Discuss save(Discuss d) {
		return discussDao.save(d);
	}
	
	//查看，并将访问量+1
	public Discuss seeDiscuss(Long id){
		Discuss discuss=discussDao.findOne(id);
		discuss.setVisitNum(discuss.getVisitNum()+1);
		return this.save(discuss);
	}
	

	// 分页处理
	public Page<Discuss> paging(int page, String baseKey, Long userId, String type, String time, String visitnum) {
		List<Order> orders = new ArrayList<>();
		Pageable pa = setPageable(page, type, time, visitnum, orders);
		if(StringUtils.isEmpty(userId)){
			if (!StringUtils.isEmpty(baseKey)) {
				System.out.println("查找关键字不为空");
				return discussDao.findByTitleLike("%"+baseKey+"%",pa);
			}
			System.out.println("userid是空的");
			return discussDao.findAll(pa);
		}else{
			System.out.println("debug");
			User user=uDao.findOne(userId);
			if(user.getSuperman()){
				if (!StringUtils.isEmpty(baseKey)) {
					System.out.println("查找关键字不为空");
					return discussDao.findByTitleLike("%"+baseKey+"%",pa);
				}
				System.out.println("是超级管理员");
				return discussDao.findAll(pa);
			}else{
				if (!StringUtils.isEmpty(baseKey)) {
					System.out.println("查找关键字不为空");
					return discussDao.findByUserAndTitleLike(user,"%"+baseKey+"%",pa);
				}
				System.out.println("只能看自己的");
				return discussDao.findByUser(user, pa);
			}
		}
	}
	
	/**
	 * 用户自己管理讨论区的分页
	 * @return
	 */
	public  Page<Discuss> pagingMe(int page, String baseKey, Long userId, String type, String time, String visitnum) {
		List<Order> orders = new ArrayList<>();
		Pageable pa = setPageable(page, type, time, visitnum, orders);
		User user=uDao.findOne(userId);
		if (!StringUtils.isEmpty(baseKey)) {
			System.out.println("查找关键字不为空");
			return discussDao.findByUserAndTitleLike(user,"%"+baseKey+"%",pa);
		}
		System.out.println("只能看自己的");
		return discussDao.findByUser(user, pa);
	}
	
	private Pageable setPageable(int page, String type, String time, String visitnum, List<Order> orders) {
		int size=10;
		if (!StringUtils.isEmpty(type)) {
			if ("1".equals(type)) {
				orders.add(new Order(Direction.ASC, "typeId"));
			} else {
				orders.add(new Order(Direction.DESC, "typeId"));
			}
		} else if (!StringUtils.isEmpty(time)) {
			if ("1".equals(time)) {
				orders.add(new Order(Direction.DESC, "modifyTime"));
			} else {
				orders.add(new Order(Direction.ASC, "modifyTime"));
			}
		} else if (!StringUtils.isEmpty(visitnum)) {
			if ("1".equals(visitnum)) {
				orders.add(new Order(Direction.DESC, "visitNum"));
			} else {
				orders.add(new Order(Direction.ASC, "visitNum"));
			}
		}else {
			orders.add(new Order(Direction.ASC, "typeId"));
			orders.add(new Order(Direction.DESC, "modifyTime"));
		}
		Sort sort = new Sort(orders);
		Pageable pa = new PageRequest(page, size, sort);
		return pa;
	}

	public List<Map<String, Object>> packaging(List<Discuss> list) {
		List<Map<String, Object>> listMap = new ArrayList<>();
		for (int i = 0; i < list.size(); i++) {
			Map<String, Object> result = new HashMap<>();
			result.put("id", list.get(i).getDiscussId());
			result.put("typeName", typeDao.findOne(list.get(i).getTypeId()).getTypeName());
			result.put("userName", list.get(i).getUser().getUserName());
			result.put("title", list.get(i).getTitle());
			result.put("createTime", list.get(i).getCreateTime());
			result.put("visitNum", list.get(i).getVisitNum());
			result.put("typecolor", typeDao.findOne(list.get(i).getTypeId()).getTypeColor());
			listMap.add(result);
		}
		return listMap;
	}

}
