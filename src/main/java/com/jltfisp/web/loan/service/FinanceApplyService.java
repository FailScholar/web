package com.jltfisp.web.loan.service;

import java.util.List;

import com.jltfisp.web.loan.entity.JltfispCoBase;
import com.jltfisp.web.loan.entity.JltfispFinMaterial;
import com.jltfisp.web.loan.entity.JltfispFinShareholder;
import com.jltfisp.web.loan.entity.JltfispFinanceAndShareholdersDto;

public interface FinanceApplyService {

	public JltfispCoBase getJltfispCoBaseInfo(Integer userId);
	
	public JltfispFinMaterial getJltfispFinMaterialInfo(Integer id);
	
	public Object addCoBase(JltfispCoBase jltfispCoBase);
	
	public Object addFinMaterial(JltfispFinMaterial jltfispFinMaterial);

	public List<JltfispFinShareholder> getShareholderlistByInfoId(int id);

	public JltfispFinanceAndShareholdersDto getJltfispFinanceAndShareholdersDto(Integer id,Integer type);
	
	public JltfispFinanceAndShareholdersDto getJltfispFinanceAndShareholdersDto(Integer infoId);
	
	public void addShareholders(JltfispFinShareholder jltfispFinShareholder);

	public void deleteShareholders(Integer id);

	public void updateCoBase(JltfispCoBase jltfispCoBase2, Integer id);

	public void updateFinMaterial(JltfispFinMaterial jltfispFinMaterial,int id);

	
}
