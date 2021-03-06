/*******************************************************************************
 * Copyright (c) 2016.11.9 by 张舒西.
 * Copyright © 2016 Shenzhen GTA Education Tech Ltd. All rights reserved
 ******************************************************************************/

package com.jltfisp.web.financing.controller;

import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.util.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jltfisp.base.entity.SysDict;
import com.jltfisp.login.entity.JltfispUser;
import com.jltfisp.login.service.LoginService;
import com.jltfisp.util.service.DictionaryService;
import com.jltfisp.web.column.entity.JltfispColumn;
import com.jltfisp.web.column.service.ColumnService;
import com.jltfisp.web.financing.entity.JltfispFinancing;
import com.jltfisp.web.financing.service.FinancingService;
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
    @Autowired
    private LoginService loginService;
    
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
    	List<JltfispFinancing> list = financingService.getFinancingList(columnId, rows/8+1,type);
    	
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
        jltfispFincing.setPv(jltfispFincing.getPv()==null?1:jltfispFincing.getPv()+1);
        //更新浏览量
        financingService.updateFinancingPv(jltfispFincing.getId(), jltfispFincing.getPv());
        
        request.setAttribute("fincing",jltfispFincing);
        JltfispColumn column = columnService.getColumnById(jltfispFincing.getColumnid());
		 request.setAttribute("column", column);
        return "/website/financing/financingDetail";

    }
}
