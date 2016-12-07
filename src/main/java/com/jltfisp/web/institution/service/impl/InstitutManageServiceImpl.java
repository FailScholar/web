package com.jltfisp.web.institution.service.impl;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jltfisp.base.basedao.BaseMapper;
import com.jltfisp.base.service.impl.BaseServiceImpl;
import com.jltfisp.web.institution.dao.InstitutManageMapper;
import com.jltfisp.web.institution.entity.InstitutManage;
import com.jltfisp.web.institution.service.IInstitutManageService;

@Repository
public class InstitutManageServiceImpl extends BaseServiceImpl<InstitutManage>
        implements IInstitutManageService {
    @Autowired
    private InstitutManageMapper institutManageMapper;

    @Resource(name = "institutManageMapper")
    public void setMapper(BaseMapper<InstitutManage> mapper) {
        this.mapper = mapper;
        this.institutManageMapper = (InstitutManageMapper) mapper;
    }

    @Override
    public InstitutManage selectByColumnId(Integer columnId) {
        return institutManageMapper.selectByColumnId(columnId);
    }
}