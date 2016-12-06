package com.jltfisp.web.news.dao;

import com.jltfisp.base.basedao.BaseMapper;
import com.jltfisp.web.news.entity.ColumnDto;
import com.jltfisp.web.news.entity.NewsInformation;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;
/**
 * 资讯中心数据访问层
 * @author cuihong.ge
 *
 */
public interface NewsInformationMapper extends BaseMapper<NewsInformation> {
    /**
     * 根据子栏目类型获取子栏目下面的新闻内容
     * @param secondlevelType
     * @return list
     */
	public List<NewsInformation> getNewsInformationList(Map map);
	/**
	 * 根据新闻内容Id获取具体的新闻内容
	 * @param id 新闻内容的Id
	 * @return NewsInformation
	 */
	public ColumnDto getNewsInfoById(@Param("id")Integer id);
	/**
	 * 增加新闻的浏览量
	 * @param id 新闻id
	 */
	public void updateNewsInfoPv(@Param("id")Integer id);

}
