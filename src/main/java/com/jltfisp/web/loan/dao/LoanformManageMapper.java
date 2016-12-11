package com.jltfisp.web.loan.dao;

import com.jltfisp.base.basedao.BaseMapper;
import com.jltfisp.web.loan.entity.LoanformManage;
/**
 * 数据访问接口
 */
public interface LoanformManageMapper extends BaseMapper<LoanformManage>{    
	public int selectMaxCode();
}


