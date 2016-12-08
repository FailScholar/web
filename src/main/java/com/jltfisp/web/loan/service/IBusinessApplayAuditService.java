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
     * 根据userid，applyType查询申请信息
     * @param userid
     * @param applyType
     * @return
     */
    JltfispCoFillInApply getCoFillInApplyContext(int userid,int applyType);

    /**
     * 检查是否存在 正在申请中或申请通过 的申请记录
     * @param userId 用户id
     * @param type 申请类型
     * @return
     * @author yingying.wang1 2016年12月5日 下午4:39:53
     */
    BusinessApplayAudit checkApply(Integer userId, String type);
	
	/**
	 * 
	 * @description 根据用户id查询贷款服务列表
	 * @author chenyun
	 * @date 2016年12月6日 下午2:43:04 
	 * @param @param userId
	 * @param @return
	 * @return List<BusinessApplayAudit>
	 */
	public List<BusinessApplayAudit> getBusinessApplayAuditListByUserId(Integer userId);

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

    /**
     * 
     * @description 根据用户id和业务类型更新BusinessApplayAudit的state
     * @author chenyun
     * @param @param userId
     * @param @param type
     * @param @param state
     * @return void
     */
    public void updateBusinessApplayAuditByUserIdAndType(Integer userId,String type,Integer state);
    
    /**
     * 
     * @description 更新金额
     * @author chenyun
     * @date 2016年12月8日 下午1:07:29 
     * @param @param userId
     * @param @param type
     * @param @param money
     * @return void
     */
    public void updateMoneyByUserIdAndType(Integer userId,String type,Double money);
}