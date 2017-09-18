package cn.gson.oasys.model.dao.notedao;

import java.util.Date;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@Transactional
public class AttachService {

	@Autowired
	AttachmentDao attachmentDao;
	
	public Integer updateatt(String attname, String attpath, String shu, Long size,String type, Date uptime,Long attid) {
		return attachmentDao.updateatt(attname, attpath, shu, size, type, uptime, attid);
	}
	
	
}
