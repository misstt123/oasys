package cn.gson.oasys;

import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import cn.gson.oasys.mappers.NoticeMapper;
import cn.gson.oasys.services.inform.InformService;

//@RunWith(SpringRunner.class)
//@SpringBootTest
public class OasysApplicationTests {
	
	@Autowired
	private NoticeMapper nm;
	
	@Autowired
	private InformService informService;

	@Test
	public void contextLoads() {
		List<Map<String, Object>> listOne=nm.findMyNotice(1L);
		for (Map<String, Object> map : listOne) {
			System.out.println(map);
		}
		
//		List<Map<String, Object>> list=informService.informList(listOne);
//		for (Map<String, Object> map : list) {
//			System.out.println(map);
//		}
	}
	
	@Test
	public void test() {
		String path = "D:\\ggit\\oa_system\\src\\main\\resources\\static\\images\\touxiang\\a76be316-8ab5-43fe-bbcd-1bee51af4f57.PNG";
		String savePath = path.replace("D:\\ggit\\oa_system\\src\\main\\resources\\static\\", "");
		System.out.println(savePath);
		
		
	}

}
