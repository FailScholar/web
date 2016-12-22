package com.jltfisp.web.loan.service;

import com.jltfisp.base.entity.SysDict;
import com.jltfisp.base.service.IBaseService;
import com.jltfisp.web.loan.entity.LoanManageOther;

public interface ILoanManageOtherService extends IBaseService<LoanManageOther>{

    /**
     * 查询字典表里type为1002 的最大的code
     * @return
     * @author yingying.wang1 2016年12月16日 上午10:28:51
     */
    int selectMaxCode();

    /**
     * 保存新增的贷款业务申请表
     * @param sample
     * @param t
     * @author yingying.wang1 2016年12月16日 上午10:31:36
     */
    int saveLoanform(SysDict sample, LoanManageOther t);

    /**
     * 删除新增的贷款服务
     * @param id
     * @param type
     * @return
     * @author yingying.wang1 2016年12月16日 下午4:05:17
     */
    int deleteLoanform(Integer id, Integer type);
}