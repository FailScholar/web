/*******************************************************************************
 * Copyright (c) 2016.11.9 by 张舒西.
 * Copyright © 2016 Shenzhen GTA Education Tech Ltd. All rights reserved
 ******************************************************************************/

package com.jltfisp.web.area.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.jltfisp.web.area.entity.*;
import com.jltfisp.web.area.service.AreaService;

/**
 * 
 * 省区县控制层
 * @author 张舒西 2016年11月22日 上午10:22:15
 */
@Controller
@RequestMapping("/anon")
public class AreaController {
    
    
    @Autowired
    private AreaService areaService;

    /**
     * 获取下级市、区县
     * @return
     */
    @RequestMapping("/area")
    @ResponseBody
    public List<JltfispArea> expert(HttpServletRequest request){
    	String areaId = request.getParameter("areaId");
    	String type = request.getParameter("type");
    	if(areaId==null || "".equals(areaId.trim())){
    		areaId="0";
    		}
       List<JltfispArea> areaList=null;
       if("1".equals(type)){
       areaList=areaService.getAreaAllList(Integer.valueOf(areaId));
       }else{
       areaList=areaService.getAreaList(Integer.valueOf(areaId)); 
       }
     return areaList;
    }
    
    /**
     * 获取省地县市全名称
     * @return
     */
    @RequestMapping("/queryCityName")
    @ResponseBody
    public String queryCityName(HttpServletRequest request){
    	String officeProv = request.getParameter("officeProv");
    	String officeCity = request.getParameter("officeCity");
    	String officeArea = request.getParameter("officeArea");
    	String officeProvName = null;
    	String officeCityName = null;
    	String officeAreaName = null;
    	if(null!=officeProv && !"".endsWith(officeProv)){
    	JltfispArea JltfispArea1=areaService.getAreaContext(Integer.parseInt(officeProv));
    	officeProvName=JltfispArea1.getName();
    	}
    	if(null!=officeCity && !"".endsWith(officeCity)){
    	JltfispArea JltfispArea2=areaService.getAreaContext(Integer.parseInt(officeCity));
    	officeCityName=JltfispArea2.getName();
    	}
    	if(null!=officeArea && !"".endsWith(officeArea) && !"0".equals(officeArea)){
    	JltfispArea JltfispArea3=areaService.getAreaContext(Integer.parseInt(officeArea));
    	officeAreaName=JltfispArea3.getName();
    	}else{
    	officeAreaName="";
    	}
     return officeProvName+officeCityName+officeAreaName;
    }
    
   
}
