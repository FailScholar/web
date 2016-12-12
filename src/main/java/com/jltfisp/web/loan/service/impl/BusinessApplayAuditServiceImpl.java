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
    public BusinessApplayAudit checkApply(Integer userId, String parentType) {
        BusinessApplayAudit businessApplayAudit = businessApplayAuditMapper
                .checkApply(userId, parentType);
        return businessApplayAudit;
    }
    
    @Override
    public BusinessApplayAudit checkApplyForLoan(Integer userId, String type,String parentType) {
        return businessApplayAuditMapper.getLoanBusinessByThreeParams(userId, type, parentType);
    }
    
    @Override
    public int checkApplyForExpert(Integer userId) {
        List<BusinessApplayAudit> list=businessApplayAuditMapper.getBusinessByUserIDAndParentType(userId, "3");
        int flag=0;
        if(null != list){
        	for (BusinessApplayAudit s:list){
        		if(s.getParentType().equals("3") && (s.getState()==0 || s.getState()==1)){
        			flag=1;
        		}
        		
        	}
        }
        
        return flag;
    }
    
    
    @Override
    public int checkApplyFour(Integer userId) {
        BusinessApplayAudit business1 = businessApplayAuditMapper
                .checkApply(userId, "1");
        BusinessApplayAudit business2 = businessApplayAuditMapper
                .checkApply(userId, "2");
        BusinessApplayAudit business3 = businessApplayAuditMapper
                .checkApply(userId, "3");
        BusinessApplayAudit business4 = businessApplayAuditMapper
                .checkApply(userId, "4");
        int flag=0;
        if(business1!=null){
        if(business1.getState()==0 || business1.getState()==1){
        	flag=1;
        }
        }
        if(business2!=null){
        if(business2.getState()==0 || business2.getState()==1){
        	flag=1;
        }
        }
        if(business3!=null){
        if(business3.getState()==0 || business3.getState()==1){
        	flag=1;
        }
        }
        if(business4!=null){
        if(business4.getState()==0 || business4.getState()==1){
        	flag=1;
        }
        }
        return flag;
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
            String parentType, Integer state) {
        return businessApplayAuditMapper.getBusinessApplayAudit(userId, parentType,
                state);
    }

	@Override
	public JltfispCoFillInApply getCoFillInApplyContext(int userid,
			int applyType) {
		// TODO Auto-generated method stub
		return coFillInApplyMapper.getCoFillInApplyContext(userid, applyType);
	}

	@Override
	public List<BusinessApplayAudit> getBusinessApplayAuditListByUserId(Integer userId,String type) {
		return businessApplayAuditMapper.getBusinessApplayAuditListByUserId(userId,type);
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