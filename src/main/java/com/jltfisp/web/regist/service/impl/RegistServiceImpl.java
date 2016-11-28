/*******************************************************************************
 * Copyright (c) 2016.11.7 by LiuFa.
 * Copyright © 2016 Shenzhen GTA Education Tech Ltd. All rights reserved
 ******************************************************************************/

package com.jltfisp.web.regist.service.impl;

import com.jltfisp.login.entity.JltfispUser;
import com.jltfisp.web.regist.dao.RegistMapper;
import com.jltfisp.web.regist.service.RegistService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by LiuFa on 2016/11/7.
 * com.jltfisp.web.regist.service.impl
 * ROOT
 */
@Service
@Transactional
public class RegistServiceImpl implements RegistService {
    @Autowired
    private RegistMapper registMapper;

    @Override
    public int registBaseInfo(JltfispUser user) {
        return registMapper.insert(user);
    }

    @Override
    public JltfispUser getAUser(Integer id) {
        return registMapper.selectByPrimaryKey(id);
    }

    @Override
    public void updateUser(JltfispUser user) {
        registMapper.updateByPrimaryKeySelective(user);
    }

    @Override
    public void correlationRoles(Integer userId, Integer roleID) {
        registMapper.correlationRoles(userId,roleID);
    }
}
