package com.jltfisp.web.expert.dao;

import com.jltfisp.base.basedao.BaseMapper;
import com.jltfisp.web.expert.entity.JltfispExpert;

import java.util.List;
import java.util.Map;

public interface ExpertMapper extends BaseMapper<JltfispExpert>{
  
	public List<JltfispExpert> getExpertPageList(Map map);
}
