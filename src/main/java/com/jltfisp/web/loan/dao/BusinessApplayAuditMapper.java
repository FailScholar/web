package com.jltfisp.web.loan.dao;

import com.jltfisp.base.basedao.BaseMapper;
import com.jltfisp.web.loan.entity.BusinessApplayAudit;
import org.apache.ibatis.annotations.Param;

import java.util.Map;
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

}


