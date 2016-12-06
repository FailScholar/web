package com.jltfisp.web.capital.service;

import com.jltfisp.web.capital.entity.JltfispCapital;
import com.jltfisp.web.column.entity.JltfispColumn;

import java.util.List;

public interface CapitalService {
	
	public List<JltfispColumn> getJltfispColumnList(Integer parentColumn);

	public List<JltfispCapital> getCapitalInfoList(Integer columnNo);

	public JltfispCapital getCapitalDetail(Integer id);

	public void updateCapitalPv(Integer id);

}
