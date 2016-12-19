package com.jltfisp.web.loan.dao;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;

import com.jltfisp.base.basedao.BaseMapper;
import com.jltfisp.web.loan.entity.JltfispCoFillInApply;

public interface CoFillInApplyMapper extends BaseMapper<JltfispCoFillInApply>{
	/**
	 * @param 通过userid查询JltfispCoFillInApply信息
	 * @return
	 */
	@Select("SELECT * FROM jltfisp_loan_apply WHERE info_id = #{0}")
	JltfispCoFillInApply getCoFillInApplyContext(int info_id);
	/**
	 * 通过userid删除jltfisp_loan_apply信息
	 * @param userid
	 */
	@Delete("DELETE  FROM jltfisp_loan_apply WHERE info_id = #{0}")
	 void deleteCoFillInApplyContext(int info_id);
	
	@Select("SELECT a.*,ji.institutionalName FROM jltfisp_loan_apply a LEFT JOIN jltfisp_institut ji on a.bankid = ji.id  WHERE a.id = #{id}")
	JltfispCoFillInApply selectByPk(Integer id);
}
