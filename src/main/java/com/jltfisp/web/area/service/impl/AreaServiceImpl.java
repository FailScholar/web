/*******************************************************************************
 * Copyright (c) 2016.11.7 by 张舒西.
 * Copyright © 2016 Shenzhen GTA Education Tech Ltd. All rights reserved
 ******************************************************************************/

package com.jltfisp.web.area.service.impl;

import java.util.List;

import com.jltfisp.web.area.entity.*;
import com.jltfisp.web.area.dao.*;
import com.jltfisp.web.area.service.AreaService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/*
 *前台首页内容service层 
 */
@Service
@Transactional
public class AreaServiceImpl implements AreaService {
    @Autowired
    private AreaMapper areaMapper;
    
    /**
     * 查询单个省市区县详情
     * @author 张舒西 2016年11月25日 上午9:17:52
     */
    @Override
    public JltfispArea getAreaContext(Integer id) {
        return areaMapper.selectByPrimaryKey(id);
    }
    
    /**
     * 查询Pid列表
     * @author 张舒西 2016年11月22日 上午9:17:39
     */
    @Override
    public List<JltfispArea> getAreaList(Integer Pid) {
    	JltfispArea  jltfispArea = new JltfispArea();
    	jltfispArea.setPid(Pid);
        return areaMapper.select(jltfispArea);
    }
    
    /**
     * 三级数据和四级数据合并
     * @author 张舒西 2016年11月22日 上午9:17:39
     */
    @Override
    public List<JltfispArea> getAreaAllList(Integer Pid) {
    	JltfispArea  jltfispArea = new JltfispArea();
    	jltfispArea.setPid(Pid);
    	List<JltfispArea> areathree= areaMapper.select(jltfispArea);
    	if(!areathree.isEmpty()){
    		String area=areathree.get(0).getName();
    		if("市辖区".equals(area)){
    		jltfispArea.setPid(areathree.get(0).getId());
    		List<JltfispArea> areafour=  areaMapper.select(jltfispArea);
    		areathree.addAll(areafour);
    		}
    	}
        return areathree;
    }
    
    /**
     * 根据id查询二级数据
     * @author 张舒西 2016年11月22日 上午9:17:39
     */
	@Override
	public List<JltfispArea> getSubAreaList(Integer id) {
		JltfispArea jltfispArea=areaMapper.selectByPrimaryKey(id);
		return this.getAreaList(jltfispArea.getPid());
	}

}
