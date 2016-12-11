package com.jltfisp.web.expert.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;

import com.jltfisp.base.basedao.BaseMapper;
import com.jltfisp.web.expert.entity.JltfispExpertDoMain;

public interface ExpertDoMainMapper extends BaseMapper<JltfispExpertDoMain>{
	/**
	 * @param 通过USERID和columnid查询JltfispExpertDoMain信息
	 * @return
	 */
	@Select("SELECT * FROM jltfisp_domain WHERE userid = #{0} and columnid=#{1}")
	List<JltfispExpertDoMain> getExpertDoMainList(int userid,int columnid);
	
	/**
	 * @param 通过USERID和columnid删除JltfispExpertDoMain信息
	 * @return
	 */
	@Delete("DELETE FROM jltfisp_domain WHERE userid = #{0} and columnid=#{1}")
	void deleteExpertDoMain(int userid,int columnid);
}
