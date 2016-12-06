/*******************************************************************************
 * Copyright (c) 2016.12.2 by LiuFa.
 * Copyright © 2016 Shenzhen GTA Education Tech Ltd. All rights reserved
 ******************************************************************************/

package com.jltfisp.web.insurance.controller;

import com.github.pagehelper.PageInfo;
import com.jltfisp.web.column.entity.JltfispColumn;
import com.jltfisp.web.column.service.ColumnService;
import com.jltfisp.web.insurance.entity.JltfispInsurance;
import com.jltfisp.web.insurance.service.InsuranceService;
import org.apache.shiro.util.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

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
    public String insuranceListDetail(@PathVariable String columnId, int page, Model model){
        List<JltfispInsurance> list = insuranceService.getDetail(Integer.parseInt(columnId),page);
        PageInfo pageInfo = new PageInfo<>(list);
        model.addAttribute("pageInfo",pageInfo);
        model.addAttribute("delList",list);
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
