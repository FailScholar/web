package com.jltfisp.web.expert.service.impl;
import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jltfisp.base.basedao.BaseMapper;
import com.jltfisp.base.service.impl.BaseServiceImpl;
import com.jltfisp.web.expert.dao.FinExpertManageMapper;
import com.jltfisp.web.expert.entity.FinExpertManage;
import com.jltfisp.web.expert.service.IFinExpertManageService;

@Repository
public class FinExpertManageServiceImpl extends BaseServiceImpl<FinExpertManage> implements IFinExpertManageService {
	@Autowired
	private FinExpertManageMapper  finExpertManageMapper;
	@Resource(name="finExpertManageMapper")
	public void setMapper(BaseMapper<FinExpertManage> mapper) {
		this.mapper = mapper;
		this.finExpertManageMapper=(FinExpertManageMapper)mapper;
	}
}