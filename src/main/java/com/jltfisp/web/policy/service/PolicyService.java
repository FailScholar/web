package com.jltfisp.web.policy.service;

import com.jltfisp.web.policy.entity.JltfispPolicy;

import java.util.List;

/**
 * 政策中心业务处理层
 * @author cuihong.ge
 *
 */
public interface PolicyService {
    /**
     * 获取政策中心总条数信息
     * @param columnId 栏目id
     * @return
     */
	public Integer getPolicyPageCount(Integer columnId);
    /**
     * 获取政策中心内容分页信息
     * @param rows
     * @param pageSize
     * @param columnId
     * @return
     */
	public List<JltfispPolicy> getPolicyPageList(int rows, int pageSize, Integer columnId);
	/**
	 * 获取政策中心内容詳情
	 * @param id
	 * @return
	 */
	public JltfispPolicy getPolicyContext(int id);
	/**
	 * 
	 * @param id 政策Id
	 */
	public void addPolicyInfoPv(Integer id);
}
