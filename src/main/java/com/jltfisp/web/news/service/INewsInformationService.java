package com.jltfisp.web.news.service;

import java.util.List;

import com.jltfisp.base.service.IBaseService;
import com.jltfisp.web.news.entity.ColumnDto;
import com.jltfisp.web.news.entity.NewsInformation;
	/**
	 * 新闻资讯业务处理层
	 * @author cuihong.ge
	 *
	 */
	public interface INewsInformationService extends IBaseService<NewsInformation> {
    /**
     * 获取资讯中心新闻内容列表
     * @param firstLevelType 一级栏目类型
     * @param secondlevelType 二级栏目类型
     * @return list
     */
	public List<NewsInformation> getNewsInformationPageList(int rows,int Pagesize,Integer columnId);
    /**
     * 根据新闻内容id或去具体的新闻内容
     * @param id
     * @return newsInformation
     */
	public ColumnDto getNewsInfoById(Integer id);
	/**
	 * 
	 * @param id 新闻Id
	 */
	public void addNewsInfoPv(Integer id);
	/**
	 * 获取新闻资讯二级栏目下对应的资讯总条目
	 * @param columnId 二级栏目id
	 * @return
	 */
	public int getNewsInfoPageCount(Integer columnId);

}
