package com.jltfisp.web.loan.dao;

import com.jltfisp.base.basedao.BaseMapper;
import com.jltfisp.web.loan.entity.JltfispCoFinancialDto;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface CoFinancialMapper extends BaseMapper<JltfispCoFinancialDto>{
	/**
	 * @param 通过createUserid查询JltfispCoFinancialDto信息
	 * @return
	 */
	@Select("SELECT * FROM jltfisp_co_financial WHERE createUserid = #{createUserid} ")
	List<JltfispCoFinancialDto> getCoCoFinancialContext(int createUserid);
	/**
	 * 通过createUserid删除jltfisp_co_financial信息
	 * @param createUserid
	 */
	@Delete("DELETE  FROM jltfisp_co_financial WHERE createUserid = #{createUserid}")
	 void deleteCoFinancialContext(int createUserid);
}
