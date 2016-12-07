package com.jltfisp.web.loan.service;

import java.util.List;

import com.jltfisp.base.service.IBaseService;
import com.jltfisp.web.loan.entity.JltfispCoDebt;
import com.jltfisp.web.loan.entity.JltfispCoFillInApply;
import com.jltfisp.web.loan.entity.BusinessApplayAudit;

public interface IBusinessApplayAuditService extends
        IBaseService<BusinessApplayAudit> {
    JltfispCoFillInApply selectApplyByPk(Integer id);

    /**
     * 检查是否存在 正在申请中或申请通过 的申请记录
     * @param userId 用户id
     * @param type 申请类型
     * @return
     * @author yingying.wang1 2016年12月5日 下午4:39:53
     */
    BusinessApplayAudit checkApply(Integer userId, String type);

    /**
     * 查询资产负债信息
     * @param infoid
     * @return
     */
    List<JltfispCoDebt> getCoDebtContextByInfoId(int infoid);

    /**
     * 根据条件获取业务审核信息
     * @param userId
     * @param type
     * @param state
     * @return
     * @author yingying.wang1 2016年12月6日 上午11:41:46
     */
    BusinessApplayAudit getBusinessApplayAudit(Integer userId, String type,
            Integer state);

    /**
     * 根据用户id企业申请类型查询企业申请带框服务情况
     * @param userId
     * @param type
     * @return
     */
    public BusinessApplayAudit getBusinessApplayAuditByUserId(Integer userId,
            String type);

}