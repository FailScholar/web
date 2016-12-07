package com.jltfisp.web.loan.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.jltfisp.base.basedao.BaseMapper;
import com.jltfisp.web.loan.entity.JltfispPsMaterialInfo;
/**
 * 保费补贴申请材料数据访问层接口
 * @author cuihong.ge
 *
 */
public interface PsMaterialInfoMapper extends BaseMapper<JltfispPsMaterialInfo> {
    /**
     * 根据基本信息ID获取JltfispPsMaterialInfo
     * @param infoId 基本信息Id
     * @return
     */
	List<JltfispPsMaterialInfo> getJltfispPsMaterialInfoByInfoId(@Param("info_id")Integer infoId);

	
	@Select("SELECT * FROM jltfisp_ps_info WHERE id = #{id}")
	@Override
	JltfispPsMaterialInfo selectByPk(Integer id);
}
