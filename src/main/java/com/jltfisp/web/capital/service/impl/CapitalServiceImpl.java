package com.jltfisp.web.capital.service.impl;

import com.jltfisp.web.capital.dao.CapitalDao;
import com.jltfisp.web.capital.entity.JltfispCapital;
import com.jltfisp.web.capital.service.CapitalService;
import com.jltfisp.web.column.entity.JltfispColumn;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class CapitalServiceImpl implements CapitalService {
	
	@Autowired
    private CapitalDao capitalDao;
	
	public List<JltfispColumn> getJltfispColumnList(Integer parentColumn){
		return this.capitalDao.getJltfispColumnList(parentColumn);
	}

	@Override
	public List<JltfispCapital> getCapitalInfoList(Integer columnNo) {
		return this.capitalDao.getCapitalInfoList(columnNo);
	}

	@Override
	public JltfispCapital getCapitalDetail(Integer id) {
		return this.capitalDao.getCapitalDetail(id);
	}

	@Override
	public void updateCapitalPv(Integer id) {
		this.capitalDao.updateCapitalPv(id);
		
	}
}
