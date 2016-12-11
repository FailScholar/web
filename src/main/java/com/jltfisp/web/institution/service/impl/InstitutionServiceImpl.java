package com.jltfisp.web.institution.service.impl;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.github.pagehelper.PageHelper;
import com.jltfisp.base.basedao.BaseMapper;
import com.jltfisp.base.service.impl.BaseServiceImpl;
import com.jltfisp.web.column.entity.JltfispColumn;
import com.jltfisp.web.institution.dao.InstitutionDao;
import com.jltfisp.web.institution.entity.JltfispInstitution;
import com.jltfisp.web.institution.service.InstitutionService;

@Service
@Transactional
public class InstitutionServiceImpl extends BaseServiceImpl<JltfispInstitution> implements InstitutionService{
    
    private static String SAVE_SUCCESS = "保存成功";
    private static String SAVE_FAIL = "保存失败";
	
	@Autowired
 private InstitutionDao institutionDao;
	
	@Resource(name = "institutionDao")
 public void setMapper(BaseMapper<JltfispInstitution> mapper) {
     this.mapper = mapper;
     this.institutionDao = (InstitutionDao) mapper;
 }

	@Override
	public List<JltfispColumn> getJltfispColumnList(Integer parentColumn) {
		return this.institutionDao.getJltfispColumnList(parentColumn);
	}

	@Override
	public List<JltfispInstitution> getInstitutionList(Integer columnId, Integer page) {
	    PageHelper.startPage(page, 8);
	    return this.institutionDao.getInstitutionList(columnId);
	}

	@Override
	public JltfispInstitution getInstitutionDetail(Integer id) {
		return this.institutionDao.getInstitutionDetail(id);
	}

	@Override
	public int getInstitutionPageCount(Integer columnId) {
		return this.institutionDao.getInstitutionPageCount(columnId);
	}

    @Override
    public Integer saveInstitution(JltfispInstitution institution) {
        int row = institutionDao.insertRecord(institution);
        return row;
    }
    
    @Override
    public JltfispInstitution getInstitutionByUserId(Integer userId) {
        return institutionDao.getInstitutionByUserId(userId);
    }

}
