package com.jltfisp.web.financing.dao;

import org.apache.ibatis.annotations.Update;

import com.jltfisp.base.basedao.BaseMapper;
import com.jltfisp.web.financing.entity.JltfispFinancing;

public interface FinancingMapper extends BaseMapper<JltfispFinancing>{
	@Update("update jltfisp_financing set pv=#{1} where id=#{0}")
	int updateFinancingPv(Integer id,Integer pv);
}
