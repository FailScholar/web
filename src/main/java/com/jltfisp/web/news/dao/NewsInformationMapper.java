package com.jltfisp.web.news.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.jltfisp.base.basedao.BaseMapper;
import com.jltfisp.web.news.entity.ColumnDto;
import com.jltfisp.web.news.entity.NewsInformation;
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
	public List<NewsInformation> getNewsInformationList(@Param("columnId")Integer columnId);
	/**
	 * 根据二级菜单栏的父节点Id获取二级菜单栏list
	 * @param parentId
	 * @return list<ColumnDto>
	 */
	public List<ColumnDto> getColumnDtoListByParentId(@Param("parentColumn")Integer parentColumn);
	/**
	 * 根据新闻内容Id获取具体的新闻内容
	 * @param id 新闻内容的Id
	 * @return NewsInformation
	 */
	public ColumnDto getNewsInfoById(@Param("id")Integer id);

}
