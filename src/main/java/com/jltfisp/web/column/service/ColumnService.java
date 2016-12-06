/*******************************************************************************
 * Copyright (c) 2016.11.7 by zhangshuxi.
 * Copyright © 2016 Shenzhen GTA Education Tech Ltd. All rights reserved
 ******************************************************************************/

package com.jltfisp.web.column.service;

import com.jltfisp.web.column.entity.JltfispColumn;

import java.util.List;

/**
 * 首页专家资源功能
 * @author 张舒西 2016年11月18日 下午2:21:47
 */
public interface ColumnService {
    /**
     * 
     * @param id
     * @return JltfispColumn 返回内容对象
     * @author 张舒西 2016年11月18日 下午2:22:22
     */
    JltfispColumn getColumnContext(Integer id);
    /**
     * 
     * @return List<JltfispColumn> 返回所有JltfispColumn list对象
     * @author 张舒西 2016年11月22日 上午9:12:54
     */
    List<JltfispColumn> getColumnList();
    
    /**
     * 根据parentColumnId查询栏目
     * @return List<JltfispColumn> 返回所有JltfispColumn list对象
     * @author 张舒西 2016年11月22日 上午9:12:54
     */
    List<JltfispColumn> getColumnList(Integer parentColumnId);
    /**
     * 查询单个栏目-视频资源
     * @param parentColumnid
     * @param columnType
     * @return
     */
    JltfispColumn getColumnOne(Integer parentColumnid,Integer columnType);
    
}
