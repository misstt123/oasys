package cn.gson.oasys.services.address;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.gson.oasys.model.dao.address.AddressDao;
import cn.gson.oasys.model.entity.note.Director;

@Service
@Transactional
public class AddressService {
	
	@Autowired
	private AddressDao addressDao;
	
	public Director sava(Director director){
		return addressDao.save(director);
	}
	

}
