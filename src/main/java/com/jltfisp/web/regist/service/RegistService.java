/*******************************************************************************
 * Copyright (c) 2016.11.7 by LiuFa.
 * Copyright © 2016 Shenzhen GTA Education Tech Ltd. All rights reserved
 ******************************************************************************/

package com.jltfisp.web.regist.service;

import com.jltfisp.login.entity.JltfispUser;

/**
 * Created by LiuFa on 2016/11/7.
 * com.jltfisp.web.regist.service
 * ROOT
 */
public interface RegistService {
    int registBaseInfo(JltfispUser user);

    JltfispUser getAUser(Integer id);

    void updateUser(JltfispUser user);

    void correlationRoles(Integer userId, Integer roleId);

}
