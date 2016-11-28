/*******************************************************************************
 * Copyright (c) 2016.11.9 by 张舒西.
 * Copyright © 2016 Shenzhen GTA Education Tech Ltd. All rights reserved
 ******************************************************************************/

package com.jltfisp.web.financing.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jltfisp.util.service.DictionaryService;
import com.jltfisp.web.column.entity.JltfispColumn;
import com.jltfisp.web.column.service.ColumnService;
import com.jltfisp.web.expert.entity.JltfispExpert;
import com.jltfisp.web.financing.entity.JltfispFinancing;
import com.jltfisp.web.financing.service.FinancingService;

/**
 * 
 * 股权融资控制层
 * @author 张舒西 2016年11月22日 上午10:22:15
 */
@Controller
@RequestMapping("/anon")
public class FinancingController {
    
    
    @Autowired
    private FinancingService financingService;
    
    @Autowired
    private ColumnService columnService;
    
    @Autowired
    private DictionaryService dictionaryService;

    /**
     * 股权融资栏目主页面
     * @return
     */
    @RequestMapping("/financing")
    public String financing(HttpServletRequest request){
    	String columnId = request.getParameter("columnId");
    	
     if(columnId==null)
         columnId="54";
    	List<JltfispFinancing> financingList=financingService.getFinancingList(Integer.parseInt(columnId));
    	List<JltfispColumn> columnList=columnService.getColumnList(385);
    	request.setAttribute("columnId", columnId);
    	request.setAttribute("columnList", columnList);
    	request.setAttribute("FinancingList", financingList);
     return "/website/financing/financing";
    }
    
    /**
     * 股权融资切换二级页面
     * @return
     */
    @RequestMapping("/changeFinancing")
    public String changeFinancing(HttpServletRequest request){
     String columnId = request.getParameter("columnId");
     List<JltfispFinancing> financingList=financingService.getFinancingList(Integer.parseInt(columnId));
     //测试数据
     List<JltfispColumn> columnList=columnService.getColumnList(385);
     request.setAttribute("columnId", columnId);
     request.setAttribute("columnList", columnList);
     request.setAttribute("FinancingList", financingList);
     return "/website/financing/financingContext";
    }
    
    

    @RequestMapping("/financingDetail")
    public String financingDetail(HttpServletRequest request){
        String financingId = request.getParameter("financingId");
        //获取股权融资信息
        JltfispFinancing jltfispFincing=financingService.getFinancingContext(Integer.parseInt(financingId));
        //获取二级栏目信息
        JltfispColumn jltfispColumn=columnService.getColumnContext(jltfispFincing.getColumnid());
        //获取父栏目信息
        JltfispColumn parentJltfispColumn=columnService.getColumnContext(jltfispColumn.getParentColumn());
        request.setAttribute("jltfispColumn", jltfispColumn);
        request.setAttribute("parentJltfispColumn", parentJltfispColumn);
        request.setAttribute("jltfispFincing", jltfispFincing);
        return "/website/financing/financingDetail";

    }
}
