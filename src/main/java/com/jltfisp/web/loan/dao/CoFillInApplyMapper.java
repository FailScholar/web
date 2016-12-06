package com.jltfisp.web.loan.dao;

import com.jltfisp.base.basedao.BaseMapper;
import com.jltfisp.web.loan.entity.JltfispCoFillInApply;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;

public interface CoFillInApplyMapper extends BaseMapper<JltfispCoFillInApply>{
	/**
	 * @param 通过userid查询JltfispCoFillInApply信息
	 * @return
	 */
	@Select("SELECT * FROM jltfisp_loan_apply WHERE user_id = #{0} and applyType=#{1}")
	JltfispCoFillInApply getCoFillInApplyContext(int userid,int applyType);
	/**
	 * 通过userid删除jltfisp_loan_apply信息
	 * @param userid
	 */
	@Delete("DELETE  FROM jltfisp_loan_apply WHERE user_id = #{0} and applyType=#{1}")
	 void deleteCoFillInApplyContext(int userid,int applyType);
	
	@Select("SELECT a.*,ji.institutionalName FROM jltfisp_loan_apply a LEFT JOIN jltfisp_institut ji on a.bankid = ji.id  WHERE a.id = #{id}")
	JltfispCoFillInApply selectByPk(Integer id);
}
