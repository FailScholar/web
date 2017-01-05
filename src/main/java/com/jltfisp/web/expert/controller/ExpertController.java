/*******************************************************************************
 * Copyright (c) 2016.11.9 by 张舒西.
 * Copyright © 2016 Shenzhen GTA Education Tech Ltd. All rights reserved
 ******************************************************************************/

package com.jltfisp.web.expert.controller;

import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.io.Serializable;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.jltfisp.FileManager;
import com.jltfisp.login.entity.JltfispUser;
import com.jltfisp.login.service.LoginService;
import com.jltfisp.redis.RedisService;
import com.jltfisp.util.AjaxUtils;
import com.jltfisp.util.FileUpDownUtils;
import com.jltfisp.util.ImageUtils;
import com.jltfisp.util.UploadFile;
import com.jltfisp.util.WebUtil;
import com.jltfisp.web.column.entity.JltfispColumn;
import com.jltfisp.web.column.service.ColumnService;
import com.jltfisp.web.expert.entity.*;
import com.jltfisp.web.expert.service.ExpertService;
import com.jltfisp.web.loan.entity.BusinessApplayAudit;
import com.jltfisp.web.expert.service.IFinExpertManageService;
import com.jltfisp.web.loan.service.IBusinessApplayAuditService;
import com.jltfisp.web.pager.entity.PagerModel;
import com.jltfisp.web.user.service.UserService;

/**
 * 
 * 专家资源控制层
 * @author 张舒西 2016年11月22日 上午10:22:15
 */
@Controller
public class ExpertController {
    
    
    @Autowired
    private ExpertService expertService;
    
    @Autowired
    private ColumnService columnService;
    
    @Autowired
    private LoginService loginService;   

    @Autowired
    private IBusinessApplayAuditService businessApplayAuditService;

    @Autowired
    private IFinExpertManageService finExpertManageService;
    
    @Autowired
    private RedisService<Serializable, String> redisService;
    
    @Autowired
    private FileManager fileManager;

    
    /**
     * 专家资源栏目主页面
     * @return
     */
    @RequestMapping("/perm/expert")
    public String expertPage(HttpServletRequest request){
    	//获取父栏目columnId
    	String columnId = request.getParameter("columnId");
    	//获取isFrontPage值
    	String isFrontPage = request.getParameter("isFrontPage");
    	//根据父栏目columnId查询子栏目信息
    	List<JltfispColumn> columnList=columnService.getColumnList(7);
        request.setAttribute("columnList", columnList);
        //获取当前子栏目下所有的数据总数
        int total =expertService.getExpertPageCount(columnList.get(0).getId());
        //获取当前页的数据，且显示8条
        List<JltfispExpert> datas=expertService.getExpertPageList(0, 8,columnList.get(0).getId());
        PagerModel pm = new PagerModel();
        pm.setDatas(datas);
        pm.setTotal(total);
        request.setAttribute("pm", pm);
        request.setAttribute("url", "anon/expert");
        //代表从前台页面传过来的值
        if(null != isFrontPage){
          request.setAttribute("isFrontPage", "1");
          request.setAttribute("columnId",columnId);
        }else{
          request.setAttribute("columnId", columnList.get(0).getId());
        }
        return "/website/expert/expert";
    }
    
    /**
     * 
     * @param request
     * @return
     */
    @RequestMapping("/perm/expert/{columnId}")
    public String changeExpert(HttpServletRequest request,@PathVariable String columnId,Model model){
    	int rows=Integer.parseInt(request.getParameter("pager.offset"));
     //获取当前子栏目下所有的数据总数
     int total =expertService.getExpertPageCount(Integer.parseInt(columnId));
     //获取当前页的数据，且显示8条
     List<JltfispExpert> datas=expertService.getExpertPageList(rows,8,Integer.parseInt(columnId));
     PagerModel pm = new PagerModel();
     pm.setDatas(datas);
     pm.setTotal(total);
     model.addAttribute("columnId",columnId);
     model.addAttribute("pm",pm);
     model.addAttribute("url","anon/expert");
     return "/website/expert/expertContext";
    }
    
