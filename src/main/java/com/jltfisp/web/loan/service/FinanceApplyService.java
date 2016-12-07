package com.jltfisp.web.loan.service;

import java.util.List;

import com.jltfisp.web.loan.entity.JltfispCoBase;
import com.jltfisp.web.loan.entity.JltfispFinMaterial;
import com.jltfisp.web.loan.entity.JltfispFinShareholder;

public interface FinanceApplyService {

	public JltfispCoBase getJltfispCoBaseInfo(Integer userId);
	
	public JltfispFinMaterial getJltfispFinMaterialInfo(Integer id);
	
	public void deleteBase(Integer userId);

	public Object addCoBase(JltfispCoBase jltfispCoBase);
	
	public void updateCoBaseAndMaterial(Integer infoId,Integer Id);
	
	public void deleteFinMaterial(Integer infoId);
	
	public Object addFinMaterial(JltfispFinMaterial jltfispFinMaterial);

	public List<JltfispFinShareholder> getShareholderlistByInfoId(int id);

	public void updateJltfispCoBaseInfo(Integer id);

	
}
