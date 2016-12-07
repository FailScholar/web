package com.jltfisp.web.message.service.impl;
import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jltfisp.base.basedao.BaseMapper;
import com.jltfisp.base.service.impl.BaseServiceImpl;
import com.jltfisp.web.message.dao.CommunicateMapper;
import com.jltfisp.web.message.entity.Communicate;
import com.jltfisp.web.message.service.ICommunicateService;

@Repository
public class CommunicateServiceImpl extends BaseServiceImpl<Communicate> implements ICommunicateService {
	@Autowired
	private CommunicateMapper  communicateMapper;
	@Resource(name="communicateMapper")
	public void setMapper(BaseMapper<Communicate> mapper) {
		this.mapper = mapper;
		this.communicateMapper=(CommunicateMapper)mapper;
	}
}