package cn.gson.oasys.services.discuss;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.domain.Sort.Order;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;

import cn.gson.oasys.model.dao.discuss.CommentDao;
import cn.gson.oasys.model.dao.discuss.DiscussDao;
import cn.gson.oasys.model.dao.discuss.ReplyDao;
import cn.gson.oasys.model.dao.system.TypeDao;
import cn.gson.oasys.model.dao.user.UserDao;
import cn.gson.oasys.model.entity.discuss.Comment;
import cn.gson.oasys.model.entity.discuss.Discuss;
import cn.gson.oasys.model.entity.discuss.Reply;
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
	
	@Autowired
	private CommentDao commentDao;
	
	@Autowired
	private ReplyDao replyDao;

	// 保存
	public Discuss save(Discuss d) {
		return discussDao.save(d);
	}
	
	//删除讨论区
	public void deleteDiscuss(Long discussId){
		discussDao.delete(discussId);
	}
	
	
	//查看，并将访问量+1
	public Discuss addOneDiscuss(Long id){
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
	public void setDiscussMess(Model model, Long num,Long userId,int page,int size){
		Pageable pa=new PageRequest(page, size);
//		Discuss discuss=this.addOneDiscuss(num);							//根据讨论区id找到讨论
		Discuss discuss=discussDao.findOne(num);
		User user=uDao.findOne(userId);
		Boolean discussContain=discuss.getUsers().contains(user);
		int discussLikeNum=discuss.getUsers().size();
		Set<User> setUsers=discuss.getUsers();
		model.addAttribute("discussContain", discussContain);
		model.addAttribute("discussLikeNum", discussLikeNum);
		model.addAttribute("setUsers", setUsers);
		Page<Reply> replyPage=replyDao.findByDiscuss(discuss,pa);				//根据讨论id找到所有的回复表
		List<Reply> replyList=replyPage.getContent();		
		List<Map<String, Object>> replys=this.replyPackaging(replyList,userId);		//对回复表字段进行封装，主要是为了获取到评论数
		if(replyList.size()>0){
			Long[] replyLong=new Long[replyList.size()];							//用数组来结束所有回复表的id
			for (int i = 0; i < replyList.size(); i++) {
				replyLong[i]=replyList.get(i).getReplyId();
			}						
			List<Comment> commentList=commentDao.findComments(replyLong);			//in 查找所有回复id的所有评论
			List<Map<String, Object>> commentMap=this.commentPackaging(commentList);	//对评论字段进行封装
			model.addAttribute("commentList", commentMap);
			int chatNum=commentList.size()+replyList.size();
			model.addAttribute("chatNum", chatNum);
		}		model.addAttribute("replyList", replys);
		model.addAttribute("discuss", discuss);
		model.addAttribute("page", replyPage);
		model.addAttribute("user", discuss.getUser());
	}
	
	//对回复表进行封装
	public List<Map<String, Object>> replyPackaging(List<Reply> replyList,Long userId){
		User user=uDao.findOne(userId);
		List<Map<String, Object>> replyMap=new ArrayList<>();
		for (int i = 0; i < replyList.size(); i++) {
			Map<String, Object> result=new HashMap<>();
			result.put("contain", replyList.get(i).getUsers().contains(user));
			result.put("count",commentDao.findByReply(replyList.get(i)).size());
			result.put("replyLikeUsers", replyList.get(i).getUsers());
			result.put("likenum", replyList.get(i).getUsers().size());
			result.put("replyId",replyList.get(i).getReplyId());
			result.put("replayTime",replyList.get(i).getReplayTime());
			result.put("content",replyList.get(i).getContent());
			result.put("user",replyList.get(i).getUser());
			result.put("discuss",replyList.get(i).getDiscuss());
			replyMap.add(result);
		}
		return replyMap;
	}
	
	//对评论表进行封装
	public List<Map<String, Object>> commentPackaging(List<Comment> commentList){
		List<Map<String, Object>> commentMap=new ArrayList<>();
		for (int i = 0; i < commentList.size(); i++) {
			Map<String, Object> map=new HashMap<>();
			map.put("commentId", commentList.get(i).getCommentId());
			map.put("comment", commentList.get(i).getComment());
			map.put("time", commentList.get(i).getTime());
			map.put("user", commentList.get(i).getUser());
			map.put("reply", commentList.get(i).getReply().getReplyId());
			commentMap.add(map);
		}
		return commentMap;
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
