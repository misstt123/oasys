package cn.gson.oasys;

import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import cn.gson.oasys.mappers.NoticeMapper;
import cn.gson.oasys.model.entity.system.SystemStatusList;
import cn.gson.oasys.services.inform.InformService;

//@RunWith(SpringRunner.class)
//@SpringBootTest
public class OasysApplicationTests {
	
	@Autowired
	private NoticeMapper nm;
	
	@Autowired
	private InformService informService;
	
	

		
//		List<Map<String, Object>> list=informService.informList(listOne);
//		for (Map<String, Object> map : list) {
//			System.out.println(map);
//		}

	
	

}
