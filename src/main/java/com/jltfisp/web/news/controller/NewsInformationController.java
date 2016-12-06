package com.jltfisp.web.news.controller;

import com.jltfisp.web.column.entity.JltfispColumn;
import com.jltfisp.web.column.service.ColumnService;
import com.jltfisp.web.news.entity.ColumnDto;
import com.jltfisp.web.news.entity.NewsInformation;
import com.jltfisp.web.news.service.INewsInformationService;
import com.jltfisp.web.pager.entity.PagerModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
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
	@Autowired
	private ColumnService columnService; 
	/**
     * 资讯中心栏目主页面
     * @return
     */
    @RequestMapping("/news")
    public String news(HttpServletRequest request){
    	//获取父栏目columnId
    	String columnId = request.getParameter("columnId");
    	String type = request.getParameter("type");
    	String isPage = request.getParameter("isPage");
    	
		String offset=request.getParameter("pager.offset");
    	int rows;
    	if(offset !=null){
    	rows=Integer.parseInt(request.getParameter("pager.offset"));
    	}else{
    	rows=0;
    	}
    	int total=0;
    	List<JltfispColumn> columnList;
    	List<NewsInformation> datas;
    	if(type=="" || type==null){
	        columnList=columnService.getColumnList(3);
	        request.setAttribute("columnList", columnList);
	        request.setAttribute("columnId", columnList.get(0).getId());
	        total =newsInformationSevice.getNewsInfoPageCount(columnList.get(0).getId());
	        datas=newsInformationSevice.getNewsInformationPageList(rows, 10,columnList.get(0).getId());
    	}else{
    		//根据子栏目columnId查询子栏目信息
        	JltfispColumn ChirldColumn=columnService.getColumnContext(Integer.parseInt(columnId));
        	//根据父栏目columnId查询子栏目信息
        	columnList=columnService.getColumnList(ChirldColumn.getParentColumn());
            request.setAttribute("columnList", columnList);
            request.setAttribute("columnId", columnId);
            //获取当前子栏目下所有的数据总数
            total =newsInformationSevice.getNewsInfoPageCount(Integer.parseInt(columnId));
            //获取当前页的数据，且显示10条
            datas=newsInformationSevice.getNewsInformationPageList(rows, 10,Integer.parseInt(columnId));
    	}
        PagerModel pm = new PagerModel();
        pm.setDatas(datas);
        pm.setTotal(total);
        request.setAttribute("pm", pm);
        request.setAttribute("url", "anon/news");
        if(type=="" || type==null){
            return "/website/news/news";
        }else{
            if(isPage == null){
           	   return "/website/news/newsContent";
            }else{
           	   return "/website/news/news";
            }
        }
    }

	/**
	 * 根据新闻内容Id获取新闻的具体内容
	 * @param newsContentId 新闻id
	 * @return 具体的新闻内容
	 */
	@RequestMapping("/getNewsDetail")
	public String getNewsDetail(HttpServletRequest request,Integer id){
		//每浏览一次新闻浏览量会改变
		 this.newsInformationSevice.addNewsInfoPv(id);
		ColumnDto columnDto=this.newsInformationSevice.getNewsInfoById(id);		
		request.setAttribute("columnDto", columnDto);
		return "/website/news/detail";
	}
	
}
