package com.jltfisp.web.loan.service.impl;
import java.util.Date;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.jltfisp.base.basedao.BaseMapper;
import com.jltfisp.base.entity.SysDict;
import com.jltfisp.base.service.impl.BaseServiceImpl;
import com.jltfisp.util.service.DictionaryService;
import com.jltfisp.web.loan.dao.LoanformManageMapper;
import com.jltfisp.web.loan.entity.LoanformManage;
import com.jltfisp.web.loan.service.ILoanformManageService;

@Repository
public class LoanformManageServiceImpl extends BaseServiceImpl<LoanformManage> implements ILoanformManageService {
	@Autowired
	private LoanformManageMapper  loanformManageMapper;
	@Autowired
    private DictionaryService dictionaryService;
	@Resource(name="loanformManageMapper")
	public void setMapper(BaseMapper<LoanformManage> mapper) {
		this.mapper = mapper;
		this.loanformManageMapper=(LoanformManageMapper)mapper;
	}
	@Override
	public Integer selectMaxCode() {
		return loanformManageMapper.selectMaxCode();
	}
	
	@Transactional
	public int deleteLoanform(Integer id, Integer type) {
		dictionaryService.deleteByPK(type);
		int row = deleteReal(id);
		return row;
	}
	
	@Transactional
	public int saveLoanform(SysDict sys, LoanformManage t) {
		dictionaryService.save(sys);//往字典表中插入新的贷款业务类型
		t.setCreatetime(new Date());
		t.setIstemplate(0);
		t.setType(sys.getId());
		return insertRecord(t);
	}
}