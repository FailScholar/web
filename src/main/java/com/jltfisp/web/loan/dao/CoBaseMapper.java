package com.jltfisp.web.loan.dao;

import com.jltfisp.base.basedao.BaseMapper;
import com.jltfisp.web.loan.entity.JltfispCoBaseDto;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;

public interface CoBaseMapper extends BaseMapper<JltfispCoBaseDto>{
	
	/**
	 * @param 通过USERID查询JltfispCoBaseDto信息
	 * @return
	 */
	@Select("SELECT * FROM jltfisp_co_base WHERE user_id = #{0} and business_type=#{1}")
	JltfispCoBaseDto getCoBaseContextByUserIdAndType(int userid,int business_type);
	/**
	 * 通过USERID删除jltfisp_co_base信息
	 * @param USERID
	 */
	@Delete("DELETE  FROM jltfisp_co_base WHERE user_id = #{userid}")
	 void deleteCoBaseContext(int userid);
}
