package com.jltfisp.web.user.service;

import java.util.List;

import com.jltfisp.base.service.IBaseService;
import com.jltfisp.web.user.entity.Role;

public interface IRoleService extends IBaseService<Role>{
	List<String> getColumnList(Integer parentid);
}