package com.jltfisp.web.loan.dao;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.jltfisp.base.basedao.BaseMapper;
import com.jltfisp.web.loan.entity.JltfispCoBaseDto;

public interface CoBaseMapper extends BaseMapper<JltfispCoBaseDto>{
	
	/**
	 * @param 通过USERID查询JltfispCoBaseDto信息
	 * @return
	 */
	@Select("SELECT * FROM jltfisp_co_base WHERE user_id = #{0} and business_type=#{1} and apply_state=#{2}")
	JltfispCoBaseDto getCoBaseContextByUserIdAndType(int userid,int business_type,int apply_state);
	/**
	 * 通过USERID删除jltfisp_co_base信息
	 * @param USERID
	 */
	@Delete("DELETE  FROM jltfisp_co_base WHERE user_id = #{userid}")
	 void deleteCoBaseContext(int userid);
	@Update("update jltfisp_co_base set apply_state=#{0} where id=#{1}")
	int updateState(Integer state,Integer infoId);
}
