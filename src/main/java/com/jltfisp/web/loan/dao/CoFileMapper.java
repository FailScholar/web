package com.jltfisp.web.loan.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Param;

import com.jltfisp.base.basedao.BaseMapper;
import com.jltfisp.web.loan.entity.JltfispCoFile;

public interface CoFileMapper extends BaseMapper<JltfispCoFile>{
	/**
	 * @param 通过applyid查询JltfispCoFile信息
	 * @return
	 */
	@Select("SELECT count(*) FROM jltfisp_co_file WHERE apply_id = #{0} and file_type = #{1}")
	int getCoFileContext( int applyid, int filetype);
	
	/**
	 * @param 通过applyid查询JltfispCoFile信息
	 * @return
	 */
	@Select("SELECT * FROM jltfisp_co_file WHERE apply_id = #{applyid} order by file_type")
	List<JltfispCoFile> getCoFileContextList(int applyid);
	/**
	 * 通过applyid，filetype删除jltfisp_co_file信息
	 * @param applyid
	 * @param filetype
	 */
	@Delete("DELETE  FROM jltfisp_co_file WHERE apply_id = #{0} and file_type=#{1}")
	 void deleteCoFileContext(int applyid,int filetype);
}
