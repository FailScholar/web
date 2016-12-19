package com.jltfisp.web.loan.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jltfisp.web.loan.dao.CoBaseMapper;
import com.jltfisp.web.loan.dao.PsInfoMapper;
import com.jltfisp.web.loan.dao.PsMaterialInfoMapper;
import com.jltfisp.web.loan.dao.SubSidyMapper;
import com.jltfisp.web.loan.entity.JlfispPsBaseDto;
import com.jltfisp.web.loan.entity.JltfispCoBaseDto;
import com.jltfisp.web.loan.entity.JltfispPsInfo;
import com.jltfisp.web.loan.entity.JltfispPsMaterialInfo;
import com.jltfisp.web.loan.entity.JltfispSubsidyCoBaseDto;
import com.jltfisp.web.loan.service.ISubsidyService;
/**
 * 申请保费补贴业务处理实现层代码
 * @author cuihong.ge
 *
 */
@Service
@Transactional
public class SubsidyServiceImpl implements ISubsidyService {
    @Autowired
    private SubSidyMapper subSidMapper;
    @Autowired 
    private PsInfoMapper psInfoMapper;
    @Autowired
    private PsMaterialInfoMapper psMaterialInfoMapper;
    @Autowired
    private CoBaseMapper coBaseMapper;

	@Override
	public JlfispPsBaseDto getJlfispPsBaseDtoByUserId(Integer userId,Integer id) {
		JlfispPsBaseDto jlfispPsBaseDto=this.subSidMapper.getJlfispPsBaseDtoByUserId(userId,id);
		if(jlfispPsBaseDto !=null){
			//查询企业基本信息下面对应的保费补贴信息
			List<JltfispPsInfo> jltfispPsInfoList=this.subSidMapper.getJltfispPsInfoListByBaseId(jlfispPsBaseDto.getId());
			jlfispPsBaseDto.setJltfispPsInfoList(jltfispPsInfoList);
			return  jlfispPsBaseDto;
		}
			return null;
	}

	@Override
	public int saveJltfispPsInfo(List<JltfispPsInfo> jltfispPsInfoList) {
		
		return psInfoMapper.insertList(jltfispPsInfoList);
	}

	@Override
	public int saveJltfispPsMaterialInfo(
			JltfispPsMaterialInfo jltfispPsMaterialInfo) {
		//先查询数据库里面有没有对应的jltfispPsMaterialInfo
		List<JltfispPsMaterialInfo> ltfispPsMaterialInfos=psMaterialInfoMapper.getJltfispPsMaterialInfoByInfoId(jltfispPsMaterialInfo.getInfoId());
		if(ltfispPsMaterialInfos !=null && ltfispPsMaterialInfos.size()>0){
			psMaterialInfoMapper.delete(ltfispPsMaterialInfos.get(0));
		}
		return psMaterialInfoMapper.insert(jltfispPsMaterialInfo);
	}

	@Override
	public List<JltfispPsInfo> getJltfispPsInfoListByCoBaseId(int id) {
		
		return subSidMapper.getJltfispPsInfoListByBaseId(id);
	}

	@Override
	public void getJlfispPsBaseByUserIdAndName(Integer userId,
		JltfispSubsidyCoBaseDto jlfispSubsidyBaseDto ) {
		HashMap map=new HashMap();
    	map.put("userId", userId);
    	map.put("companyName", jlfispSubsidyBaseDto.getCompany());
        JltfispCoBaseDto jltfispCoBaseDto=subSidMapper.getJlfispPsBaseByUserIdAndName(map);
       if(jltfispCoBaseDto !=null){
    	 //先删除对应的保费补贴信息
    	 List<JltfispPsInfo> jltfispPsInfoList=this.subSidMapper.getJltfispPsInfoListByBaseId(jltfispCoBaseDto.getId());
         if(jltfispPsInfoList!=null && jltfispPsInfoList.size()>0){
        	 for(JltfispPsInfo sltfispPsInfo:jltfispPsInfoList){
        		 this.psInfoMapper.delete(sltfispPsInfo);
        	 }
         }
    	this.coBaseMapper.delete(jltfispCoBaseDto);	
    	}
	      
	}


	@Override
	public JltfispPsMaterialInfo getJltfispPsMaterialInfoByInfoId(int id) {
		List<JltfispPsMaterialInfo> ltfispPsMaterialInfos=psMaterialInfoMapper.getJltfispPsMaterialInfoByInfoId(id);
		 if(ltfispPsMaterialInfos !=null && ltfispPsMaterialInfos.size()>0){
			return ltfispPsMaterialInfos.get(0); 
		 }
		 return null;
	}
	@Override
	public JltfispPsMaterialInfo selectByPk(Integer id) {
		// TODO Auto-generated method stub
		return psMaterialInfoMapper.selectByPk(id);
	}

	@Override
	public JltfispCoBaseDto addOrUpdatejltfispCoBaseDto(Integer userId,
			JltfispCoBaseDto coBase) {
		JltfispCoBaseDto JltfispCoBaseDto=coBaseMapper.getCoBaseContextByUserIdAndType(coBase.getUserid(),coBase.getBusinesstype(),0);
		//如果数据库中已有该记录，则更新该记录
		if(JltfispCoBaseDto!=null){
	    	 //先删除对应的保费补贴信息
	    	 List<JltfispPsInfo> jltfispPsInfoList=this.subSidMapper.getJltfispPsInfoListByBaseId(JltfispCoBaseDto.getId());
	         if(jltfispPsInfoList!=null && jltfispPsInfoList.size()>0){
	        	 for(JltfispPsInfo sltfispPsInfo:jltfispPsInfoList){
	        		 this.psInfoMapper.delete(sltfispPsInfo);
	        	 }
	         }
		     coBase.setId(JltfispCoBaseDto.getId());
		     coBaseMapper.updateByPrimaryKey(coBase);
		     return	coBase;
		}else{
			 coBaseMapper.insert(coBase);
			 return  coBase;
		}
	}
}
