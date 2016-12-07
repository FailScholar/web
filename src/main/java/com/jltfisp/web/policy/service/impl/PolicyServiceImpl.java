package com.jltfisp.web.policy.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jltfisp.web.policy.dao.PolicyMapper;
import com.jltfisp.web.policy.entity.JltfispPolicy;
import com.jltfisp.web.policy.service.PolicyService;
/**
 * 政策中心业务处理实现层
 * @author cuihong.ge
 *
 */
@Service
@Transactional
public class PolicyServiceImpl implements PolicyService {
    @Autowired
    private PolicyMapper policyMapper;
	@Override
	public Integer getPolicyPageCount(Integer columnId) {
		JltfispPolicy jltfispPolicy =new JltfispPolicy();
		jltfispPolicy.setColumnId(columnId);
		return policyMapper.selectCount(jltfispPolicy);
	}

	@Override
	public List<JltfispPolicy> getPolicyPageList(int rows, int pageSize,
			Integer columnId) {
		HashMap map=new HashMap();
    	map.put("rows", rows);
    	map.put("pageSize", pageSize);
    	map.put("columnId", columnId);
    	System.out.println("rows="+map.get("rows"));
        return policyMapper.getPolicyPageList(map);
	}

	@Override
	public JltfispPolicy getPolicyContext(int id) {
		return policyMapper.selectByPrimaryKey(id);
	}

	@Override
	public void addPolicyInfoPv(Integer id) {
		policyMapper.updatePolicyInfo(id);
	}

}
