package com.jltfisp.web.capital.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.jltfisp.base.basedao.BaseMapper;
import com.jltfisp.web.capital.entity.JltfispCapital;
import com.jltfisp.web.column.entity.JltfispColumn;

public interface CapitalDao extends BaseMapper<JltfispCapital>{
	
	
	public List<JltfispColumn> getJltfispColumnList(@Param("parentColumn")Integer parentColumn);

	public JltfispCapital getCapitalDetail(@Param("id")Integer id);

	public void updateCapitalPv(Integer id);

	public List<JltfispCapital> getCapitalList(Integer column_id);

	public int getCapitalPageCount(@Param("column_id")Integer column_id);
}
