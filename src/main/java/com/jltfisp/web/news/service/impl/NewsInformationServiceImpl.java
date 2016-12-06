package com.jltfisp.web.news.service.impl;

import com.jltfisp.base.service.impl.BaseServiceImpl;
import com.jltfisp.web.news.dao.NewsInformationMapper;
import com.jltfisp.web.news.entity.ColumnDto;
import com.jltfisp.web.news.entity.NewsInformation;
import com.jltfisp.web.news.service.INewsInformationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;
/**
 * 资讯中心业务处理层实现类
 * @author cuihong.ge
 *
 */
@Service
@Transactional
public class NewsInformationServiceImpl extends BaseServiceImpl<NewsInformation> implements INewsInformationService{

	@Autowired
	private NewsInformationMapper newsInformationMapper;
	@Override
	public List<NewsInformation> getNewsInformationPageList(
			int rows,int pageSize,Integer columnId) {
			HashMap map=new HashMap();
	    	map.put("rows", rows);
	    	map.put("pageSize", pageSize);
	    	map.put("columnId", columnId);
		List<NewsInformation> newsInformationList=this.newsInformationMapper.getNewsInformationList(map);
		return newsInformationList;
	}
	@Override
	public ColumnDto getNewsInfoById(Integer id) {
		
		return this.newsInformationMapper.getNewsInfoById(id);
	}
	
	@Override
	public void addNewsInfoPv(Integer id) {
		this.newsInformationMapper.updateNewsInfoPv(id);
		
	}
	@Override
	public int getNewsInfoPageCount(Integer columnId) {
		NewsInformation  jltfisnews = new NewsInformation();
		jltfisnews.setColumnId(columnId);
		return newsInformationMapper.selectCount(jltfisnews);
	}

}
