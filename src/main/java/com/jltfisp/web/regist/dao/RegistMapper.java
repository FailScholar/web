/*******************************************************************************
 * Copyright (c) 2016.11.7 by LiuFa.
 * Copyright © 2016 Shenzhen GTA Education Tech Ltd. All rights reserved
 ******************************************************************************/

package com.jltfisp.web.regist.dao;


import com.jltfisp.base.basedao.BaseMapper;
import com.jltfisp.login.entity.JltfispUser;
import org.apache.ibatis.annotations.Select;

/**
 * Created by LiuFa on 2016/11/7.
 * com.jltfisp.web.regist.dao
 * ROOT
 */
public interface RegistMapper extends BaseMapper<JltfispUser> {
    void correlationRoles(Integer userId, Integer roleId);

    @Select("SELECT COUNT(*) FROM jltfisp_user WHERE account_number = #{email} AND is_delete = 0 AND state =1")
    int validEmail(String email);

    @Select("SELECT COUNT(*) FROM jltfisp_user WHERE username = #{comName} AND is_delete = 0 AND state =1")
    int validComName(String comName);
}
