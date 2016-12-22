package com.jltfisp.web.loan.service.impl;

import java.util.Date;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jltfisp.base.basedao.BaseMapper;
import com.jltfisp.base.entity.SysDict;
import com.jltfisp.base.service.impl.BaseServiceImpl;
import com.jltfisp.util.service.DictionaryService;
import com.jltfisp.web.loan.dao.LoanManageOtherMapper;
import com.jltfisp.web.loan.entity.LoanManageOther;
import com.jltfisp.web.loan.service.ILoanManageOtherService;

@Repository
public class LoanManageOtherServiceImpl extends
        BaseServiceImpl<LoanManageOther> implements ILoanManageOtherService {
    @Autowired
    private LoanManageOtherMapper loanManageOtherMapper;
    
    @Autowired
    private DictionaryService dictionaryService;

    @Resource(name = "loanManageOtherMapper")
    public void setMapper(BaseMapper<LoanManageOther> mapper) {
        this.mapper = mapper;
        this.loanManageOtherMapper = (LoanManageOtherMapper) mapper;
    }

    @Override
    public int selectMaxCode() {
        return loanManageOtherMapper.selectMaxCode();
    }
    
    @Override
    public int saveLoanform(SysDict sys, LoanManageOther t) {
        dictionaryService.save(sys);//往字典表中插入新的贷款业务类型
        t.setCreatetime(new Date());
        t.setIstemplate(0);
        t.setType(sys.getId());
        return insertRecord(t);
    }
    
    @Override
    public int deleteLoanform(Integer id, Integer type) {
        dictionaryService.deleteByPK(type);
        int row = deleteReal(id);
        return row;
    }
}