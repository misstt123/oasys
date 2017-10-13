package cn.gson.oasys.services.address;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.gson.oasys.model.dao.address.AddressUserDao;
import cn.gson.oasys.model.entity.note.DirectorUser;

@Service
@Transactional
public class AddreddUserService {

	@Autowired
	AddressUserDao addressUserDao;
	
	//保存一个通讯录联系人对象
	public DirectorUser save(DirectorUser directorUser){
		return addressUserDao.save(directorUser);
	}
	//保存通讯录联系的集合
	public List<DirectorUser> savaList(List<DirectorUser> dus){
		return addressUserDao.save(dus);
	}
	
	//删除一个通讯录联系人对象
	public void deleteObj(DirectorUser directorUser){
		addressUserDao.delete(directorUser);
		
	}
}
