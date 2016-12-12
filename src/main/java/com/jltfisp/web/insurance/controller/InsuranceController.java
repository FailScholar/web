/*******************************************************************************
 * Copyright (c) 2016.12.2 by LiuFa.
 * Copyright © 2016 Shenzhen GTA Education Tech Ltd. All rights reserved
 ******************************************************************************/

package com.jltfisp.web.insurance.controller;

import com.github.pagehelper.PageInfo;
import com.jltfisp.web.cloud.entity.Cloud;
import com.jltfisp.web.column.entity.JltfispColumn;
import com.jltfisp.web.column.service.ColumnService;
import com.jltfisp.web.insurance.entity.JltfispInsurance;
import com.jltfisp.web.insurance.service.InsuranceService;
import com.jltfisp.web.pager.entity.PagerModel;

import org.apache.shiro.util.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by LiuFa on 2016/12/2.
 * com.jltfisp.web.insurance.controller
 * ROOT
 * 科技保险栏目木块
 */
@Controller
public class InsuranceController {

    @Autowired
    private ColumnService columnService;

    @Autowired
    private InsuranceService insuranceService;
    /**
     * 科技保险栏目主页面
     * @return
     */
    @RequestMapping("/perm/insurance")
    public String insurance(Model model){
        List<JltfispColumn> list = columnService.getColumnList(10);
        model.addAttribute("colList",list);
        return "/website/insurance/insurance";
    }

    /**
     * 每项具体列表详情
     * @param columnId
     * @param page
     * @param model
     * @return
     */
    @RequestMapping("/perm/insurance/{columnId}")
    public String insuranceListDetail(@PathVariable Integer columnId, HttpServletRequest request){
        
    	int rows=Integer.parseInt(request.getParameter("pager.offset")==null ? "0" :request.getParameter("pager.offset"));
    	List<JltfispInsurance> list = insuranceService.getInsuranceList(columnId, rows);
		int total = insuranceService.getInsuranceCount(columnId);
		PagerModel pm = new PagerModel();
    	pm.setDatas(list);
		pm.setTotal(total);
		request.setAttribute("pm",pm);
		request.setAttribute("url","/perm/insurance");
		request.setAttribute("columnid", columnId);
        return "/website/insurance/insuranceCol";
    }

    /**
     * @author LiuFa
     * @param id, model
     * @return java.lang.String
     * @description 查询单个新闻的详情
     */
    @RequestMapping("/anon/insurance/toDetail")
    public String toDetail(int id,String colName, Model model){
        JltfispInsurance insurance = insuranceService.getDetailById(id);
        model.addAttribute("insurance",insurance);
        model.addAttribute("colName", StringUtils.hasLength(colName) ? colName : "科技保险");
        return "/website/insurance/detail";
    }
}
