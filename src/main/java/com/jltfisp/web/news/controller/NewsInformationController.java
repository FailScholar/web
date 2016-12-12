package com.jltfisp.web.news.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jltfisp.web.column.entity.JltfispColumn;
import com.jltfisp.web.column.service.ColumnService;
import com.jltfisp.web.news.entity.ColumnDto;
import com.jltfisp.web.news.entity.DictColumnDto;
import com.jltfisp.web.news.entity.NewsInformation;
import com.jltfisp.web.news.service.IDictColumnService;
import com.jltfisp.web.news.service.INewsInformationService;
import com.jltfisp.web.pager.entity.PagerModel;
/**
 * 咨讯中心Controller
 * @author cuihong.ge
 * 
 */
@Controller
public class NewsInformationController {
	@Autowired
	private INewsInformationService newsInformationSevice;
	@Autowired
	private ColumnService columnService;
	@Autowired
	private IDictColumnService deictColumnService;
	/**
     * 资讯中心栏目主页面
     * @return
     */
    @RequestMapping("/perm/news")
    public String news(HttpServletRequest request,Integer columnId){
    	//根据父栏目columnId查询子栏目信息
    	List<JltfispColumn> columnList=columnService.getColumnList(3);
        request.setAttribute("columnList", columnList);
        List<NewsInformation> datas=null;
        if(columnId !=null){
        	 request.setAttribute("columnId", columnId);
        	 //获取当前页的数据，且显示12条
             datas=newsInformationSevice.getNewsInformationPageList(0, 12,columnId);
        }else if(columnList !=null && columnList.size()>0){
        	 request.setAttribute("columnId", columnList.get(0).getId());
        	 //获取当前页的数据，且显示12条
             datas=newsInformationSevice.getNewsInformationPageList(0, 12,columnList.get(0).getId());
        }
        
        //获取当前子栏目下所有的数据总数
        int total =newsInformationSevice.getNewsInfoPageCount(columnList.get(0).getId());
        PagerModel pm = new PagerModel();
        pm.setDatas(datas);
        pm.setTotal(total);
        request.setAttribute("pm", pm);
        request.setAttribute("url", "perm/news");
        return "/website/news/news";
    }
    
    /**
     * 点击新闻资讯下面的其他二级栏目
     * @param request
     * @return
     */
    @RequestMapping("/perm/news/{columnId}")
    public String changeExpert(@PathVariable Integer columnId,HttpServletRequest request){
//     String columnId = request.getParameter("columnId");
     int rows=Integer.parseInt(request.getParameter("pager.offset"));
     //获取当前子栏目下所有的数据总数
//     int total =newsInformationSevice.getNewsInfoPageCount(Integer.parseInt(columnId));
     int total =newsInformationSevice.getNewsInfoPageCount(columnId);
     //获取当前页的数据，且显示12条
     List<NewsInformation>  datas=newsInformationSevice.getNewsInformationPageList(rows, 12,columnId);
     PagerModel pm = new PagerModel();
     pm.setDatas(datas);
     pm.setTotal(total);
     /*request.setAttribute("columnId", columnId);*/
     request.setAttribute("pm", pm);
     request.setAttribute("url", "perm/news");
     return "/website/news/newsContent";
    }
    

	/**
	 * 根据新闻内容Id获取新闻的具体内容 
	 * @param newsContentId 新闻id
	 * @return 具体的新闻内容
	 */
	@RequestMapping("/anon/getNewsDetail")
	public String getNewsDetail(HttpServletRequest request,Integer id){
		//每浏览一次新闻浏览量会改变
		 this.newsInformationSevice.addNewsInfoPv(id);
		ColumnDto columnDto=this.newsInformationSevice.getNewsInfoById(id);	
		if(columnDto !=null){
			DictColumnDto dictColumn=this.deictColumnService.SelectDictColumnDtoById(columnDto.getParentColumn());
			request.setAttribute("dictColumn", dictColumn);
		}
		request.setAttribute("columnDto", columnDto);
		return "/website/news/detail";
	}
	
}
