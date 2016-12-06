/*******************************************************************************
 * Copyright (c) 2016.11.9 by LiuFa.
 * Copyright © 2016 Shenzhen GTA Education Tech Ltd. All rights reserved
 ******************************************************************************/

package com.jltfisp.web.anon;

import com.alibaba.fastjson.JSON;
import com.jltfisp.lucene.service.LuceneService;
import com.jltfisp.sys.session.statistics.service.StatisticsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by LiuFa on 2016/11/9.
 * com.jltfisp.web.anon
 * ROOT
 * 系统匿名访问Controller
 */
@Controller
@RequestMapping("/anon")
public class AnonController {

    @Autowired
    private StatisticsService statisticsService;

    /**
     * 贷款服务栏目主页面
     * @return
     */
    @RequestMapping("/loan")
    public String loan(){
        return "/website/loan/loan";
    }


    /**
     * 资本市场栏目主页面
     * @return
     */
    @RequestMapping("/market")
    public String market(){
        return "/website/market/market";
    }


    /**
     * 云课堂栏目主页面
     * @return
     */
    @RequestMapping("/cloud")
    public String cloud(){
        return "/website/cloud/cloud";
    }
    
    @RequestMapping("/detail")
    public String detail(){
        return "/website/news/detail";
    }

    /**
     * @author LiuFa
     * @return boolean
     * @description 统计首页点击量
     */
    @RequestMapping("/statisticsPV")
    @ResponseBody
    public boolean statisticsPV(){
        statisticsService.statisticsPV();
        return true;
    }

    /**
     * @author LiuFa
     * @return boolean
     * @description 获取访客数
     */
    @RequestMapping("/visitorsCount")
    @ResponseBody
    public String visitorsCount(Model model){
        model.addAttribute("count",statisticsService.visitorsCount());
        return JSON.toJSONString(model);
    }


    /**
     * @author LiuFa
     * @param to, model
     * @return java.lang.String
     * @description 关于我们
     */
    @RequestMapping("/about")
    public String about(int to, Model model){
        model.addAttribute("to",to);
        return "/website/about/about";
    }

    /**
     * @author LiuFa
     * @description  跳转到未授权页面
     */
    @RequestMapping("/noPermissions")
    public String noPermissions(){
        return "/website/sys/noPermissions";
    }

    /**
     * @author LiuFa
     * @description 跳转到系统错误页面
     */
    @RequestMapping("/error")
    public String error(){
        return "/website/sys/error";
    }


    /**
     * @author LiuFa
     * @description 跳转到404ＮＯＴＦＯＵＮＤ页面
     */
    @RequestMapping("/notFound")
    public String notFound(){
        return "/website/sys/notFound";
    }

    @Autowired
    private LuceneService luceneService;
    @RequestMapping("/test")
    @ResponseBody
    public String test(){
        luceneService.buildIndex();
        return "/website/sys/notFound";
    }
}
