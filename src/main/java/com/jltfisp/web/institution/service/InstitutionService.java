package com.jltfisp.web.institution.service;

import com.jltfisp.base.service.IBaseService;
import com.jltfisp.web.column.entity.JltfispColumn;
import com.jltfisp.web.institution.entity.JltfispInstitution;

import java.util.List;

public interface InstitutionService extends IBaseService<JltfispInstitution> {

	public List<JltfispColumn> getJltfispColumnList(Integer parentColumn);

	public List<JltfispInstitution> getInstitutionList(Integer columnId);

	public JltfispInstitution getInstitutionDetail(Integer id);

	public int getInstitutionPageCount(Integer columnId);

	public List<JltfispInstitution> getInstitutionPageList(Integer rows, Integer pageSize,Integer columnId);
	
	/**
	 * 保存合作机构申请详情
	 * @param institution
	 * @return
	 * @author yingying.wang1 2016年12月3日 上午11:10:05
	 */
	public Integer saveInstitution(JltfispInstitution institution);

	   /**
	    * 根据用户id获取曾经申请过的合作机构信息
	    * @param userId
	    * @return
	    * @author yingying.wang1 2016年12月6日 上午10:50:51
	    */
    public JltfispInstitution getInstitutionByUserId(Integer userId);

}
