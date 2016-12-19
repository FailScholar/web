package com.jltfisp.web.cloud.dao;

import org.apache.ibatis.annotations.Update;

import com.jltfisp.base.basedao.BaseMapper;
import com.jltfisp.web.cloud.entity.Cloud;
/**
 * 数据访问接口
 */
public interface CloudMapper extends BaseMapper<Cloud>{    

	@Update("update jltfisp_cloud set pv=#{1} where id=#{0}")
	int updateCloudPv(Integer id,Integer pv);
}


