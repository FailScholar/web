package com.jltfisp.web.loan.service.impl;

import java.util.HashMap;
import java.util.Map;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jltfisp.base.basedao.BaseMapper;
import com.jltfisp.base.service.impl.BaseServiceImpl;
import com.jltfisp.web.loan.dao.BusinessApplayAuditMapper;
import com.jltfisp.web.loan.dao.CoDebtMapper;
import com.jltfisp.web.loan.dao.CoFillInApplyMapper;
import com.jltfisp.web.loan.entity.BusinessApplayAudit;
import com.jltfisp.web.loan.entity.JltfispCoDebt;
import com.jltfisp.web.loan.entity.JltfispCoFillInApply;
import com.jltfisp.web.loan.service.IBusinessApplayAuditService;

@Repository
public class BusinessApplayAuditServiceImpl extends
        BaseServiceImpl<BusinessApplayAudit> implements
        IBusinessApplayAuditService {
    @Autowired
    private BusinessApplayAuditMapper businessApplayAuditMapper;

    @Autowired
    private CoFillInApplyMapper coFillInApplyMapper;
    @Autowired
    private CoDebtMapper coDebtMapper;

    @Resource(name = "businessApplayAuditMapper")
    public void setMapper(BaseMapper<BusinessApplayAudit> mapper) {
        this.mapper = mapper;
        this.businessApplayAuditMapper = (BusinessApplayAuditMapper) mapper;
    }

    /**
     * 查询贷款申请
     */
    public JltfispCoFillInApply selectApplyByPk(Integer id) {
        return coFillInApplyMapper.selectByPk(id);
    }

    @Override
    public BusinessApplayAudit checkApply(Integer userId, String type) {
        BusinessApplayAudit businessApplayAudit = businessApplayAuditMapper
                .checkApply(userId, type);
        return businessApplayAudit;
    }

    @Override
    public BusinessApplayAudit getBusinessApplayAuditByUserId(Integer userId,
            String type) {
        Map map = new HashMap();
        map.put("userId", userId);
        map.put("type", type);
        return businessApplayAuditMapper.getBusinessApplayAuditByUserId(map);
    }

    /**
     * 查询资产负债信息
     */
    @Override
    public List<JltfispCoDebt> getCoDebtContextByInfoId(int infoid) {
        // TODO Auto-generated method stub
        return coDebtMapper.getCoDebtByInfoId(infoid);
    }

    @Override
    public BusinessApplayAudit getBusinessApplayAudit(Integer userId,
            String type, Integer state) {
        return businessApplayAuditMapper.getBusinessApplayAudit(userId, type,
                state);
    }

	@Override
	public JltfispCoFillInApply getCoFillInApplyContext(int userid,
			int applyType) {
		// TODO Auto-generated method stub
		return coFillInApplyMapper.getCoFillInApplyContext(userid, applyType);
	}

	@Override
	public List<BusinessApplayAudit> getBusinessApplayAuditListByUserId(Integer userId) {
		return businessApplayAuditMapper.getBusinessApplayAuditListByUserId(userId);
	}

	@Override
	public void updateBusinessApplayAuditByUserIdAndType(Integer userId,String type,Integer state) {
		businessApplayAuditMapper.updateBusinessApplayAuditByUserIdAndType(userId,type,state);
	}
	
	@Override
	public void updateMoneyByUserIdAndType(Integer userId,String type,Double money) {
		businessApplayAuditMapper.updateMoneyByUserIdAndType(userId,type,money);
	}
}