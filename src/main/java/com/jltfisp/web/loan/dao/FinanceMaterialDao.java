package com.jltfisp.web.loan.dao;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.jltfisp.base.basedao.BaseMapper;
import com.jltfisp.web.loan.entity.JltfispFinMaterial;

public interface FinanceMaterialDao extends BaseMapper<JltfispFinMaterial>  {

	@Select("update jltfisp_fin_material set info_id=#{info_id} where id=#{id}")
	void updateCoBaseAndMaterial(@Param("info_id")Integer info_id,@Param("id")Integer id);

	
	@Select("delete from jltfisp_fin_material where info_id=#{info_id}")
	void deleteFinMaterial(Integer info_id);


	/**
	 * 
	 * @description 通过info_id查询JltfispFinMaterial对象信息
	 * @author chenyun
	 * @date 2016年12月2日 上午9:35:46 
	 * @param @param id
	 * @param @return
	 * @return JltfispFinMaterial
	 */
	@Select("SELECT * FROM jltfisp_fin_material WHERE info_id = #{info_id}")
	public JltfispFinMaterial getJltfispFinMaterialInfo(Integer info_id);
	
}