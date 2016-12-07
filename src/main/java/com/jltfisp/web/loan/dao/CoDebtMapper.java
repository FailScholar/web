package com.jltfisp.web.loan.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;

import com.jltfisp.base.basedao.BaseMapper;
import com.jltfisp.web.loan.entity.JltfispCoDebt;

public interface CoDebtMapper extends BaseMapper<JltfispCoDebt>{
	/**
	 * @param 通过infoid查询JltfispCoDebt信息
	 * @return
	 */
	@Select("SELECT * FROM jltfisp_co_debt WHERE info_id = #{0} and year = #{1}")
	JltfispCoDebt getCoDebtContextByInfoId(int infoid,String year);
	
	/**
	 * @param 通过infoid查询JltfispCoDebt信息
	 * @return
	 */
	@Select("SELECT * FROM jltfisp_co_debt WHERE info_id = #{0}")
	List<JltfispCoDebt> getCoDebtContextList(int infoid);
	
	/**
	 * 通过infoid删除jltfisp_co_debt信息
	 * @param infoid
	 */
	@Delete("DELETE  FROM jltfisp_co_debt WHERE info_id = #{0} and year = #{1}")
	 void deleteCoDebtContext(int infoid,String year);
	
	@Select("SELECT * FROM jltfisp_co_debt WHERE info_id = #{0}")
	List<JltfispCoDebt> getCoDebtByInfoId(int infoid);
}
