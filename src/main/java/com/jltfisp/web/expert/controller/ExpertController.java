/*******************************************************************************
 * Copyright (c) 2016.11.9 by 张舒西.
 * Copyright © 2016 Shenzhen GTA Education Tech Ltd. All rights reserved
 ******************************************************************************/

package com.jltfisp.web.expert.controller;

import java.io.IOException;
import java.io.Serializable;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.jltfisp.login.entity.JltfispUser;
import com.jltfisp.login.service.LoginService;
import com.jltfisp.redis.RedisService;
import com.jltfisp.util.FileUpDownUtils;
import com.jltfisp.util.UploadFile;
import com.jltfisp.util.WebUtil;
import com.jltfisp.web.column.entity.JltfispColumn;
import com.jltfisp.web.column.service.ColumnService;
import com.jltfisp.web.expert.entity.*;
import com.jltfisp.web.expert.service.ExpertService;
import com.jltfisp.web.expert.service.IFinExpertManageService;
import com.jltfisp.web.loan.entity.JltfispCoBaseDto;
import com.jltfisp.web.loan.entity.JltfispCoFile;
import com.jltfisp.web.pager.entity.PagerModel;

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
    
    @Autowired
    private LoginService loginService;
    
    @Autowired
    private IFinExpertManageService finExpertManageService;
    
    @Autowired
    private RedisService<Serializable, String> redisService;
    
    /**
     * 专家资源栏目主页面
     * @return
     */
    @RequestMapping("/expert")
    public String expertPage(HttpServletRequest request){
    	//获取父栏目columnId
    	String columnId = request.getParameter("columnId");
    	//根据父栏目columnId查询子栏目信息
    	List<JltfispColumn> columnList=columnService.getColumnList(7);
        request.setAttribute("columnList", columnList);
        request.setAttribute("columnId", columnList.get(0).getId());
        //获取当前子栏目下所有的数据总数
        int total =expertService.getExpertPageCount(columnList.get(0).getId());
        //获取当前页的数据，且显示12条
        List<JltfispExpert> datas=expertService.getExpertPageList(0, 12,columnList.get(0).getId());
        PagerModel pm = new PagerModel();
        pm.setDatas(datas);
        pm.setTotal(total);
        request.setAttribute("pm", pm);
        request.setAttribute("url", "anon/expert");
        return "/website/expert/expert";
    }
    
    /**
     * 
     * @param request
     * @return
     */
    @RequestMapping("/changeExpert")
    public String changeExpert(HttpServletRequest request){
     String columnId = request.getParameter("columnId");
     int rows=Integer.parseInt(request.getParameter("pager.offset"));
     //获取当前子栏目下所有的数据总数
     int total =expertService.getExpertPageCount(Integer.parseInt(columnId));
     //获取当前页的数据，且显示12条
     List<JltfispExpert> datas=expertService.getExpertPageList(rows, 12,Integer.parseInt(columnId));
     PagerModel pm = new PagerModel();
     pm.setDatas(datas);
     pm.setTotal(total);
     request.setAttribute("columnId", columnId);
     request.setAttribute("pm", pm);
     request.setAttribute("url", "anon/expert");
     return "/website/expert/expertContext";
    }
    
    /**
     * 进入专家资源列表页面
     * @param request
     * @return
     * @author 张舒西 2016年11月23日 下午12:53:56
     */
    @RequestMapping("/addExpertPage")
    public String addExpertPage(HttpServletRequest request){
    	//获取父栏目columnId
    	String columnId = request.getParameter("columnId");
    	
    	//从专家资源 字段名称管理表中获取表单元素的字段名
    	/*if(columnId != null && !"20".equals(columnId) && !"21".equals(columnId) && !"19".equals(columnId)){
    	    columnId = "19";
    	}*/
    	FinExpertManage finExpertManage = new FinExpertManage();
     if(redisService.getV("expert"+columnId) != null){
         finExpertManage = JSON.toJavaObject((JSON) JSON.parse(redisService.getV("expert"+columnId)),
                 FinExpertManage.class);
     }else{
         FinExpertManage params = new FinExpertManage();
         params.setColumnid(Integer.parseInt(columnId));
         params.setIstemplate(0);    
         finExpertManage = finExpertManageService.selectOneByExample(params);
         if(finExpertManage == null){
             params.setColumnid(null);
             params.setIstemplate(1);  
             finExpertManage = finExpertManageService.selectOneByExample(params);
         }
     }
    	request.setAttribute("finExpertManage", finExpertManage);
    	
    	JltfispColumn JltfispColumn=columnService.getColumnContext(Integer.parseInt(columnId));
    	request.setAttribute("columnName", JltfispColumn.getColumnName());
    	if(columnId.equals("19")){
    		request.setAttribute("columnId", columnId);
    		return "/website/expert/expertUser1";
    	}else if(columnId.equals("20")){
    		return "/website/expert/expertUser2";
    	}else if(columnId.equals("21")){
    		return "/website/expert/expertUser3";
    	}else{
    		request.setAttribute("columnId", columnId);
    		return "/website/expert/expertUser1";
    	}
    }
    
    
    /**
     * 添加专家资源
     * @param request
     * @return
     * @author 张舒西 2016年12月2日 下午12:53:56
     */
    @RequestMapping("/addExpert")
    @ResponseBody
    public int addExpert(HttpServletRequest request,JltfispExpertDto jltfispExpertDto){
    	JltfispExpert jltfispExpert=new JltfispExpert();
    	WebUtil.copyBean(jltfispExpertDto, jltfispExpert);
    	//获取当前用户登录信息
    	JltfispUser user=loginService.getCurrentUser();
    	jltfispExpert.setUserid(user.getId());
    	jltfispExpert.setAgencylogo("/resource/fileImage/"+jltfispExpert.getAgencylogo());
    	return expertService.saveExpert(jltfispExpert);
    }
    
    /**
     * 
     * @param request
     * @param jltfispExpertDto
     * @return
     */
    @RequestMapping("/addDoMain")
    @ResponseBody
    public void addDoMain(HttpServletRequest request,JltfispExpertDoMain jltfispExpertDoMain){
    	//获取当前用户登录信息
    	JltfispUser user=loginService.getCurrentUser();
    	JltfispExpertDoMain domain=jltfispExpertDoMain;
    	domain.setUserid(user.getId());
    	expertService.saveExpertDoMain(domain);
    }
    
    /**
     * 添加专家资源-上传图片
     * @param request
     * @return
     * @throws IOException 
     */
    @RequestMapping("/savePhoto")
    @ResponseBody
    public String saveCoFile(HttpServletRequest request) throws IOException {
    	String index = request.getParameter("index");
    	UploadFile uploadFile = FileUpDownUtils.getUploadFile2(request, "UpFile"+index);
    	String path=uploadFile.getFile().getName();
        return path;
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
