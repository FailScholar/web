package com.jltfisp.web.market.service;

import java.util.List;

import com.jltfisp.base.service.IBaseService;
import com.jltfisp.web.market.entity.Market;

public interface IMarketService extends IBaseService<Market>{
	
	List<Market> getMarketList(Integer columnid,int page);
	
	int getMarketCount(Integer columnid);
	/**
	 * 更新浏览量
	 * @param id
	 * @param pv
	 * @return
	 */
	int updateMarketPv(Integer id,Integer pv);
}