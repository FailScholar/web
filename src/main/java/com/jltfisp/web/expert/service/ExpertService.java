/*******************************************************************************
 * Copyright (c) 2016.11.7 by zhangshuxi.
 * Copyright © 2016 Shenzhen GTA Education Tech Ltd. All rights reserved
 ******************************************************************************/

package com.jltfisp.web.expert.service;

import java.util.List;

import com.jltfisp.web.expert.entity.JltfispExpert;
import com.jltfisp.web.expert.entity.JltfispExpertDoMain;

/**
 * 首页专家资源功能
 * @author 张舒西 2016年11月18日 下午2:21:47
 */
public interface ExpertService {
    /**
     * 
     * @param id
     * @return JltfispExpert 返回内容对象
     * @author 张舒西 2016年11月18日 下午2:22:22
     */
    JltfispExpert getExpertContext(Integer id);
    /**
     * 
     * @param columnid
     * @return List<JltfispExpert> 返回JltfispExpert list对象
     * @author 张舒西 2016年11月22日 上午9:12:54
     */
    List<JltfispExpert> getExpertList(Integer columnid);
    
    /**
     * 
     * @param columnid
     * @return List<JltfispExpert> 返回JltfispExpert list对象
     * @author 张舒西 2016年11月22日 上午9:12:54
     */
    List<JltfispExpert> getExpertPageList(int rows,int Pagesize,int columnId);
    
    /**
     * 
     * @param columnid
     * @return int 
     * @author 张舒西 2016年11月26日 上午9:12:54
     */
    int getExpertPageCount(Integer columnid);
    
    /**
     * 
     * @param columnid
     * @return
     */
    int saveExpert(JltfispExpert expert);
    
    /**
     * 
     * @param doMain
     * @return int
     */
    int saveExpertDoMain(JltfispExpertDoMain doMain);
}
