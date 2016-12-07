package com.jltfisp.web.capital.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jltfisp.web.capital.dao.CapitalDao;
import com.jltfisp.web.capital.entity.JltfispCapital;
import com.jltfisp.web.column.entity.JltfispColumn;

public interface CapitalService {
	
	public List<JltfispColumn> getJltfispColumnList(Integer parentColumn);

	public List<JltfispCapital> getCapitalInfoList(Integer columnNo);

	public JltfispCapital getCapitalDetail(Integer id);

	public void updateCapitalPv(Integer id);

}
