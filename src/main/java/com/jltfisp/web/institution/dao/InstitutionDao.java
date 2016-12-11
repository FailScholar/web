package com.jltfisp.web.institution.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.jltfisp.base.basedao.BaseMapper;
import com.jltfisp.web.column.entity.JltfispColumn;
import com.jltfisp.web.institution.entity.JltfispInstitution;

public interface InstitutionDao extends BaseMapper<JltfispInstitution> {

	public List<JltfispColumn> getJltfispColumnList(@Param("parentColumn")Integer parentColumn);

	public List<JltfispInstitution> getInstitutionList(@Param("columnId")Integer columnId);

	public JltfispInstitution getInstitutionDetail(@Param("id")Integer id);

	public int getInstitutionPageCount(@Param("columnId")Integer columnId);

    public JltfispInstitution getInstitutionByUserId(@Param("userId")Integer userId); 

}
