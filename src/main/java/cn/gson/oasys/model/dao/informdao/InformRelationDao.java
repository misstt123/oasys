package cn.gson.oasys.model.dao.informdao;

import org.springframework.data.repository.PagingAndSortingRepository;

import cn.gson.oasys.model.entity.notice.NoticeUserRelation;

public interface InformRelationDao extends PagingAndSortingRepository<NoticeUserRelation, Long> {

}
