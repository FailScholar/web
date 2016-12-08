/*******************************************************************************
 * Copyright (c) 2016.11.10 by LiuFa.
 * Copyright © 2016 Shenzhen GTA Education Tech Ltd. All rights reserved
 ******************************************************************************/

package com.jltfisp.web.user.service.impl;

import com.jltfisp.login.entity.JltfispUser;
import com.jltfisp.web.user.dao.UserMapper;
import com.jltfisp.web.user.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import tk.mybatis.mapper.entity.Example;

import java.util.List;
import java.util.Set;

/**
 * Created by LiuFa on 2016/11/10.
 * com.jltfisp.web.user.service.impl
 * ROOT
 */
@Service
@Transactional
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;

    @Override
    public List<JltfispUser> getAllUserEmailAndName() {
        Example example = new Example(JltfispUser.class);
        example.createCriteria().andCondition("is_delete=0").andCondition("state=1");
        return userMapper.selectByExample(example);
    }

	@Override
	public int updateByPKSelective(JltfispUser user) {
		// TODO Auto-generated method stub
		return userMapper.updateByPKSelective(user);
	}

    @Override
    public Set<String> getVisitorPermSet() {
        return userMapper.getVisitorPermSet();
    }

	@Override
	public int updateUserByAccountNumber(String emailCaptcha,
			String accountNumber) {
		// TODO Auto-generated method stub
		return userMapper.updateUserByAccountNumber(emailCaptcha, accountNumber);
	}

	@Override
	public List<JltfispUser> selectUserByAccountNumber(String accountNumber) {
		// TODO Auto-generated method stub
		return userMapper.selectUserByAccountNumber(accountNumber);
	}

	@Override
	public JltfispUser selectByPk(Integer id) {
		// TODO Auto-generated method stub
		return userMapper.selectByPk(id);
	}

	@Override
	public int updatePasswordByAccountNumber(String password,
			String accountNumber) {
		// TODO Auto-generated method stub
		return userMapper.updatePasswordByAccountNumber(password, accountNumber);
	}

}
