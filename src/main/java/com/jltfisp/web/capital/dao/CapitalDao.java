package com.jltfisp.web.capital.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.jltfisp.base.basedao.BaseMapper;
import com.jltfisp.web.capital.entity.JltfispCapital;
import com.jltfisp.web.column.entity.JltfispColumn;

public interface CapitalDao extends BaseMapper<JltfispCapital>{
	
	
	public List<JltfispColumn> getJltfispColumnList(@Param("parentColumn")Integer parentColumn);

	public List<JltfispCapital> getCapitalInfoList(@Param("columnNo")Integer columnNo);

	public JltfispCapital getCapitalDetail(@Param("id")Integer id);

	public void updateCapitalPv(Integer id);
}
