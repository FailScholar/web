package com.jltfisp.web.loan.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;

import com.jltfisp.base.basedao.BaseMapper;
import com.jltfisp.web.loan.entity.JltfispCoFillInApply;
import com.jltfisp.web.loan.entity.JltfispCoFinancialDto;

public interface CoFinancialMapper extends BaseMapper<JltfispCoFinancialDto>{
	/**
	 * @param 通过createUserid查询JltfispCoFinancialDto信息
	 * @return
	 */
	@Select("SELECT * FROM jltfisp_co_financial WHERE info_id = #{info_id} ")
	List<JltfispCoFinancialDto> getCoCoFinancialContext(int info_id);
	/**
	 * 通过createUserid删除jltfisp_co_financial信息
	 * @param createUserid
	 */
	@Delete("DELETE  FROM jltfisp_co_financial WHERE info_id = #{info_id}")
	 void deleteCoFinancialContext(int createUserid);
	
	@Select("SELECT * FROM jltfisp_co_financial WHERE info_id = #{infoId} ")
	List<JltfispCoFinancialDto> getCoCoFinancialContextByinfoId(int infoId);
}
