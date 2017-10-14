package cn.gson.oasys.model.dao.address;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import cn.gson.oasys.model.entity.note.Director;

public interface AddressDao extends JpaRepository<Director, Long> {

	//根据姓名首拼模糊查询
	
}
