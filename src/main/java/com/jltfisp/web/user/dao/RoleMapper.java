package com.jltfisp.web.user.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.jltfisp.base.basedao.BaseMapper;
import com.jltfisp.web.user.entity.Role;
/**
 * 数据访问接口
 */
public interface RoleMapper extends BaseMapper<Role>{    

	@Select("select columnName from jltfisp_column_manage where parentColumn=#{0}")
	List<String> getColumnList(Integer parentid);
}


