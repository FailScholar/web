package com.jltfisp.web.insurance.dao;

import org.apache.ibatis.annotations.Update;

import com.jltfisp.base.basedao.BaseMapper;
import com.jltfisp.web.insurance.entity.JltfispInsurance;

public interface JltfispInsuranceMapper extends BaseMapper<JltfispInsurance> {
	
	@Update("update jltfisp_insurance set pv=#{1} where id=#{0}")
	int updateInsurancePv(Integer id,Integer pv);
}