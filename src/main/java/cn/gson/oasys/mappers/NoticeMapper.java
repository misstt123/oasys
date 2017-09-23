package cn.gson.oasys.mappers;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.data.repository.query.Param;

@Mapper
public interface NoticeMapper {
	
	List<Map<String, Object>> findMyNotice(@Param("userId") Long userId);
	
	List<Map<String, Object>> findMyNoticeLimit(@Param("userId") Long userId);
	
	
	
	
 
}
