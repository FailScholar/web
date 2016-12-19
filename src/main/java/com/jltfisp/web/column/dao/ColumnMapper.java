package com.jltfisp.web.column.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.jltfisp.base.basedao.BaseMapper;
import com.jltfisp.web.column.entity.JltfispColumn;

public interface ColumnMapper extends BaseMapper<JltfispColumn>{
	
	@Select("select * from jltfisp_column_manage where  parentColumn=#{0} and columnType=#{1}")
	JltfispColumn selectColumnOne(Integer parentColumnid,Integer columnType);
	
	@Select("select * from jltfisp_column_manage where  parentColumn=#{0}  and isdelete=1 order by columnNo")
	List<JltfispColumn> selectSubColumn(Integer parentColumnid);

	@Select("select * from jltfisp_column_manage where  id=#{id}")
	JltfispColumn getColumnById(Integer id);
}
