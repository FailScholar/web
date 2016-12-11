/*******************************************************************************
 * Copyright (c) 2016.11.9 by 张舒西.
 * Copyright © 2016 Shenzhen GTA Education Tech Ltd. All rights reserved
 ******************************************************************************/

package com.jltfisp.web.financing.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.util.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.github.pagehelper.PageInfo;
import com.jltfisp.base.entity.SysDict;
import com.jltfisp.util.service.DictionaryService;
import com.jltfisp.web.column.entity.JltfispColumn;
import com.jltfisp.web.column.service.ColumnService;
import com.jltfisp.web.financing.entity.JltfispFinancing;
import com.jltfisp.web.financing.service.FinancingService;
import com.jltfisp.web.insurance.entity.JltfispInsurance;
import com.jltfisp.web.pager.entity.PagerModel;

/**
 * 
 * 股权融资控制层
 * @author 张舒西 2016年11月22日 上午10:22:15
 */
@Controller
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
    @RequestMapping("/perm/financing")
    public String financing(HttpServletRequest request){
    	List<JltfispColumn> list = columnService.getColumnList(8);
		 request.setAttribute("colList",list);
		 List<SysDict> dictList = dictionaryService.getDictListByType(1004);
		 request.setAttribute("dictList", dictList);
     return "/website/financing/financing";
    }
    
    @RequestMapping("/perm/financing/{columnId}")
    public String financingDetail(HttpServletRequest request,@PathVariable Integer columnId,Integer type){
    	int rows=Integer.parseInt(request.getParameter("pager.offset"));
    	int total = financingService.getFinancingCount(columnId, type);
    	
    	List<JltfispFinancing> list = financingService.getFinancingList(columnId, rows,type);
    	
    	PagerModel pm = new PagerModel();
    	pm.setDatas(list);
    	 pm.setTotal(total);
    	 request.setAttribute("pm",pm);
    	 request.setAttribute("url","/perm/financing");
    	 request.setAttribute("columnid", columnId);
     return "/website/financing/financingContext";
    }
    

    @RequestMapping("/anon/financing/detail")
    public String financingDetail(HttpServletRequest request,int id,String colName){
        //获取股权融资信息
        JltfispFinancing jltfispFincing=financingService.getFinancingContext(id);
        request.setAttribute("fincing",jltfispFincing);
        request.setAttribute("colName", StringUtils.hasLength(colName) ? colName : "科技保险");
        return "/website/financing/financingDetail";

    }
}
