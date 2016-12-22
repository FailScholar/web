package com.jltfisp.web.loan.dao;

import com.jltfisp.base.basedao.BaseMapper;
import com.jltfisp.web.loan.entity.LoanManageOther;
/**
 * 数据访问接口
 */
public interface LoanManageOtherMapper extends BaseMapper<LoanManageOther>{

    /**
     * 查询字典表里type为1002 的最大的code
     * @return
     * @author yingying.wang1 2016年12月16日 上午10:30:32
     */
    int selectMaxCode();    

}


