/*******************************************************************************
 * Copyright (c) 2016.11.7 by 张舒西.
 * Copyright © 2016 Shenzhen GTA Education Tech Ltd. All rights reserved
 ******************************************************************************/

package com.jltfisp.web.financing.service.impl;

import java.util.List;

import com.github.pagehelper.PageHelper;
import com.jltfisp.web.financing.entity.JltfispFinancing;
import com.jltfisp.web.financing.dao.FinancingMapper;
import com.jltfisp.web.financing.service.FinancingService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/*
 *前台首页内容service层 
 */
@Service
@Transactional
public class FinancingServiceImpl implements FinancingService {
    @Autowired
    private FinancingMapper financingMapper;
    
    /**
     * 查询单个专家资源详情
     * @author 张舒西 2016年11月22日 上午9:17:52
     */
    @Override
    public JltfispFinancing getFinancingContext(Integer id) {
        return financingMapper.selectByPrimaryKey(id);
    }
    
    /**
     * 查询专家资源列表
     * @author 张舒西 2016年11月22日 上午9:17:39
     */
    @Override
    public List<JltfispFinancing> getFinancingList(Integer columnid,int page,Integer type) {
        JltfispFinancing jltfispFinancing = new JltfispFinancing();
        jltfispFinancing.setColumnid(columnid);
        jltfispFinancing.setType(type);
        PageHelper.startPage(page, 12);
        return financingMapper.select(jltfispFinancing);
    }

	@Override
	public int getFinancingCount(Integer columnid, Integer type) {
		JltfispFinancing jltfispFinancing = new JltfispFinancing();
        jltfispFinancing.setColumnid(columnid);
        jltfispFinancing.setType(type);
		return financingMapper.selectCount(jltfispFinancing);
	}

}
