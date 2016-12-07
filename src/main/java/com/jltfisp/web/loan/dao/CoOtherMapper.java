package com.jltfisp.web.loan.dao;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;

import com.jltfisp.base.basedao.BaseMapper;
import com.jltfisp.web.loan.entity.JltfispCoOther;

public interface CoOtherMapper extends BaseMapper<JltfispCoOther>{
	/**
	 * @param 通过infoid查询JltfispCoOther信息
	 * @return
	 */
	@Select("SELECT * FROM jltfisp_co_other_info WHERE info_id = #{infoid} ")
	JltfispCoOther getCoOtherContext(int infoid);
	/**
	 * 通过infoid删除jltfisp_co_other_info信息
	 * @param infoid
	 */
	@Delete("DELETE  FROM jltfisp_co_other_info WHERE info_id = #{infoid}")
	 void deleteCoOtherContext(int infoid);
}
