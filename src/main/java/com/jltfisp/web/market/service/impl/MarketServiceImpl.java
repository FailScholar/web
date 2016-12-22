package com.jltfisp.web.market.service.impl;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fasterxml.jackson.annotation.JsonTypeInfo.Id;
import com.github.pagehelper.PageHelper;
import com.jltfisp.base.basedao.BaseMapper;
import com.jltfisp.base.service.impl.BaseServiceImpl;
import com.jltfisp.web.market.dao.MarketMapper;
import com.jltfisp.web.market.entity.Market;
import com.jltfisp.web.market.service.IMarketService;

@Repository
public class MarketServiceImpl extends BaseServiceImpl<Market> implements IMarketService {
	@Autowired
	private MarketMapper  marketMapper;
	@Resource(name="marketMapper")
	public void setMapper(BaseMapper<Market> mapper) {
		this.mapper = mapper;
		this.marketMapper=(MarketMapper)mapper;
	}
	@Override
	public List<Market> getMarketList(Integer columnid, int page) {
		Market market = new Market();
		market.setColumnId(columnid);
		PageHelper.startPage(page, 8);
		PageHelper.orderBy("publish_time desc");
		return marketMapper.select(market);
	}
	@Override
	public int getMarketCount(Integer columnid) {
		Market market = new Market();
		market.setColumnId(columnid);
		return marketMapper.selectCount(market);
	}
	@Override
	public int updateMarketPv(Integer id, Integer pv) {
		// TODO Auto-generated method stub
		return marketMapper.updateMarketPv(id, pv);
	}
}