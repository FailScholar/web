/*******************************************************************************
 * Copyright (c) 2016.11.7 by zhangshuxi.
 * Copyright © 2016 Shenzhen GTA Education Tech Ltd. All rights reserved
 ******************************************************************************/

package com.jltfisp.web.loan.service;

import java.util.List;

import com.jltfisp.web.loan.entity.*;

/**
 * 首页贷款服务功能
 * @author 张舒西 2016年11月24日 下午2:21:47
 */
public interface LoanService {
    /**
     * 
     * @param id
     * @return JltfispCoBase 返回内容对象
     * @author 张舒西 2016年11月24日 下午2:22:22
     */
	JltfispCoBaseDto getCoBaseContext(Integer id);
    /**
     * 
     * @param userid
     * @return List<JltfispCoBase> 返回JltfispCoBase list对象
     * @author 张舒西 2016年11月24日 上午9:12:54
     */
    List<JltfispCoBaseDto> getCoBaseList(Integer userid);
    
    /**
     * 
     * @param coBase 传入对象
     * @author 张舒西 2016年11月24日 上午9:12:54
     */
    int saveCoBase(JltfispCoBaseDto coBase);
    
    /**
     * 保存企业概况
     * @param coProfile
     * @return
     */
    int saveCoProfile(JltfispCoProfile coProfile);
    
    /**
     * 保存资产负债表
     * @param coDebt
     * @return
     */
    int saveCoDebt(JltfispCoDebt coDebt);
    
    /**
     * 保存利润表
     * @param coProfit
     * @return
     */
    int saveCoProfit(JltfispCoProfit coProfit);
    
    /**
     * 保存附加财务表
     * @param coFinancial
     * @return
     */
    int saveCoFinancial(JltfispCoFinancial coFinancial);
    
    /**
     * 保存附件信息
     * @param coFile
     * @return
     */
    int saveCoFile(JltfispCoFile coFile);


}
