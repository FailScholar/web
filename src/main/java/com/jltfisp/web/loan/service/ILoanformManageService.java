package com.jltfisp.web.loan.service;

import com.jltfisp.base.entity.SysDict;
import com.jltfisp.base.service.IBaseService;
import com.jltfisp.web.loan.entity.LoanformManage;

public interface ILoanformManageService extends IBaseService<LoanformManage>{
	public Integer selectMaxCode();
	public int deleteLoanform(Integer id,Integer type);
	public int saveLoanform(SysDict sys,LoanformManage t);

	LoanformManage queryManage(Integer id);
}