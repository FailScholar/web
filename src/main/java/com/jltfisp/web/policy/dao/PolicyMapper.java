package com.jltfisp.web.policy.dao;

import java.util.List;
import java.util.Map;

import com.jltfisp.base.basedao.BaseMapper;
import com.jltfisp.web.policy.entity.JltfispPolicy;
/**
 * 政策中心数据访问层接口
 * @author cuihong.ge
 *
 */
public interface PolicyMapper extends BaseMapper<JltfispPolicy> {
	/**
	 *获取政策中新分页信息
	 * @param map
	 * @return
	 */
	public List<JltfispPolicy> getPolicyPageList(Map map);
    /**
     * 修改政策中心的浏览量
     * @param id
     */
	public void updatePolicyInfo(Integer id);
}
