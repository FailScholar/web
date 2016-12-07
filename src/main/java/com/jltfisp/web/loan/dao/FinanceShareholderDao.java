package com.jltfisp.web.loan.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.jltfisp.base.basedao.BaseMapper;
import com.jltfisp.web.loan.entity.JltfispFinShareholder;

public interface FinanceShareholderDao  extends BaseMapper<JltfispFinShareholder>{

	@Select("SELECT * FROM jltfisp_fin_shareholder WHERE financing_id = #{financing_id}")
	public List<JltfispFinShareholder> getShareholderlistByInfoId(Integer financing_id);

}
