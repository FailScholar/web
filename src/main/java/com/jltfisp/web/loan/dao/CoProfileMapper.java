package com.jltfisp.web.loan.dao;

import com.jltfisp.base.basedao.BaseMapper;
import com.jltfisp.web.loan.entity.JltfispCoProfile;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;

public interface CoProfileMapper extends BaseMapper<JltfispCoProfile>{
	/**
	 * @param 通过createUserid查询JltfispCoProfile信息
	 * @return
	 */
	@Select("SELECT * FROM jltfisp_co_profile WHERE info_id = #{infoid} ")
	JltfispCoProfile getCoprofileContext(int infoid);
	/**
	 * 通过createUserid删除jltfisp_co_profile信息
	 * @param createUserid
	 */
	@Delete("DELETE  FROM jltfisp_co_profile WHERE info_id = #{infoid}")
	 void deleteCoProfileContext(int infoid);
}
