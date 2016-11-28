package com.jltfisp.web.news.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jltfisp.base.service.impl.BaseServiceImpl;
import com.jltfisp.web.news.dao.NewsInformationMapper;
import com.jltfisp.web.news.entity.ColumnDto;
import com.jltfisp.web.news.entity.NewsInformation;
import com.jltfisp.web.news.service.INewsInformationService;
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
	public List<NewsInformation> getNewsInformationList(
			Integer columnId) {
		List<NewsInformation> newsInformationList=this.newsInformationMapper.getNewsInformationList(columnId);
		return newsInformationList;
	}
	@Override
	public ColumnDto getNewsInfoById(Integer id) {
		
		return this.newsInformationMapper.getNewsInfoById(id);
	}
	@Override
	public List<ColumnDto> getColumnDtoListByParentId(Integer parentId) {
		
		return this.newsInformationMapper.getColumnDtoListByParentId(parentId);
	}

}
