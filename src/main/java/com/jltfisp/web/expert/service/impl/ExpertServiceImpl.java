/*******************************************************************************
 * Copyright (c) 2016.11.7 by 张舒西.
 * Copyright © 2016 Shenzhen GTA Education Tech Ltd. All rights reserved
 ******************************************************************************/

package com.jltfisp.web.expert.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.jltfisp.web.expert.entity.*;
import com.jltfisp.web.expert.dao.*;
import com.jltfisp.web.expert.service.ExpertService;
import com.jltfisp.web.loan.entity.JltfispCoProfitDto;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/*
 *前台首页内容service层 
 */
@Service
@Transactional
public class ExpertServiceImpl implements ExpertService {
    @Autowired
    private ExpertMapper expertMapper;
    
    @Autowired
    private ExpertDoMainMapper expertDoMainMapper;
    
    /**
     * 查询单个专家资源详情
     * @author 张舒西 2016年11月22日 上午9:17:52
     */
    @Override
    public JltfispExpert getExpertContext(Integer id) {
        return expertMapper.selectByPrimaryKey(id);
    }
    
    /**
     * 查询专家资源列表
     * @author 张舒西 2016年11月22日 上午9:17:39
     */
    @Override
    public List<JltfispExpert> getExpertList(Integer columnid) {
        JltfispExpert  jltfispexpert = new JltfispExpert();
        jltfispexpert.setColumnid(columnid);
        return expertMapper.select(jltfispexpert);
    }
    
    /**
     * 查询分页列表
     * @author 张舒西 2016年11月26日 上午9:17:39
     */
    @Override
    public List<JltfispExpert> getExpertPageList(int rows,int pageSize,int columnId) {
    	HashMap map=new HashMap();
    	map.put("rows", rows);
    	map.put("pageSize", pageSize);
    	map.put("columnId", columnId);
        return expertMapper.getExpertPageList(map);
    }

	@Override
	public int getExpertPageCount(Integer columnid) {
		JltfispExpert  jltfispexpert = new JltfispExpert();
		jltfispexpert.setColumnid(columnid);
		return expertMapper.selectCount(jltfispexpert);
	}

	@Override
	public int saveExpert(JltfispExpert expert) {
		return expertMapper.insert(expert);
	}

	@Override
	public int saveExpertDoMain(JltfispExpertDoMain doMain) {
		String[] firstdomain =doMain.getFirstdomain().split(",");
		String[] seconddomain =doMain.getSeconddomain().split(",");
		String[] threedomain =doMain.getThreedomain().split(",");
		List<JltfispExpertDoMain> JltfispExpertDoMainList=new ArrayList<JltfispExpertDoMain>();
		for(int i=0;i<firstdomain.length;i++){
			JltfispExpertDoMain DoMain=new JltfispExpertDoMain();
			DoMain.setUserid(doMain.getUserid());
			DoMain.setFirstdomain(firstdomain[i]);
			DoMain.setSeconddomain(seconddomain[i]);
			DoMain.setThreedomain(threedomain[i]);
			DoMain.setColumnid(doMain.getColumnid());
			JltfispExpertDoMainList.add(DoMain);
		}
		return expertDoMainMapper.insertList(JltfispExpertDoMainList);
	}

}
