package com.jltfisp.web.loan.dao;

import org.apache.ibatis.annotations.Select;

import com.jltfisp.base.basedao.BaseMapper;
import com.jltfisp.web.loan.entity.JltfispCoBase;
import com.jltfisp.web.loan.entity.JltfispFinMaterial;

public interface  FinanceApplyDao extends BaseMapper<JltfispCoBase> {

	/**
	 * 
	 * @description 通过userId查询JltfispCoBase对象信息
	 * @author chenyun
	 * @date 2016年12月1日 上午11:28:28 
	 * @param @param userId
	 * @param @return
	 * @return JltfispCoBase
	 */
	@Select("SELECT * FROM jltfisp_co_base WHERE user_id = #{user_id}")
	public JltfispCoBase getJltfispCoBaseInfo(Integer user_id);

	public Object saveCoBase(JltfispCoBase jltfispCoBase);

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

	@Select("delete from jltfisp_co_base where user_id=#{user_id}")
	public void deleteCoBase(Integer user_id);

	@Select("update jltfisp_co_base set apply_state=0 where user_id=#{user_id}")
	public void updateJltfispCoBaseInfo(Integer user_id);
	
	

}
