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
	public List<NewsInformation> getNewsInformationList(Integer columnId);
    /**
     * 根据新闻内容id或去具体的新闻内容
     * @param id
     * @return newsInformation
     */
	public ColumnDto getNewsInfoById(Integer id);
	/**
	 * 根据二级菜单栏的父节点Id获取二级菜单栏list
	 * @param parentId
	 * @return list<ColumnDto>
	 */
	public List<ColumnDto> getColumnDtoListByParentId(Integer parentId);

}
