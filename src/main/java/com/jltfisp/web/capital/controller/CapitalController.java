package com.jltfisp.web.capital.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageInfo;
import com.jltfisp.web.capital.entity.JltfispCapital;
import com.jltfisp.web.capital.service.CapitalService;
import com.jltfisp.web.column.entity.JltfispColumn;

@Controller
public class CapitalController {
	
	@Autowired
    private CapitalService capitalService;
	
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
    public String capital(HttpServletRequest request){
    	List<JltfispColumn> columnList=this.capitalService.getJltfispColumnList(5);
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
    public ModelAndView getCapitalInfoList(@PathVariable Integer columnId, Integer page){
    	ModelAndView mv=new ModelAndView("/website/capital/capitalInfoList");
    	List<JltfispCapital> captialList = this.capitalService.getCapitalList(columnId,page);
    	PageInfo pageInfo = new PageInfo<>(captialList);
    	mv.addObject("pageInfo",pageInfo);
    	mv.addObject("captialList", captialList);
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
		request.setAttribute("capitalInfoDetail", capitalInfoDetail);
		return "/website/capital/capitalInfoDetail";
	}

}