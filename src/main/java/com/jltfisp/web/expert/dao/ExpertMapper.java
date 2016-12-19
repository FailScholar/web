package com.jltfisp.web.expert.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Select;

import com.jltfisp.base.basedao.BaseMapper;
import com.jltfisp.web.expert.entity.JltfispExpert;
import com.jltfisp.web.loan.entity.JltfispCoFillInApply;

public interface ExpertMapper extends BaseMapper<JltfispExpert>{
  
	public List<JltfispExpert> getExpertPageList(Map map);
	
	public int getExpertPageCount(Map map);
	
	/**
	 * @param 通过userid和columnid查询JltfispExpert信息
	 * @return
	 */
	@Select("SELECT * FROM jltfisp_fin_expert WHERE userid = #{0} and columnid=#{1}")
	JltfispExpert getExpertByUserIdAndColumnId(Integer userid,Integer columnId);
}
