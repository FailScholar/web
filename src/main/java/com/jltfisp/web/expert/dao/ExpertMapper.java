package com.jltfisp.web.expert.dao;

import java.util.List;
import java.util.Map;

import com.jltfisp.base.basedao.BaseMapper;
import com.jltfisp.web.expert.entity.JltfispExpert;

public interface ExpertMapper extends BaseMapper<JltfispExpert>{
  
	public List<JltfispExpert> getExpertPageList(Map map);
}
