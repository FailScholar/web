package com.jltfisp.web.loan.dao;

import org.apache.ibatis.annotations.Select;

import com.jltfisp.base.basedao.BaseMapper;
import com.jltfisp.web.loan.entity.JltfispFinShareholder;

public interface JltfispFinShareholderDao extends BaseMapper<JltfispFinShareholder> {

	@Select("delete  from jltfisp_fin_shareholder WHERE financing_id = #{financing_id}")
	public void deleteShareholders(Integer financing_id);

}
