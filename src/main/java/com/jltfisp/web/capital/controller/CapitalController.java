package com.jltfisp.web.capital.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jltfisp.web.capital.entity.JltfispCapital;
import com.jltfisp.web.capital.service.CapitalService;
import com.jltfisp.web.column.entity.JltfispColumn;
import com.jltfisp.web.column.service.ColumnService;
import com.jltfisp.web.news.entity.DictColumnDto;
import com.jltfisp.web.news.service.IDictColumnService;
import com.jltfisp.web.pager.entity.PagerModel;

@Controller
public class CapitalController {
	
	@Autowired
    private CapitalService capitalService;
	
	@Autowired
    private ColumnService columnService;
	
	@Autowired
    private IDictColumnService dictColumnService;
	
   /**
    * 
    * @description 获取专项资金下二级菜单的list集合
    * @author chenyun
    * @date 2016年11月28日 下午4:01:24 
    * @param @param request
    * @param @return
    * @return String
    */ 
    @RequestMapping("/perm/capital")
    public String capital(HttpServletRequest request,Integer columnId){
    	List<JltfispColumn> columnList=this.capitalService.getJltfispColumnList(5);
    	request.setAttribute("columnId", columnId);
    	request.setAttribute("columnList", columnList);
        return "/website/capital/capital";
    }
    
    /**
     * 
     * @description 通过二级菜单的columnId获取二级菜单下的信息集合
     * @author chenyun
     * @date 2016年12月8日 下午2:28:04 
     * @param @param columnId
     * @param @param page
     * @param @return
     * @return ModelAndView
     */
    @RequestMapping("/perm/capital/{columnId}")
    public ModelAndView getCapitalInfoList(@PathVariable Integer columnId,HttpServletRequest request){
    	int rows=Integer.parseInt(request.getParameter("pager.offset"));
    	ModelAndView mv=new ModelAndView("/website/capital/capitalInfoList");
    	List<JltfispCapital> datas = this.capitalService.getCapitalList(columnId,rows);
    	int total=this.capitalService.getCapitalPageCount(columnId);
    	PagerModel pm = new PagerModel();
 	    pm.setDatas(datas);
 	    pm.setTotal(total);
 	    mv.addObject("columnId",columnId);
 	    mv.addObject("url","anon/capital");
 	    mv.addObject("pm",pm);
    	return mv;
    }
    
    /**
     * 
     * @description 打开一条专项资金的链接查看详细信息
     * @author chenyun
     * @date 2016年11月28日 下午4:02:11 
     * @param @param request
     * @param @param id
     * @param @return
     * @return String
     */
	@RequestMapping("/anon/getCapitalDetail")
	public String getCapitalDetail(HttpServletRequest request,Integer id){
		/**浏览记录加一**/
		this.capitalService.updateCapitalPv(id);
		/**根据id查询具体的信息**/
		JltfispCapital capitalInfoDetail=this.capitalService.getCapitalDetail(id);	
		JltfispColumn jltfispColumn  = this.columnService.getColumnById(capitalInfoDetail.getColumnId());
		DictColumnDto dictColumnDto  =this.dictColumnService.SelectDictColumnDtoById(jltfispColumn.getParentColumn());
		request.setAttribute("jltfispColumn", jltfispColumn);
		request.setAttribute("dictColumnDto", dictColumnDto);
		request.setAttribute("capitalInfoDetail", capitalInfoDetail);
		return "/website/capital/capitalInfoDetail";
	}

}
