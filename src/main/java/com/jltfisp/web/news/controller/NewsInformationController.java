package com.jltfisp.web.news.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jltfisp.web.news.entity.ColumnDto;
import com.jltfisp.web.news.entity.NewsInformation;
import com.jltfisp.web.news.service.INewsInformationService;

/**
 * 咨讯中心Controller
 * @author cuihong.ge
 * 
 */
@Controller
@RequestMapping("/anon")
public class NewsInformationController {
	@Autowired
	private INewsInformationService newsInformationSevice;
	/**
     * 资讯中心栏目主页面
     * @return
     */
    @RequestMapping("/news")
    public String news(HttpServletRequest request){
    	String type = request.getParameter("type");
    	request.setAttribute("type", type);
    	Integer parentId=380;
    	List<ColumnDto> columnDtoList=this.newsInformationSevice.getColumnDtoListByParentId(parentId);
    	request.setAttribute("columnDtoList", columnDtoList);
    	return "/website/news/news";
    }

	/**
	 * 根据一级栏目二级栏目类型获取新闻中心下面对应的新闻列表内容
	 * @param secondlevelType  二级栏目类型
	 * @return list
	 */
	@RequestMapping("/getNewsInformationList")
	public ModelAndView getNewsInformationList(Integer columnId){
		ModelAndView mv=new ModelAndView("/website/news/news_list");
		List<NewsInformation> newsInformationList=this.newsInformationSevice.getNewsInformationList(columnId);
		mv.addObject("newsInformationList", newsInformationList);
		return mv;
	}
	/**
	 * 根据新闻内容Id获取新闻的具体内容
	 * @param newsContentId 新闻id
	 * @return 具体的新闻内容
	 */
	@RequestMapping("/getNewsDetail")
	public String getNewsDetail(HttpServletRequest request,Integer id){
		ColumnDto columnDto=this.newsInformationSevice.getNewsInfoById(id);		
		request.setAttribute("columnDto", columnDto);
		return "/website/news/detail";
	}
	
}
