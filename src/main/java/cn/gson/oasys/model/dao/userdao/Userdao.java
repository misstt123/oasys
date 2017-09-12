package cn.gson.oasys.model.dao.userdao;

import org.springframework.data.repository.CrudRepository;

import cn.gson.oasys.model.entity.user.User;

public interface Userdao extends CrudRepository<User, Long>{

}
