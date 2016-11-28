/*******************************************************************************
 * Copyright (c) 2016.11.7 by LiuFa.
 * Copyright © 2016 Shenzhen GTA Education Tech Ltd. All rights reserved
 ******************************************************************************/

package com.jltfisp.web.regist.dao;


import com.jltfisp.base.basedao.BaseMapper;
import com.jltfisp.login.entity.JltfispUser;

/**
 * Created by LiuFa on 2016/11/7.
 * com.jltfisp.web.regist.dao
 * ROOT
 */
public interface RegistMapper extends BaseMapper<JltfispUser> {
    void correlationRoles(Integer userId, Integer roleId);
}
