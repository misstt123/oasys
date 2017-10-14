package cn.gson.oasys.mappers;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface AddressMapper {
	
	/*根据用户来找外部通讯录联系人*/
	List<Map<String, Object>> allDirector(@Param("userId") Long userId,@Param("pinyin") String pinyin,@Param("outtype") String outtype,@Param("baseKey") String baseKey);
}
