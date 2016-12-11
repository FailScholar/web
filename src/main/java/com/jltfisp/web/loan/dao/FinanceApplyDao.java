package com.jltfisp.web.loan.dao;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.jltfisp.base.basedao.BaseMapper;
import com.jltfisp.web.loan.entity.JltfispCoBase;
import com.jltfisp.web.loan.entity.JltfispFinMaterial;
import com.jltfisp.web.loan.entity.JltfispFinanceAndShareholdersDto;

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
	@Select("SELECT * FROM jltfisp_co_base WHERE user_id = #{user_id} and business_type=6")
	public JltfispCoBase getJltfispCoBaseInfo(Integer user_id);

	public Object saveCoBase(JltfispCoBase jltfispCoBase);

	@Select("delete from jltfisp_co_base where id=#{id}")
	public void deleteCoBase(Integer id);

	@Select("update jltfisp_co_base set apply_state=0 where user_id=#{user_id}")
	public void updateJltfispCoBaseInfo(Integer user_id);

	public JltfispFinanceAndShareholdersDto getJltfispFinanceAndShareholdersDto(@Param("user_id")Integer user_id,@Param("business_type")Integer business_type);
	
	

}