    /**
     * 进入专家资源须知页面
     * @param request
     * @return
     * @author 张舒西 2016年11月23日 下午12:53:56
     */
    @RequestMapping("/expert/expertGuide")
    public String expertGuide(HttpServletRequest request){
    	//获取父栏目columnId
    	String columnId = request.getParameter("columnId");
    	JltfispColumn JltfispColumn=columnService.getColumnContext(Integer.parseInt(columnId));
    	request.setAttribute("columnName", JltfispColumn.getColumnName());
    	request.setAttribute("columnId", columnId);
    	JltfispUser user=loginService.getCurrentUser();
    	//获取当前用户登录信息
    	if(user.getType()==2){//如果当前用户不是个人用户，则不让申请成为专家
    		request.setAttribute("applyname", JltfispColumn.getColumnName()+"申请");	
        	request.setAttribute("failMes", "对不起，只有个人用户才能申请"+JltfispColumn.getColumnName()+"!");
        	return "/website/expert/expertApplyfail";
    	}
    	int flag=businessApplayAuditService.checkApplyForExpert(user.getId());
    	if(flag==1){
    	request.setAttribute("applyname", "专家资源申请");
    	request.setAttribute("failMes", "对不起，你已经申请了专家资源！");
    	return "/website/expert/expertApplyfail";
    	}else{
    	    
    	  //从专家资源 字段名称管理表中获取表单元素的字段名
         /*if(columnId != null && !"20".equals(columnId) && !"21".equals(columnId) && !"19".equals(columnId)){
             columnId = "19";
         }*/
         FinExpertManage finExpertManage = new FinExpertManage();
         if(redisService.getV("FinExpertManage"+columnId) != null){
             finExpertManage = JSON.toJavaObject((JSON) JSON.parse(redisService.getV("FinExpertManage"+columnId)),
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
    	    
    	//获取专家信息
        JltfispExpert jltfispExpert=expertService.getExpertByUserIdAndColumnId(user.getId(),Integer.parseInt(columnId));
        request.setAttribute("jltfispExpert", jltfispExpert);
        return "/website/expert/expertGuide";
    	}
    }
    
    /**
     * 进入专家资源列表页面
     * @param request
     * @return
     * @author 张舒西 2016年11月23日 下午12:53:56
     */
    @RequestMapping("/anon/addExpertPage")
    public String addExpertPage(HttpServletRequest request){
    	//获取父栏目columnId
    	String columnId = request.getParameter("columnId");
    	
    	//从专家资源 字段名称管理表中获取表单元素的字段名
    	/*if(columnId != null && !"20".equals(columnId) && !"21".equals(columnId) && !"19".equals(columnId)){
    	    columnId = "19";
    	}*/
    	FinExpertManage finExpertManage = new FinExpertManage();
     if(redisService.getV("FinExpertManage"+columnId) != null){
         finExpertManage = JSON.toJavaObject((JSON) JSON.parse(redisService.getV("FinExpertManage"+columnId)),
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
    	request.setAttribute("columnId", columnId);
    	//start回显数据
    	JltfispUser user=loginService.getCurrentUser();
    	JltfispExpert jltfispExpert=expertService.getExpertByUserIdAndColumnId(user.getId(), Integer.parseInt(columnId));
    	request.setAttribute("jltfispExpert", jltfispExpert);
    	//stop回显数据   	
    	if(columnId.equals("20")){
    		return "/website/expert/expertUser2";
    	}else if(columnId.equals("21")){
    		return "/website/expert/expertUser3";
    	}else{
    		List<JltfispExpertDoMain> jltfispExpertDoMain=expertService.getExpertDoMainList(user.getId(),Integer.parseInt(columnId));
    		request.setAttribute("jltfispExpertDoMain", jltfispExpertDoMain);
    		return "/website/expert/expertUser1";
    	}
    }
    
    
    /**
     * 添加专家资源
     * @param request
     * @return
     * @author 张舒西 2016年12月2日 下午12:53:56
     */
    @RequestMapping("/anon/addExpert")
    @ResponseBody
    public int addExpert(HttpServletRequest request,JltfispExpertDto jltfispExpertDto){
    	JltfispExpert jltfispExpert=new JltfispExpert();
    	WebUtil.copyBean(jltfispExpertDto, jltfispExpert);
    	//获取当前用户登录信息
    	JltfispUser user=loginService.getCurrentUser();
    	jltfispExpert.setUserid(user.getId());
    	
    	//Start插入审核流程
    	BusinessApplayAudit expert=new BusinessApplayAudit();
    	expert.setUserId(user.getId());
    	expert.setSubmitDate(new Date());
    	//设定为申请状态
    	expert.setState(0);
    	expert.setParentType("3");
    	//设定applyType类型
    	expert.setType(String.valueOf(jltfispExpert.getColumnid()));
	 	businessApplayAuditService.insertRecord(expert);
    	//stop插入审核流程
	 	jltfispExpert.setCreateTime(new Date());
	 	int i=expertService.saveExpert(jltfispExpert);
	 	return i;
    }
    
    /**
     * 进入添加专家成功页面或失败页面
     * @param request
     * @param type 1代表成功0代表失败
     * @param columnId 栏目的ID
     * @return
     * @author 张舒西 2016年12月2日 下午12:53:56
     */
    @RequestMapping("/anon/successOrFailPage")
    public String addExpert(HttpServletRequest request,String type,String columnId)
    {   
		JltfispColumn JltfispColumn=columnService.getColumnContext(Integer.parseInt(columnId));
    	request.setAttribute("applyname", JltfispColumn.getColumnName());
    	  if(type.equals("1")){
    		return "/website/expert/expertApplysuccess";
    		}
    	else{
    		request.setAttribute("failMes", "对不起，你申请"+JltfispColumn.getColumnName()+"失败了！");
    	    return "/website/expert/expertApplyfail";
    	    }
    	}
    
    /**
     * 
     * @param request
     * @param jltfispExpertDto
     * @return
     */
    @RequestMapping("/anon/addDoMain")
    @ResponseBody
    public int  addDoMain(HttpServletRequest request,JltfispExpertDoMain jltfispExpertDoMain){
    	//获取当前用户登录信息
    	JltfispUser user=loginService.getCurrentUser();
    	JltfispExpertDoMain domain=jltfispExpertDoMain;
    	domain.setUserid(user.getId());
    	int i=expertService.saveExpertDoMain(domain);
    	return i;
    }
    
    /**
     * 添加专家资源-上传图片
     * @param request
     * @return
     * @throws IOException 
     */
    @RequestMapping("/anon/savePhoto")
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
    @RequestMapping("/anon/expertDetail")
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
    
    /**
     * 返回图片裁剪
     * @param request
     * @param response
     * @return
     */
    @RequestMapping("/anon/imageCrop")
    public String imageCrop(HttpServletRequest request, HttpServletResponse response) {
        String filePath = request.getParameter("filePath");
        int width = 300;
        try {
            width = Integer.parseInt(request.getParameter("width"));
        } catch (Exception e) {
        }
        int height = 300;
        try {
            height = Integer.parseInt(request.getParameter("height"));
        } catch (Exception e) {
        }
        request.setAttribute("filePath", filePath.trim());
        request.setAttribute("width", request.getParameter("width"));
        request.setAttribute("height", request.getParameter("height"));
        request.setAttribute("scale", height * 1.0 / width);
        return "/website/usercenter/crop/imageCrop";
    }
    
    /**
     * 保存图片
     * @param request
     * @param response
     * @return
     */
    @RequestMapping("/anon/uploadImage")
    @ResponseBody
    public String uploadImage(HttpServletRequest request, HttpServletResponse response,String index) throws Exception {
       // Map<String, Object> map = new HashMap<String, Object>();
        UploadFile uploadFile = FileUpDownUtils.getUploadFile(request, "UpFile"+index);
        String Path;
        double fileSize=uploadFile.getFileSize()/(1024*1024);
    	if(fileSize > 1){
    		Path="false";
    	}
        String fileName = uploadFile.getFileName();
        if (StringUtils.isNotBlank(fileName) && (fileName.endsWith(".jpg") || fileName.endsWith(".JPG"))) {
            byte[] fileData = FileUpDownUtils.getFileContent(uploadFile.getFile());
            String filePath = fileManager.saveImageFile(fileData, uploadFile.getFileName());
            //BufferedImage image = ImageUtils.readImage(uploadFile.getFile().getAbsolutePath());
            Path=filePath.trim();
        }else{
        	Path="false";
        }
        return Path;
    }
}
