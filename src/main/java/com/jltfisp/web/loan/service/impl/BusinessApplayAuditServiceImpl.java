package com.jltfisp.web.loan.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jltfisp.base.basedao.BaseMapper;
import com.jltfisp.base.service.impl.BaseServiceImpl;
import com.jltfisp.web.loan.dao.BusinessApplayAuditMapper;
import com.jltfisp.web.loan.dao.CoBaseMapper;
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
    @Autowired
    private CoBaseMapper coBaseMapper;

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
        List<BusinessApplayAudit> business1 = businessApplayAuditMapper
                .getLoanBusinessByThreeParamsList(userId, "1","1");
        List<BusinessApplayAudit> business2 = businessApplayAuditMapper
                .getLoanBusinessByThreeParamsList(userId, "2","1");
        List<BusinessApplayAudit> business3 = businessApplayAuditMapper
                .getLoanBusinessByThreeParamsList(userId, "3","1");
        List<BusinessApplayAudit> business4 = businessApplayAuditMapper
                .getLoanBusinessByThreeParamsList(userId, "4","1");
        int flag=0;
        if(business1!=null){
        for (BusinessApplayAudit s:business1){
        if(s.getState()==0){ //0代表该信息已提交未审核
        	flag=1;
        }
        	}
        }
        if(business2!=null){
        for (BusinessApplayAudit s:business2){
        if(s.getState()==0){//0代表该信息已提交未审核
        	flag=1;
        }
        }
        }
        if(business3!=null){
        for (BusinessApplayAudit s:business3){
        if(s.getState()==0){//0代表该信息已提交未审核
        	flag=1;
        }
        }
        }
        if(business4!=null){
        for (BusinessApplayAudit s:business4){
        if(s.getState()==0){//0代表该信息已提交未审核
        	flag=1;
        }
        }
        }
        return flag;
    }
    
    
    @Override
    public int checkApplyOne(Integer userId,String type) {
        List<BusinessApplayAudit> business = businessApplayAuditMapper
                .getLoanBusinessByThreeParamsList(userId, type,"1");
        int flag=0;
        if(business!=null){
        for (BusinessApplayAudit s:business){	
        if(s.getState()==0){ //0代表该信息已提交未审核
        	flag=1;
        }
        }
        }
        return flag;
    }
    
    
    @Override
    public BusinessApplayAudit selectBusinessByStatusAndUserIdAndParentType(Integer userId,String type,String parentType,String state) {
    	BusinessApplayAudit business = businessApplayAuditMapper
                .getLoanBusinessByFourParams(userId, type,parentType,state);
        return business;
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
	public JltfispCoFillInApply getCoFillInApplyContext(int info_id) {
		// TODO Auto-generated method stub
		return coFillInApplyMapper.getCoFillInApplyContext(info_id);
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

	@Override
	public BusinessApplayAudit getBusinessApplayAuditByUserIdAndInfoIdAndType(
			Integer userId, Integer infoId, int Type) {
		return businessApplayAuditMapper.getBusinessApplayAuditByUserIdAndInfoIdAndType(userId,infoId,Type);
	}

	@Override
	public void updateInfoIdById(Integer id,Integer infoId) {
		businessApplayAuditMapper.updateInfoIdById(id,infoId);
		
	}

	@Override
	public int updateCoInfoState(Integer state, Integer infoId) {
		// TODO Auto-generated method stub
		return coBaseMapper.updateState(state, infoId);
	}
	
	
}