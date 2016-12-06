package com.jltfisp.web.loan.dao;

import com.jltfisp.base.basedao.BaseMapper;
import com.jltfisp.web.loan.entity.JltfispFinMaterial;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

public interface FinanceMaterialDao extends BaseMapper<JltfispFinMaterial>  {

	@Select("update jltfisp_fin_material set info_id=#{info_id} where id=#{id}")
	void updateCoBaseAndMaterial(@Param("info_id")Integer info_id,@Param("id")Integer id);

	
	@Select("delete from jltfisp_fin_material where info_id=#{info_id}")
	void deleteFinMaterial(Integer info_id);
	
}
