package com.jltfisp.web.institution.service;

import com.jltfisp.base.service.IBaseService;
import com.jltfisp.web.institution.entity.InstitutManage;

public interface IInstitutManageService extends IBaseService<InstitutManage>{

    /**
     * 根据栏目id获取 合作机构申请表单的 字段名称
     * @param columnId
     * @return
     * @author yingying.wang1 2016年12月5日 下午2:20:16
     */
    InstitutManage selectByColumnId(Integer columnId);
}