package com.jltfisp.web.cloud.service.impl;

import com.jltfisp.base.basedao.BaseMapper;
import com.jltfisp.base.service.impl.BaseServiceImpl;
import com.jltfisp.web.cloud.dao.CloudMapper;
import com.jltfisp.web.cloud.entity.Cloud;
import com.jltfisp.web.cloud.service.ICloudService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;

@Repository
public class CloudServiceImpl extends BaseServiceImpl<Cloud> implements ICloudService {
	@Autowired
	private CloudMapper  cloudMapper;
	@Resource(name="cloudMapper")
	public void setMapper(BaseMapper<Cloud> mapper) {
		this.mapper = mapper;
		this.cloudMapper=(CloudMapper)mapper;
	}
}