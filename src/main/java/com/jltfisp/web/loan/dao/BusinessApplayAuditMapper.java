package com.jltfisp.web.loan.dao;


import java.util.List;

import org.apache.ibatis.annotations.Param;

import java.util.Map;

import org.apache.ibatis.annotations.Select;

import com.jltfisp.base.basedao.BaseMapper;
import com.jltfisp.web.loan.entity.BusinessApplayAudit;
/**
 * 数据访问接口
 */
public interface BusinessApplayAuditMapper extends BaseMapper<BusinessApplayAudit>{
	 public BusinessApplayAudit getBusinessApplayAuditByUserId(Map map);
    /**
     * 检查是否存在 正在申请中或申请通过 的申请记录
     * @param userId
     * @param type
     * @return
     * @author yingying.wang1 2016年12月5日 下午5:36:41
     */
    BusinessApplayAudit checkApply(@Param("userId")Integer userId, @Param("type")String type);

    /**
     * 根据条件获取业务审核信息
     * @param userId
     * @param type
     * @param state
     * @return
     * @author yingying.wang1 2016年12月6日 上午11:39:41
     */
    BusinessApplayAudit getBusinessApplayAudit(@Param("userId")Integer userId, @Param("type")String type, @Param("state")Integer state);    


    /**
     * 
     * @description 筛选前六种贷款服务
     * @author chenyun
     * @date 2016年12月7日 上午10:45:55 
     * @param @param user_id
     * @param @return
     * @return List<BusinessApplayAudit>
     */
	@Select("SELECT * FROM jltfisp_business_applay WHERE user_id = #{user_id} and type<7")
	public List<BusinessApplayAudit> getBusinessApplayAuditListByUserId(Integer user_id);
	
	
	@Select("update jltfisp_business_applay set state=#{state} where user_id=#{user_id} and type=#{type}")
	public void updateBusinessApplayAuditByUserIdAndType(@Param("user_id")Integer user_id,@Param("type")String type,@Param("state")Integer state);
	
	@Select("update jltfisp_business_applay set loan_value=#{loan_value} where user_id=#{user_id} and type=#{type}")
	public void updateMoneyByUserIdAndType(@Param("user_id")Integer user_id,@Param("type")String type,@Param("loan_value")Double loan_value);
	
}


