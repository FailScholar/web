package com.jltfisp.web.capital.service;

import java.util.List;

import com.jltfisp.base.service.IBaseService;
import com.jltfisp.web.capital.entity.JltfispCapital;
import com.jltfisp.web.column.entity.JltfispColumn;

public interface CapitalService extends IBaseService<JltfispCapital> {
	
	public List<JltfispColumn> getJltfispColumnList(Integer parentColumn);

	public JltfispCapital getCapitalDetail(Integer id);

	public void updateCapitalPv(Integer id);

	public List<JltfispCapital> getCapitalList(Integer columnId, Integer page);

	public int getCapitalPageCount(Integer columnId);

}
