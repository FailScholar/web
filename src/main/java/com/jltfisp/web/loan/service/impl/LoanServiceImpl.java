/*******************************************************************************
 * Copyright (c) 2016.11.7 by 张舒西.
 * Copyright © 2016 Shenzhen GTA Education Tech Ltd. All rights reserved
 ******************************************************************************/

package com.jltfisp.web.loan.service.impl;

import java.util.List;

import com.jltfisp.web.loan.entity.JltfispCoBaseDto;
import com.jltfisp.web.loan.entity.JltfispCoDebt;
import com.jltfisp.web.loan.entity.JltfispCoFile;
import com.jltfisp.web.loan.entity.JltfispCoFinancial;
import com.jltfisp.web.loan.entity.JltfispCoProfile;
import com.jltfisp.web.loan.entity.JltfispCoProfit;
import com.jltfisp.web.loan.dao.CoBaseMapper;
import com.jltfisp.web.loan.dao.CoDebtMapper;
import com.jltfisp.web.loan.dao.CoFileMapper;
import com.jltfisp.web.loan.dao.CoFinancialMapper;
import com.jltfisp.web.loan.dao.CoProfileMapper;
import com.jltfisp.web.loan.dao.CoProfitMapper;
import com.jltfisp.web.loan.service.LoanService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/*
 *前台首页贷款服务service层 
 */
@Service
@Transactional
public class LoanServiceImpl implements LoanService {
    @Autowired
    private CoBaseMapper coBaseMapper;
    
    @Autowired
    private CoProfileMapper coProfileMapper;
    
    @Autowired
    private CoDebtMapper coDebtMapper;
    
    @Autowired
    private CoProfitMapper coProfitMapper;
    
    @Autowired
    private CoFinancialMapper coFinancialMapper;
    
    @Autowired
    private CoFileMapper coFileMapper;
    
    /**
     * 查询单个专家资源详情
     * @author 张舒西 2016年11月22日 上午9:17:52
     */
    @Override
    public JltfispCoBaseDto getCoBaseContext(Integer id) {
        return coBaseMapper.selectByPrimaryKey(id);
    }
    
    /**
     * 查询专家资源列表
     * @author 张舒西 2016年11月22日 上午9:17:39
     */
    @Override
    public List<JltfispCoBaseDto> getCoBaseList(Integer userid) {
    	JltfispCoBaseDto jltfispCoBaseDto = new JltfispCoBaseDto();
    	jltfispCoBaseDto.setUser_id(userid);
        return coBaseMapper.select(jltfispCoBaseDto);
    }

	@Override
	public int saveCoBase(JltfispCoBaseDto coBase) {
		return coBaseMapper.insert(coBase);
	}

	@Override
	public int saveCoProfile(JltfispCoProfile coProfile) {
		return coProfileMapper.insert(coProfile);
	}
	
	@Override
	public int saveCoDebt(JltfispCoDebt coDebt) {
		return coDebtMapper.insert(coDebt);
	}
	
	@Override
	public int saveCoProfit(JltfispCoProfit coProfit) {
		return coProfitMapper.insert(coProfit);
	}
	
	@Override
	public int saveCoFinancial(JltfispCoFinancial coFinancial) {
		return coFinancialMapper.insert(coFinancial);
	}
	
	@Override
	public int saveCoFile(JltfispCoFile coFile) {
		return coFileMapper.insert(coFile);
	}

}
