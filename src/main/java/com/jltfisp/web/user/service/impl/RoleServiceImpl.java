package com.jltfisp.web.user.service.impl;

import com.jltfisp.base.basedao.BaseMapper;
import com.jltfisp.base.service.impl.BaseServiceImpl;
import com.jltfisp.web.user.dao.RoleMapper;
import com.jltfisp.web.user.entity.Role;
import com.jltfisp.web.user.service.IRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;

@Repository
public class RoleServiceImpl extends BaseServiceImpl<Role> implements IRoleService {
	@Autowired
	private RoleMapper  roleMapper;
	@Resource(name="roleMapper")
	public void setMapper(BaseMapper<Role> mapper) {
		this.mapper = mapper;
		this.roleMapper=(RoleMapper)mapper;
	}
}