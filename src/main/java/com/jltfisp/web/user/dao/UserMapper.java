/*******************************************************************************
 * Copyright (c) 2016.11.10 by LiuFa.
 * Copyright © 2016 Shenzhen GTA Education Tech Ltd. All rights reserved
 ******************************************************************************/

package com.jltfisp.web.user.dao;

import com.jltfisp.base.basedao.BaseMapper;
import com.jltfisp.login.entity.JltfispUser;
import org.apache.ibatis.annotations.Select;

import java.util.Set;

/**
 * Created by LiuFa on 2016/11/10.
 * com.jltfisp.web.user.dao
 * ROOT
 */
public interface UserMapper extends BaseMapper<JltfispUser>{
    @Select("SELECT t1.uri FROM sys_right t1, sys_role_right t2, sys_role t3 WHERE t1.id = t2.rightid AND t2.roleid = t3.id AND t3.id = 3")
    Set<String> getVisitorPermSet();
}
