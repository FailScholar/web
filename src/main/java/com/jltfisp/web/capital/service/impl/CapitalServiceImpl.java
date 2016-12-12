package com.jltfisp.web.capital.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.github.pagehelper.PageHelper;
import com.jltfisp.base.service.impl.BaseServiceImpl;
import com.jltfisp.web.capital.dao.CapitalDao;
import com.jltfisp.web.capital.entity.JltfispCapital;
import com.jltfisp.web.capital.service.CapitalService;
import com.jltfisp.web.column.entity.JltfispColumn;

@Service
@Transactional
public class CapitalServiceImpl extends BaseServiceImpl<JltfispCapital> implements CapitalService {
	
	@Autowired
    private CapitalDao capitalDao;
	
	public List<JltfispColumn> getJltfispColumnList(Integer parentColumn){
		return this.capitalDao.getJltfispColumnList(parentColumn);
	}

	@Override
	public JltfispCapital getCapitalDetail(Integer id) {
		return this.capitalDao.getCapitalDetail(id);
	}

	@Override
	public void updateCapitalPv(Integer id) {
		this.capitalDao.updateCapitalPv(id);
	}

	@Override
	public List<JltfispCapital> getCapitalList(Integer columnId, Integer page) {
		PageHelper.startPage(page, 8);
	    return this.capitalDao.getCapitalList(columnId);
	}

	@Override
	public int getCapitalPageCount(Integer columnId) {
		return this.capitalDao.getCapitalPageCount(columnId);
	}
	
	
	
}
