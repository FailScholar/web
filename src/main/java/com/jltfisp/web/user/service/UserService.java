/*******************************************************************************
 * Copyright (c) 2016.11.10 by LiuFa.
 * Copyright © 2016 Shenzhen GTA Education Tech Ltd. All rights reserved
 ******************************************************************************/

package com.jltfisp.web.user.service;

import com.jltfisp.login.entity.JltfispUser;

import java.util.List;

/**
 * Created by LiuFa on 2016/11/10.
 * com.jltfisp.web.user.service
 * ROOT
 */
public interface UserService {

    List<JltfispUser> getAllUserEmailAndName();

}
