package cn.gson.oasys.services.address;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.gson.oasys.model.dao.address.AddressDao;
import cn.gson.oasys.model.dao.notedao.AttachmentDao;
import cn.gson.oasys.model.entity.note.Director;

@Service
@Transactional
public class AddressService {
	
	@Autowired
	private AddressDao addressDao;
	@Autowired
	AttachmentDao atDao;
	
	public Director sava(Director director){
		return addressDao.save(director);
	}
	public void deleteDirector(Director director){
		addressDao.delete(director);
		System.out.println("删除一个外部联系人");
	}
	
	public List<Map<String, Object>> fengzhaung(List<Map<String, Object>> addressList){
		List<Map<String, Object>> adds=new ArrayList<>();
		for (int i = 0; i < addressList.size(); i++) {
			Map<String, Object> result=new HashMap<>();
			result.put("director_users_id", addressList.get(i).get("director_users_id"));
			result.put("director_id", addressList.get(i).get("director_id"));
			result.put("user_id", addressList.get(i).get("user_id"));
			result.put("catelog_name", addressList.get(i).get("catelog_name"));
			result.put("companyname", addressList.get(i).get("companyname"));
			result.put("user_name", addressList.get(i).get("user_name"));
			result.put("sex", addressList.get(i).get("sex"));
			result.put("phone_number", addressList.get(i).get("phone_number"));
			result.put("email", addressList.get(i).get("email"));
//			!Objects.isNull(atDao.findOne(d.getAttachment()))
			if(addressList.get(i).get("image_path")!=null){
				result.put("image_path", atDao.findOne(Long.parseLong((addressList.get(i).get("image_path")+""))).getAttachmentPath());
			}else{
				result.put("image_path", "timg.jpg");
			}
			adds.add(result);
		}
		return adds;
	}

}
