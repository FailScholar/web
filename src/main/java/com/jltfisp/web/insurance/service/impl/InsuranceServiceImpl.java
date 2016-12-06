/*******************************************************************************
 * Copyright (c) 2016.12.2 by LiuFa.
 * Copyright © 2016 Shenzhen GTA Education Tech Ltd. All rights reserved
 ******************************************************************************/

package com.jltfisp.web.insurance.service.impl;

import com.github.pagehelper.PageHelper;
import com.jltfisp.web.insurance.dao.JltfispInsuranceMapper;
import com.jltfisp.web.insurance.entity.JltfispInsurance;
import com.jltfisp.web.insurance.service.InsuranceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by LiuFa on 2016/12/2.
 * com.jltfisp.web.insurance.service.impl
 * ROOT
 */
@Service
@Transactional
public class InsuranceServiceImpl implements InsuranceService {
    @Autowired
    private JltfispInsuranceMapper jltfispInsuranceMapper;

    @Override
    public List<JltfispInsurance> getDetail(int columnId, int page) {
        JltfispInsurance insurance = new JltfispInsurance();
        insurance.setColumnId(columnId);
        PageHelper.startPage(page, 8);
        return jltfispInsuranceMapper.select(insurance);
    }

    @Override
    public JltfispInsurance getDetailById(int id) {
        JltfispInsurance insurance = jltfispInsuranceMapper.selectByPrimaryKey(id);
        addPV(insurance);
        return insurance;
    }

    @Async
    private boolean addPV(JltfispInsurance insurance){
        JltfispInsurance insurance1 = new JltfispInsurance();
        insurance1.setId(insurance.getId());
        insurance1.setPv(insurance.getPv() + 1);
        try {
            jltfispInsuranceMapper.updateByPrimaryKeySelective(insurance1);
        } catch (Exception e) {
            //
        }
        return true;
    }
}
