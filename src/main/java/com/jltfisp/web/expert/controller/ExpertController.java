/*******************************************************************************
 * Copyright (c) 2016.11.9 by 张舒西.
 * Copyright © 2016 Shenzhen GTA Education Tech Ltd. All rights reserved
 ******************************************************************************/

package com.jltfisp.web.expert.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.jltfisp.web.column.entity.JltfispColumn;
import com.jltfisp.web.column.service.ColumnService;
import com.jltfisp.web.expert.entity.*;
import com.jltfisp.web.expert.service.ExpertService;

/**
 * 
 * 专家资源控制层
 * @author 张舒西 2016年11月22日 上午10:22:15
 */
@Controller
@RequestMapping("/anon")
public class ExpertController {
    
    
    @Autowired
    private ExpertService expertService;
    
    @Autowired
    private ColumnService columnService;

    /**
     * 专家资源栏目主页面
     * @return
     */
    @RequestMapping("/expert")
    public String expert(HttpServletRequest request){
    	String columnId = request.getParameter("columnId");
    	if(columnId==null)
    	    columnId="50";
    	List<JltfispExpert> expertList=(List<JltfispExpert>) expertService.getExpertList(Integer.valueOf(columnId));
     List<JltfispColumn> columnList=columnService.getColumnList(384);
     request.setAttribute("columnList", columnList);
     request.setAttribute("columnId", columnList.get(0).getId());
    	request.setAttribute("expertList", expertList);
     return "/website/expert/expert";
    }
    
    /**
     * 切换专家资源
     * @return
     */
    @RequestMapping("/changeExpert")
    public String changeExpert(HttpServletRequest request){
     String columnId = request.getParameter("columnId");
     List<JltfispExpert> expertList=expertService.getExpertList(Integer.valueOf(columnId));
     //384为暂时测试用，实际为parentColumn值
     List<JltfispColumn> columnList=columnService.getColumnList(384);
     request.setAttribute("columnList", columnList);
     request.setAttribute("expertList", expertList);
     return "website/expert/expertContext";
    }

    /**
     * 专家资源详情
     * @param request
     * @return
     * @author 张舒西 2016年11月23日 下午12:53:56
     */
    @RequestMapping("/expertDetail")
    public String detail(HttpServletRequest request){
        String expertId = request.getParameter("expertId");
        //获取专家信息
        JltfispExpert jltfispExpert=expertService.getExpertContext(Integer.parseInt(expertId));
        //获取二级栏目信息
        JltfispColumn jltfispColumn=columnService.getColumnContext(jltfispExpert.getColumnid());
        //获取父栏目信息
        JltfispColumn parentJltfispColumn=columnService.getColumnContext(jltfispColumn.getParentColumn());
        request.setAttribute("jltfispColumn", jltfispColumn);
        request.setAttribute("parentJltfispColumn", parentJltfispColumn);
        request.setAttribute("jltfispExpert", jltfispExpert);
        return "/website/expert/expertDetail";
    }
}
