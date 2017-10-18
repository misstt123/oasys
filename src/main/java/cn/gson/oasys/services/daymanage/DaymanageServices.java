package cn.gson.oasys.services.daymanage;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import cn.gson.oasys.model.dao.daymanagedao.DaymanageDao;
import cn.gson.oasys.model.dao.user.UserDao;
import cn.gson.oasys.model.entity.schedule.ScheduleList;
import cn.gson.oasys.model.entity.user.User;

@Service
public class DaymanageServices {
	@Autowired
	UserDao udao;
	@Autowired
	DaymanageDao daydao;

	public Page<ScheduleList> aboutmeschedule(Long userid, Pageable pa) {
		User user = udao.findOne(userid);
		List<User> users = new ArrayList<>();
		users.add(user);
		List<ScheduleList> myschedule = daydao.findByUser(user);
		List<ScheduleList> otherschedule = daydao.findByUsers(users);
		myschedule.addAll(otherschedule);
		return new PageImpl<>(myschedule, pa,myschedule.size());
	}
}
