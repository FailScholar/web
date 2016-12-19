package com.jltfisp.web.cloud.service.impl;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.github.pagehelper.PageHelper;
import com.jltfisp.base.basedao.BaseMapper;
import com.jltfisp.base.service.impl.BaseServiceImpl;
import com.jltfisp.web.cloud.dao.CloudMapper;
import com.jltfisp.web.cloud.entity.Cloud;
import com.jltfisp.web.cloud.service.ICloudService;

@Repository
public class CloudServiceImpl extends BaseServiceImpl<Cloud> implements ICloudService {
	@Autowired
	private CloudMapper  cloudMapper;
	@Resource(name="cloudMapper")
	public void setMapper(BaseMapper<Cloud> mapper) {
		this.mapper = mapper;
		this.cloudMapper=(CloudMapper)mapper;
	}
	@Override
	public List<Cloud> getCloudsList(Integer columnid, int page) {
		Cloud cloud = new Cloud();
		cloud.setColumnId(columnid);
		PageHelper.startPage(page, 12);
		PageHelper.orderBy("publish_time desc");
		return cloudMapper.select(cloud);
	}
	@Override
	public int getCloudsCount(Integer columnid) {
		Cloud cloud = new Cloud();
		cloud.setColumnId(columnid);
		return cloudMapper.selectCount(cloud);
	}
	@Override
	public int updateCloudPv(Integer id, Integer pv) {
		// TODO Auto-generated method stub
		return cloudMapper.updateCloudPv(id, pv);
	}
}