package com.jltfisp.web.cloud.service;

import java.util.List;

import com.jltfisp.base.service.IBaseService;
import com.jltfisp.web.cloud.entity.Cloud;

public interface ICloudService extends IBaseService<Cloud>{
	
	public List<Cloud> getCloudsList(Integer columnid,int page);
	
	int getCloudsCount(Integer columnid);
}