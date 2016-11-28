/*******************************************************************************
 * Copyright (c) 2016.11.9 by LiuFa.
 * Copyright © 2016 Shenzhen GTA Education Tech Ltd. All rights reserved
 ******************************************************************************/

package com.jltfisp.web.anon;

import com.alibaba.fastjson.JSON;
import com.jltfisp.redis.RedisService;
import com.jltfisp.sys.session.statistics.service.StatisticsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;

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
     * 合作机构栏目主页面
     * @return
     */
    @RequestMapping("/institution")
    public String institution(HttpServletRequest request){
    	
    	String type = request.getParameter("type");
    	if(type==null) 
    		type="1";
    	request.setAttribute("type", type);
        return "/website/institution/institution";
    }
    
    @RequestMapping("/institutionDetail")
    public String institutionDetail(HttpServletRequest request){
        return "/website/institution/institutionDetail";
    }
    /**
     * 政策中心栏目主页面
     * @return
     */
    @RequestMapping("/policy")
    public String policy(){
        return "/website/policy/policy";
    }

    /**
     * 专项资金栏目主页面
     * @return
     */
    @RequestMapping("/capital")
    public String capital(){
        return "/website/capital/capital";
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
     * 科技保险栏目主页面
     * @return
     */
    @RequestMapping("/insurance")
    public String insurance(){
        return "/website/insurance/insurance";
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


    @Autowired
    private RedisService redisService;
    @RequestMapping("/test")
    @ResponseBody
    public String test() throws InterruptedException {
        redisService.pushMessage("chat",new Date());
        return "success";
    }

    @RequestMapping("/sse")
    public String sse(){
        return "/website/sse";
    }

    @RequestMapping("/push")
    @ResponseBody
    public String push(){
        try {
            Thread.sleep(5000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        return "data:"+System.currentTimeMillis()+"\n\n";
    }
}
