package com.jltfisp.web.loan.service.impl;

import com.jltfisp.web.loan.dao.FinanceApplyDao;
import com.jltfisp.web.loan.dao.FinanceMaterialDao;
import com.jltfisp.web.loan.dao.FinanceShareholderDao;
import com.jltfisp.web.loan.entity.JltfispCoBase;
import com.jltfisp.web.loan.entity.JltfispFinMaterial;
import com.jltfisp.web.loan.entity.JltfispFinShareholder;
import com.jltfisp.web.loan.service.FinanceApplyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class FinanceApplyServiceImpl implements FinanceApplyService  {

    @Autowired
    private FinanceApplyDao financeApplyDao;
    
    @Autowired
    private FinanceMaterialDao financeMaterialDao;
    
    @Autowired
    private FinanceShareholderDao financeShareholderDao;
	
	
	@Override
	public JltfispCoBase getJltfispCoBaseInfo(Integer userId) {
		return this.financeApplyDao.getJltfispCoBaseInfo(userId);
	}


	@Override
	public Object addCoBase(JltfispCoBase jltfispCoBase) {
		return this.financeApplyDao.insert(jltfispCoBase);
	}


	@Override
	public void updateCoBaseAndMaterial(Integer infoId,Integer id) {
		 this.financeMaterialDao.updateCoBaseAndMaterial(infoId,id);
	}


	@Override
	public JltfispFinMaterial getJltfispFinMaterialInfo(Integer id) {
		return this.financeApplyDao.getJltfispFinMaterialInfo(id);
	}

	@Override
	public void deleteFinMaterial(Integer infoId) {
		this.financeMaterialDao.deleteFinMaterial(infoId);
		
	}
	
	@Override
	public Object addFinMaterial(JltfispFinMaterial jltfispFinMaterial) {
		return this.financeMaterialDao.insert(jltfispFinMaterial);
	}

	@Override
	public void deleteBase(Integer userId) {
		this.financeApplyDao.deleteCoBase(userId);
	}


	@Override
	public List<JltfispFinShareholder> getShareholderlistByInfoId(int id) {
		return this.financeShareholderDao.getShareholderlistByInfoId(id);
	}


	@Override
	public void updateJltfispCoBaseInfo(Integer id) {
	   this.financeApplyDao.updateJltfispCoBaseInfo(id);
	}
}
