package com.jltfisp.web.column.dao;

import com.jltfisp.base.basedao.BaseMapper;
import com.jltfisp.web.column.entity.JltfispColumn;
import org.apache.ibatis.annotations.Select;

public interface ColumnMapper extends BaseMapper<JltfispColumn>{
	
	@Select("select * from jltfisp_column_manage where  parentColumn=#{0} and columnType=#{1}")
	JltfispColumn selectColumnOne(Integer parentColumnid,Integer columnType);
}
