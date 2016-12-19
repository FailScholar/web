/*******************************************************************************
 * Copyright (c) 2016.11.10 by LiuFa.
 * Copyright © 2016 Shenzhen GTA Education Tech Ltd. All rights reserved
 ******************************************************************************/

package com.jltfisp.web.user.service;

import com.jltfisp.login.entity.JltfispUser;

import java.util.List;
import java.util.Set;

/**
 * Created by LiuFa on 2016/11/10.
 * com.jltfisp.web.user.service
 * ROOT
 */
public interface UserService {

    int updateByPKSelective(JltfispUser user);

    Set<String> getVisitorPermSet();

    int updateUserByAccountNumber(String emailCaptcha,String accountNumber);
    
    List<JltfispUser> selectUserByAccountNumber(String accountNumber);
    
    JltfispUser selectByPk(Integer id);
    
    int updatePasswordByAccountNumber(String password,String accountNumber);
}
