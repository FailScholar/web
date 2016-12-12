/*******************************************************************************
 * Copyright (c) 2016.11.7 by 张舒西.
 * Copyright © 2016 Shenzhen GTA Education Tech Ltd. All rights reserved
 ******************************************************************************/

package com.jltfisp.web.column.service.impl;

import java.util.List;

import com.jltfisp.web.column.entity.JltfispColumn;
import com.jltfisp.web.column.dao.*;
import com.jltfisp.web.column.service.ColumnService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/*
 *前台栏目内容service层 
 */
@Service
@Transactional
public class ColumnServiceImpl implements ColumnService {
    @Autowired
    private ColumnMapper columnMapper;
    
    /**
     * 查询单个栏目信息
     * @author 张舒西 2016年11月22日 上午9:17:52
     */
    @Override
    public JltfispColumn getColumnContext(Integer id) {
        return columnMapper.selectByPrimaryKey(id);
    }
    
    /**
     * 查询所有栏目信息
     * @author 张舒西 2016年11月22日 上午9:17:39
     */
    @Override
    public List<JltfispColumn> getColumnList() {
        return columnMapper.selectAll();
    }
    /**
     * 根据父栏目查询子栏目
     * @author 张舒西 2016年11月23日 上午10:28:01
     */
    @Override
    public List<JltfispColumn> getColumnList(Integer parentColumnId) {
        return columnMapper.selectSubColumn(parentColumnId);
    }

	@Override
	public JltfispColumn getColumnOne(Integer parentColumnid, Integer columnType) {
		// TODO Auto-generated method stub
		return columnMapper.selectColumnOne(parentColumnid, columnType);
	}


}
