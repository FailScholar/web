package com.jltfisp.web.loan.dao;

import org.apache.ibatis.annotations.Select;

import com.jltfisp.base.basedao.BaseMapper;
import com.jltfisp.web.loan.entity.JltfispFinMaterial;

public interface FinanceMaterialDao extends BaseMapper<JltfispFinMaterial>  {

	/**
	 * 
	 * @description 通过info_id查询JltfispFinMaterial对象信息
	 * @author chenyun
	 * @param @param id
	 * @param @return
	 * @return JltfispFinMaterial
	 */
	@Select("SELECT * FROM jltfisp_fin_material WHERE info_id = #{info_id}")
	public JltfispFinMaterial getJltfispFinMaterialInfo(Integer info_id);
	
}
