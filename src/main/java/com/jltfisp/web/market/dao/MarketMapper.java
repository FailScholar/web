package com.jltfisp.web.market.dao;

import org.apache.ibatis.annotations.Update;

import com.jltfisp.base.basedao.BaseMapper;
import com.jltfisp.web.market.entity.Market;
/**
 * 数据访问接口
 */
public interface MarketMapper extends BaseMapper<Market>{    
	@Update("update jltfisp_market set pv=#{1} where id=#{0}")
	int updateMarketPv(Integer id,Integer pv);
}


