/*******************************************************************************
 * Copyright (c) 2016.11.7 by zhangshuxi.
 * Copyright © 2016 Shenzhen GTA Education Tech Ltd. All rights reserved
 ******************************************************************************/

package com.jltfisp.web.area.service;

import java.util.List;

import com.jltfisp.web.area.entity.JltfispArea;

/**
 * 首页专家资源功能
 * @author 张舒西 2016年11月18日 下午2:21:47
 */
public interface AreaService {
    /**
     * 
     * @param id
     * @return JltfispArea 返回对象
     * @author 张舒西 2016年11月18日 下午2:22:22
     */
	JltfispArea getAreaContext(Integer id);
    /**
     * 
     * @param Pid
     * @param id
     * @return List<JltfispArea> 返回JltfispArea list对象
     * @author 张舒西 2016年11月22日 上午9:12:54
     */
    List<JltfispArea> getAreaList(Integer Pid);
    
    /**
     * 获取根据ID获取二级内容
     * @param id
     * @return List<JltfispArea> 返回JltfispArea list对象
     * @author 张舒西 2016年11月22日 上午9:12:54
     */
    List<JltfispArea> getSubAreaList(Integer id);
}
