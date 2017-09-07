package cn.gson.oasys.model.dao.roledao;

import org.springframework.data.repository.PagingAndSortingRepository;

import cn.gson.oasys.model.entity.role.Role;

public interface RoleDao extends PagingAndSortingRepository<Role, Long>{

}
