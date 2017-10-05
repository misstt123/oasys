package cn.gson.oasys.services.discuss;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import cn.gson.oasys.model.dao.discuss.DiscussDao;
import cn.gson.oasys.model.dao.discuss.VoteListDao;
import cn.gson.oasys.model.dao.discuss.VoteTitleListDao;
import cn.gson.oasys.model.dao.discuss.VoteTitlesUserDao;
import cn.gson.oasys.model.entity.discuss.Discuss;
import cn.gson.oasys.model.entity.discuss.VoteList;
import cn.gson.oasys.model.entity.discuss.VoteTitleUser;
import cn.gson.oasys.model.entity.discuss.VoteTitles;
import cn.gson.oasys.model.entity.user.User;

@Service
@Transactional
public class VoteService {
	
	@Autowired
	DiscussDao discussDao;
	@Autowired
	DiscussService disService;
	@Autowired
	VoteListDao voteListDao;
	@Autowired
	VoteTitleListDao voteTitleDao;
	@Autowired
	VoteTitlesUserDao voteUserDao;
	@Autowired
	VoteTitleListDao voteTitlesDao;
	
	//保存一个投票
	public VoteList savaVoteList(VoteList voteList){
		return voteListDao.save(voteList);
	}
	
	//保存投票标题与用户关联表
	public VoteTitleUser savaVoteTitleUser(VoteTitleUser voteTitleUser){
		return voteUserDao.save(voteTitleUser);
	}
	
	public void voteServiceHandle(Model model, User user, Discuss discuss) {
		
		if(!Objects.isNull(discuss.getVoteList())){
			List<VoteTitles> voteTitles=voteTitlesDao.findByVoteList(discuss.getVoteList());
			List<Map<String, Object>> voteTitlesList=new ArrayList<>();
			for (int i = 0; i < voteTitles.size(); i++) {
				Map<String, Object> result=new HashMap<>();
				result.put("titleId", voteTitles.get(i).getTitleId());
				result.put("title", voteTitles.get(i).getTitle());
				result.put("users", voteUserDao.findByVoteTitles(voteTitles.get(i)));
				result.put("color", voteTitles.get(i).getColor());
				result.put("count", voteUserDao.findByVoteTitles(voteTitles.get(i)).size());
				result.put("countNum", voteUserDao.findByVoteId(voteTitles.get(i).getVoteList().getVoteId()).size());
				result.put("contain",!Objects.isNull(voteUserDao.findByVoteTitlesAndUser(voteTitles.get(i), user)));
				voteTitlesList.add(result);
			}
			VoteList vote=discuss.getVoteList();
			Date date=new Date();
			if(date.getTime()<vote.getStartTime().getTime()){
				model.addAttribute("dateType", 1);
			}else if(date.getTime()>vote.getEndTime().getTime()){
				model.addAttribute("dateType", 2);
			}else{
				model.addAttribute("dateType", 3);
			}
			model.addAttribute("voteTitles", voteTitlesList);
			model.addAttribute("voteList", discuss.getVoteList());
		}
	}
	
	

}
