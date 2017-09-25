package cn.gson.oasys;

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

import cn.gson.oasys.model.dao.processdao.NotepaperDao;
import cn.gson.oasys.model.entity.process.Notepaper;
import cn.gson.oasys.services.user.NotepaperService;

@SpringBootTest
@RunWith(SpringRunner.class)
public class Test1 {
	@Autowired
	private NotepaperDao notepaperDao;

	@RequestMapping
	public void test(@RequestParam(value = "page", defaultValue = "0") int page,
			@RequestParam(value = "size", defaultValue = "5") int size,
			@RequestParam(value = "baseKey", required = false) String baseKey) {
		PageRequest pageRequest = new PageRequest(page, size);
		NotepaperService n = new NotepaperService();
//		Page<Notepaper> notepaperPage = n.finall(pageRequest, baseKey);
//		Long total = notepaperPage.getTotalElements();
//		notepaperPage.getTotalPages();
	}
}
