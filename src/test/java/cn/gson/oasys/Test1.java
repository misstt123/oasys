package cn.gson.oasys;

import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.gson.oasys.mappers.NoticeMapper;
import cn.gson.oasys.model.dao.attendcedao.AttendceService;
import cn.gson.oasys.model.dao.processdao.NotepaperDao;
import cn.gson.oasys.model.dao.user.UserDao;
import cn.gson.oasys.model.entity.attendce.Attends;
import cn.gson.oasys.model.entity.process.Notepaper;
import cn.gson.oasys.model.entity.user.User;
import cn.gson.oasys.services.user.NotepaperService;

@SpringBootTest
@RunWith(SpringRunner.class)
public class Test1 {
	@Autowired
	private NotepaperDao notepaperDao;
	
	@Autowired
	private NoticeMapper nm;
	
	@Autowired
	AttendceService attendceService;
	@Autowired
	UserDao uDao;

	@Test
	public void test(){
		PageHelper .startPage(0, 10);
		List<Map<String, Object>> list=nm.findMyNotice(1L);
		PageInfo<Map<String, Object>> info=new PageInfo<Map<String, Object>>(list);
		System.out.println(info);
	}

}
