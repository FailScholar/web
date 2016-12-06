package com.jltfisp.web.institution.dao;

import com.jltfisp.base.basedao.BaseMapper;
import com.jltfisp.web.institution.entity.InstitutManage;
import org.apache.ibatis.annotations.Param;
/**
 * 数据访问接口
 */
public interface InstitutManageMapper extends BaseMapper<InstitutManage>{

    /**
     * 根据栏目 id 获取 合作机构申请表单的 字段名称
     * @param columnId
     * @return
     * @author yingying.wang1 2016年12月5日 下午2:22:10
     */
    InstitutManage selectByColumnId(@Param("columnId")Integer columnId);    
    
    

}


