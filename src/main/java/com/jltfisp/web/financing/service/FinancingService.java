/*******************************************************************************
 * Copyright (c) 2016.11.7 by zhangshuxi.
 * Copyright © 2016 Shenzhen GTA Education Tech Ltd. All rights reserved
 ******************************************************************************/

package com.jltfisp.web.financing.service;

import java.util.List;

import com.jltfisp.web.financing.entity.JltfispFinancing;

/**
 * 首页专家资源功能
 * @author 张舒西 2016年11月18日 下午2:21:47
 */
public interface FinancingService {
    /**
     * 
     * @param id
     * @return JltfispFinancing 返回内容对象
     * @author 张舒西 2016年11月18日 下午2:22:22
     */
    JltfispFinancing getFinancingContext(Integer id);
    /**
     * 
     * @param columnid
     * @param id
     * @return List<JltfispFinancing> 返回JltfispFinancing list对象
     * @author 张舒西 2016年11月22日 上午9:12:54
     */
    List<JltfispFinancing> getFinancingList(Integer columnid);

}
