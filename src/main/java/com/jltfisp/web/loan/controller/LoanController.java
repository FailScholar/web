/*******************************************************************************
 * Copyright (c) 2016.11.14 by LiuFa.
 * Copyright © 2016 Shenzhen GTA Education Tech Ltd. All rights reserved
 ******************************************************************************/

package com.jltfisp.web.loan.controller;

import java.io.IOException;
import java.io.Serializable;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.jltfisp.FileManager;
import com.jltfisp.base.entity.SysDict;
import com.jltfisp.login.entity.JltfispUser;
import com.jltfisp.login.service.LoginService;
import com.jltfisp.redis.RedisService;
import com.jltfisp.util.FileUpDownUtils;
import com.jltfisp.util.UploadFile;
import com.jltfisp.util.WebUtil;
import com.jltfisp.util.service.DictionaryService;
import com.jltfisp.web.area.service.AreaService;
import com.jltfisp.web.loan.entity.*;
import com.jltfisp.web.loan.service.IBusinessApplayAuditService;
import com.jltfisp.web.loan.service.ILoanManageOtherService;
import com.jltfisp.web.loan.service.LoanService;
import com.jltfisp.web.news.entity.DictColumnDto;

import org.springframework.ui.Model;

import java.util.*;


/**
 * Created by 张舒西 on 2016/11/14.
 * com.jltfisp.web.loan.controller
 * ROOT
 */
@Controller
@RequestMapping({"/anon/loan","/loan"})
public class LoanController {
	
	
    @Autowired
    private LoanService loanService;
    
    @Autowired
    private AreaService areaService;
    
    @Autowired
    private LoginService loginService;
    
    @Autowired
    private IBusinessApplayAuditService businessApplayAuditService;
    
    @Autowired
    private ILoanManageOtherService loanManageOtherService;
    
    @Autowired
    private DictionaryService dictionaryService;
    
    @Autowired
    private RedisService<Serializable, String> redisService;
    
    @Autowired
    private FileManager fileManager;

    /**
     * 贷款服务栏目主页面
     * @return
     */
    @RequestMapping("")
    public String loan(Model model){
        ArrayList<Map> list = new ArrayList<>();
        List<SysDict> dicList = dictionaryService.getDictListByType(1002);
        for (SysDict sysDict : dicList) {
            HashMap<String,Object> map = new HashMap<>();
            map.put("name",sysDict.getValue());
            map.put("code",sysDict.getCode());
            map.put("id",sysDict.getId());
            /*LoanManageOther params = new LoanManageOther();
            params.setType(sysDict.getId());
            LoanManageOther loanformManage = loanManageOtherService.selectOneByExample(params);
            map.put("loanGuide",null != loanformManage ? loanformManage.getLoanGuide() : "");
            map.put("applyGuide",null != loanformManage ?loanformManage.getApplyGuide() : "");*/
          //获取申请表单 申请须知及业务说明
            LoanManageOther loanformManage = new LoanManageOther();
            if(redisService.getV("LoanformManage"+sysDict.getId()) != null){
                loanformManage = JSON.toJavaObject((JSON) JSON.parse(redisService.getV("LoanformManage"+sysDict.getId())),
                        LoanManageOther.class);
            }else{
                LoanManageOther params = new LoanManageOther();
                params.setType(sysDict.getId());
                params.setIstemplate(0);
                loanformManage = loanManageOtherService.selectOneByExample(params);
                if(loanformManage == null){
                    params = new LoanManageOther();
                    params.setIstemplate(1);
                    loanformManage = loanManageOtherService.selectOneByExample(params);
                }
                
            }
            map.put("loanGuide",loanformManage.getLoanGuide());
            map.put("applyGuide",loanformManage.getApplyGuide());
            list.add(map);
        }
        model.addAttribute("list",list);
        return "/website/loan/loan";
    }


	@RequestMapping("/onlineApply")
    public String guideApply(HttpServletRequest request) {
	 String applytype = request.getParameter("applytype");
	 DictColumnDto dto = loanService.getAppName(applytype);
     request.setAttribute("applyname", dto.getValue());
     request.setAttribute("applytype", applytype);
     
     //获取当前用户登录信息
     JltfispUser user=loginService.getCurrentUser();
     //获取当前用户登录信息
     if(user.getType()==1){//如果当前用户不是企业用户，则不让申请贷款服务
         request.setAttribute("applyname", "贷款服务申请"); 
         request.setAttribute("failMes", "对不起，只有企业用户才能申请贷款服务！");
         return "/website/loan/loanapply/loanApplyfail";
     }
     int flag=0;
     //科技履约贷款申请、科技小巨人贷款申请、高新技术贷款申请、科技微贷通贷款申请则判断这四类是否已经存在已提交未审核的记录
     if(applytype.equals("1") || applytype.equals("2") || applytype.equals("3") || applytype.equals("4")){
    	 flag=businessApplayAuditService.checkApplyFour(user.getId());
     }else{ //如果申请不是科技履约贷款申请、科技小巨人贷款申请、高新技术贷款申请、科技微贷通贷款申请则判断该贷款申请是否已经申请
    	 flag=businessApplayAuditService.checkApplyOne(user.getId(),applytype);
     }
     if(flag==1){
      request.setAttribute("failMes", "对不起，您已经申请了贷款服务！");
      return "/website/loan/loanapply/loanApplyfail";
     }else{
         //获取申请表单 申请须知
         LoanManageOther loanformManage = new LoanManageOther();
         SysDict sysDict = dictionaryService.getValueByTypeCode(1002, applytype);
         if(redisService.getV("LoanformManage"+sysDict.getId()) != null){
             loanformManage = JSON.toJavaObject((JSON) JSON.parse(redisService.getV("LoanformManage"+sysDict.getId())),
                     LoanManageOther.class);
         }else{
             LoanManageOther params = new LoanManageOther();
             params.setType(sysDict.getId());
             params.setIstemplate(0);
             loanformManage = loanManageOtherService.selectOneByExample(params);
             if(loanformManage == null){
                 params = new LoanManageOther();
                 params.setIstemplate(1);
                 loanformManage = loanManageOtherService.selectOneByExample(params);
             }
             
         }
         request.setAttribute("loanformManage", loanformManage);
         return "/website/loan/loanapply/coGuideApply";
      }
    }
	
	
	/**
	 * 点击贷款服务页面中的申请须知，则跳转到贷款服务须知页面
	 * @param request
	 * @return
	 */
	@RequestMapping("/guideApply2")
    public String guideApply2(HttpServletRequest request) {
	    String applytype = request.getParameter("applytype");
	    DictColumnDto dto = loanService.getAppName(applytype);
	    request.setAttribute("applyname", dto.getValue());
        request.setAttribute("applytype", applytype);
        //获取申请表单 申请须知
        LoanManageOther loanformManage = new LoanManageOther();
        SysDict sysDict = dictionaryService.getValueByTypeCode(1002, applytype);
        if(redisService.getV("LoanformManage"+sysDict.getId()) != null){
            loanformManage = JSON.toJavaObject((JSON) JSON.parse(redisService.getV("LoanformManage"+sysDict.getId())),
                    LoanManageOther.class);
        }else{
            LoanManageOther params = new LoanManageOther();
            params.setType(sysDict.getId());
            params.setIstemplate(0);
            loanformManage = loanManageOtherService.selectOneByExample(params);
            if(loanformManage == null){
                params = new LoanManageOther();
                params.setIstemplate(1);
                loanformManage = loanManageOtherService.selectOneByExample(params);
            }
            
        }
         request.setAttribute("loanformManage", loanformManage);
         return "/website/loan/loanapply/coGuideApply1";
      }
    
	
    @RequestMapping("/onlineApplyPage")
    public String onlineApply(HttpServletRequest request) {
    	String applytype = request.getParameter("applytype");
    	DictColumnDto dto = loanService.getAppName(applytype);
        request.setAttribute("applyname", dto.getValue());
    	request.setAttribute("applytype", applytype);
    	//获取当前用户登录信息
    	JltfispUser user=loginService.getCurrentUser();
    	JltfispCoAll coAll=loanService.getApplyALL(user.getId(),Integer.parseInt(applytype),3);
    	List<SysDict> dicList = dictionaryService.getDictListByType(1004);
    	
    	//获取申请表单 字段名称
        LoanManageOther loanformManage = new LoanManageOther();
        SysDict sysDict = dictionaryService.getValueByTypeCode(1002, applytype);
        if(redisService.getV("LoanformManage"+sysDict.getId()) != null){
            loanformManage = JSON.toJavaObject((JSON) JSON.parse(redisService.getV("LoanformManage"+sysDict.getId())),
                    LoanManageOther.class);
        }else{
            LoanManageOther params = new LoanManageOther();
            params.setType(sysDict.getId());
            params.setIstemplate(0);
            loanformManage = loanManageOtherService.selectOneByExample(params);
            if(loanformManage == null){
                params = new LoanManageOther();
                params.setIstemplate(1);
                loanformManage = loanManageOtherService.selectOneByExample(params);
            }
            
        }
        String formlabelJson = loanformManage.getFormLabelJson();
        FormLabel formLabel = JSON.toJavaObject((JSON) JSON.parse(formlabelJson),
                FormLabel.class);
        request.setAttribute("loanformManage", formLabel);
    	
    	request.setAttribute("coAll", coAll);
    	request.setAttribute("user", user);
    	request.setAttribute("dicList", dicList);
        return "/website/loan/loanapply/onlineApply";
    }
    
    /**
     * 科技履约贷款申请填写企业基本信息-企业基本信息
     * @param request
     * @param jltfispCoBase
     * @return
     */
    @RequestMapping("/saveCoBase")
    @ResponseBody
    public int saveCoBase(HttpServletRequest request,JltfispCoBase jltfispCoBase) {
    	JltfispCoBaseDto jltfispCoBaseDto=new JltfispCoBaseDto();
    	WebUtil.copyBean(jltfispCoBase, jltfispCoBaseDto);
    	if("".equals(jltfispCoBase.getOneStock())){
    		jltfispCoBaseDto.setOneStock(null);
    	}
    	if("".equals(jltfispCoBase.getTwoStock())){
    		jltfispCoBaseDto.setTwoStock(null);
    	}
    	if("".equals(jltfispCoBase.getThreeStock())){
    		jltfispCoBaseDto.setThreeStock(null);
    	}
    	//获取当前用户登录信息
    	JltfispUser user=loginService.getCurrentUser();
    	//通过USERID获取企业基本信息
    	jltfispCoBaseDto.setBusinesstype(jltfispCoBase.getBusinesstype()); //设置申请类型
    	jltfispCoBaseDto.setUserid(user.getId());
    	jltfispCoBaseDto.setCreateTime(new Date());
    	jltfispCoBaseDto.setApplystate(3);//设置为未提交
        return loanService.saveCoBase(jltfispCoBaseDto);
    }
    
    /**
     * 查询是否有企业基本信息
     * @param request
     * @return
     */
    @RequestMapping("/queryCoBase")
    @ResponseBody
    public int queryCoBase(HttpServletRequest request) {
    	String applytype = request.getParameter("applytype");
    	DictColumnDto applyname = loanService.getAppName(applytype);
        request.setAttribute("applyname", applyname);
    	request.setAttribute("applytype", applytype);
    	//获取当前用户登录信息
    	JltfispUser user=loginService.getCurrentUser();
    	JltfispCoBaseDto Dto=loanService.getCoBaseContextByUserIdAndType(user.getId(), Integer.parseInt(applytype),3);
        
    	if(Dto == null){
        	return 0;
        }else{
        	return 1;
        }
    }
    
    /**
     * 科技履约贷款申请填写企业基本信息-企业概况
     * @param request
     * @param jltfispCoProfile
     * @return
     */
    @RequestMapping("/saveCoProfile")
    @ResponseBody
    public int saveCoProfile(HttpServletRequest request,JltfispCoProfileDto jltfispCoProfileDto,int businesstype) {
      	//获取当前用户登录信息
    	JltfispUser user=loginService.getCurrentUser();
    	//通过USERID获取企业基本信息
    	JltfispCoBaseDto jltfispCoBaseDto=loanService.getCoBaseContextByUserIdAndType(user.getId(),businesstype,3);
    	JltfispCoProfile jltfispCoProfile=new JltfispCoProfile();
    	WebUtil.copyBean(jltfispCoProfileDto, jltfispCoProfile);
    	if("".equals(jltfispCoProfileDto.getPatentOfInventionNum())){
    		jltfispCoProfile.setPatentOfInventionNum(null);
    	}
    	if("".equals(jltfispCoProfileDto.getIntellectualPropertyNum())){
    		jltfispCoProfile.setIntellectualPropertyNum(null);
    	}
    	if("".equals(jltfispCoProfileDto.getUtilityModelPatentNum())){
    		jltfispCoProfile.setUtilityModelPatentNum(null);
    	}
    	if("".equals(jltfispCoProfileDto.getSoftwareCopyrightNum())){
    		jltfispCoProfile.setSoftwareCopyrightNum(null);
    	}
    	if("".equals(jltfispCoProfileDto.getIntegratedCircuitDesignNum())){
    		jltfispCoProfile.setIntegratedCircuitDesignNum(null);
    	}
    	jltfispCoProfile.setInfoid(jltfispCoBaseDto.getId());
    	jltfispCoProfile.setCreateUserid(user.getId());
        return loanService.saveCoProfile(jltfispCoProfile);
    }
    
    
    /**
     * 科技履约贷款申请填写企业基本信息-资产负债表
     * @param request
     * @param jltfispCoDebt
     * @return
     */
    @RequestMapping("/saveCoDebt")
    @ResponseBody
    public int saveCoDebt(HttpServletRequest request,JltfispCoDebt jltfispCoDebt,int businesstype) {
    	//获取当前用户登录信息
    	JltfispUser user=loginService.getCurrentUser();
    	//通过USERID获取企业基本信息
    	JltfispCoBaseDto jltfispCoBaseDto=loanService.getCoBaseContextByUserIdAndType(user.getId(),businesstype,3);
    	jltfispCoDebt.setInfoid(jltfispCoBaseDto.getId());
        return loanService.saveCoDebt(jltfispCoDebt);
    }
    
    
    /**
     * 科技履约贷款申请填写企业基本信息-获取对应年费资产信息
     * @param request
     * @param year
     * @return
     */
    @RequestMapping("/selectCoDebtTable")
    public String selectCoDebtTable(HttpServletRequest request,String year,String applytype) {
    	//获取当前用户登录信息
    	JltfispUser user=loginService.getCurrentUser();
    	JltfispCoAll coAll =loanService.getCoDebtTable(user.getId(), year,Integer.parseInt(applytype),3);
    	
    	//获取申请表单 字段名称
        LoanManageOther loanformManage = new LoanManageOther();
        SysDict sysDict = dictionaryService.getValueByTypeCode(1002, applytype);
        if(redisService.getV("LoanformManage"+sysDict.getId()) != null){
            loanformManage = JSON.toJavaObject((JSON) JSON.parse(redisService.getV("LoanformManage"+sysDict.getId())),
                    LoanManageOther.class);
        }else{
            LoanManageOther params = new LoanManageOther();
            params.setType(sysDict.getId());
            params.setIstemplate(0);
            loanformManage = loanManageOtherService.selectOneByExample(params);
            if(loanformManage == null){
                params = new LoanManageOther();
                params.setIstemplate(1);
                loanformManage = loanManageOtherService.selectOneByExample(params);
            }
            
        }
        String formlabelJson = loanformManage.getFormLabelJson();
        FormLabel formLabel = JSON.toJavaObject((JSON) JSON.parse(formlabelJson),
                FormLabel.class);
        request.setAttribute("loanformManage", formLabel);
    	
    	
    	request.setAttribute("coAll", coAll);
    	request.setAttribute("applytype", applytype);
        return "/website/loan/loanapply/coDebtTable";
    }
    
    @RequestMapping("/selectCoDebtTableByInfoId")
    public String selectCoDebtTableByInfoId(HttpServletRequest request,String year,String applytype,Integer infoId) {
    	//获取当前用户登录信息
    	JltfispUser user=loginService.getCurrentUser();
    	JltfispCoAll coAll =loanService.getCoDebtTable(year, infoId);
    	
    	//获取申请表单 字段名称
        LoanManageOther loanformManage = new LoanManageOther();
        SysDict sysDict = dictionaryService.getValueByTypeCode(1002, applytype);
        if(redisService.getV("LoanformManage"+sysDict.getId()) != null){
            loanformManage = JSON.toJavaObject((JSON) JSON.parse(redisService.getV("LoanformManage"+sysDict.getId())),
                    LoanManageOther.class);
        }else{
            LoanManageOther params = new LoanManageOther();
            params.setType(sysDict.getId());
            params.setIstemplate(0);
            loanformManage = loanManageOtherService.selectOneByExample(params);
            if(loanformManage == null){
                params = new LoanManageOther();
                params.setIstemplate(1);
                loanformManage = loanManageOtherService.selectOneByExample(params);
            }
            
        }
        String formlabelJson = loanformManage.getFormLabelJson();
        FormLabel formLabel = JSON.toJavaObject((JSON) JSON.parse(formlabelJson),
                FormLabel.class);
        request.setAttribute("loanformManage", formLabel);
    	
    	
    	request.setAttribute("coAll", coAll);
    	request.setAttribute("applytype", applytype);
        return "/website/loan/loanapply/coDebtTableView";
    }
    
    /**
     * 科技履约贷款申请填写企业基本信息-获取对应年费资产信息
     * @param request
     * @param year
     * @return
     */
    @RequestMapping("/selectCoDebtTableView")
    public String selectCoDebtTableView(HttpServletRequest request,String year,String applytype) {
    	//获取当前用户登录信息
    	JltfispUser user=loginService.getCurrentUser();
    	JltfispCoAll coAll =loanService.getCoDebtTable(user.getId(), year,Integer.parseInt(applytype),3);
    	
    	//获取申请表单 字段名称
        LoanManageOther loanformManage = new LoanManageOther();
        SysDict sysDict = dictionaryService.getValueByTypeCode(1002, applytype);
        if(redisService.getV("LoanformManage"+sysDict.getId()) != null){
            loanformManage = JSON.toJavaObject((JSON) JSON.parse(redisService.getV("LoanformManage"+sysDict.getId())),
                    LoanManageOther.class);
        }else{
            LoanManageOther params = new LoanManageOther();
            params.setType(sysDict.getId());
            params.setIstemplate(0);
            loanformManage = loanManageOtherService.selectOneByExample(params);
            if(loanformManage == null){
                params = new LoanManageOther();
                params.setIstemplate(1);
                loanformManage = loanManageOtherService.selectOneByExample(params);
            }
            
        }
        String formlabelJson = loanformManage.getFormLabelJson();
        FormLabel formLabel = JSON.toJavaObject((JSON) JSON.parse(formlabelJson),
                FormLabel.class);
        request.setAttribute("loanformManage", formLabel);
    	
    	request.setAttribute("coAll", coAll);
    	request.setAttribute("applytype", applytype);
        return "/website/loan/loanapply/coDebtTableView";
    }
    
    
    /**
     * 贷款申请填-获取对应年费利润信息
     * @param request
     * @param applytype
     * @return
     */
    @RequestMapping("/selectCoProfitTable")
    public String selectCoProfitTable(HttpServletRequest request,String applytype) {
    	//获取当前用户登录信息
    	JltfispUser user=loginService.getCurrentUser();
    	//获取该用户所有信息
    	JltfispCoAll coAll =loanService.getApplyALL(user.getId(), Integer.parseInt(applytype),3);
    	
    	//获取申请表单 字段名称
        LoanManageOther loanformManage = new LoanManageOther();
        SysDict sysDict = dictionaryService.getValueByTypeCode(1002, applytype);
        if(redisService.getV("LoanformManage"+sysDict.getId()) != null){
            loanformManage = JSON.toJavaObject((JSON) JSON.parse(redisService.getV("LoanformManage"+sysDict.getId())),
                    LoanManageOther.class);
        }else{
            LoanManageOther params = new LoanManageOther();
            params.setType(sysDict.getId());
            params.setIstemplate(0);
            loanformManage = loanManageOtherService.selectOneByExample(params);
            if(loanformManage == null){
                params = new LoanManageOther();
                params.setIstemplate(1);
                loanformManage = loanManageOtherService.selectOneByExample(params);
            }
            
        }
        String formlabelJson = loanformManage.getFormLabelJson();
        FormLabel formLabel = JSON.toJavaObject((JSON) JSON.parse(formlabelJson),
                FormLabel.class);
        request.setAttribute("loanformManage", formLabel);
    	
    	request.setAttribute("coAll", coAll);
    	
    	Calendar cal = Calendar.getInstance();
		int year = cal.get(Calendar.YEAR);
		int month = cal.get(Calendar.MONTH);
		request.setAttribute("firstYear", year-3);
		request.setAttribute("secondYear", year-2);
		request.setAttribute("thirdYear", year-1);
		request.setAttribute("fourYear", year);
		request.setAttribute("month", month);
        return "/website/loan/loanapply/coProfitView";
    }
    
    
    @RequestMapping("/selectCoProfitTableByInfoId")
    public String selectCoProfitTableByInfoId(HttpServletRequest request,String applytype,Integer infoId) {
    	//获取该用户所有信息
    	JltfispCoAll coAll =loanService.getApplyALL(infoId);
    	
    	//获取申请表单 字段名称
        LoanManageOther loanformManage = new LoanManageOther();
        SysDict sysDict = dictionaryService.getValueByTypeCode(1002, applytype);
        if(redisService.getV("LoanformManage"+sysDict.getId()) != null){
            loanformManage = JSON.toJavaObject((JSON) JSON.parse(redisService.getV("LoanformManage"+sysDict.getId())),
                    LoanManageOther.class);
        }else{
            LoanManageOther params = new LoanManageOther();
            params.setType(sysDict.getId());
            params.setIstemplate(0);
            loanformManage = loanManageOtherService.selectOneByExample(params);
            if(loanformManage == null){
                params = new LoanManageOther();
                params.setIstemplate(1);
                loanformManage = loanManageOtherService.selectOneByExample(params);
            }
            
        }
        String formlabelJson = loanformManage.getFormLabelJson();
        FormLabel formLabel = JSON.toJavaObject((JSON) JSON.parse(formlabelJson),
                FormLabel.class);
        request.setAttribute("loanformManage", formLabel);
    	
    	request.setAttribute("coAll", coAll);
    	
    	Calendar cal = Calendar.getInstance();
		int year = cal.get(Calendar.YEAR);
		int month = cal.get(Calendar.MONTH);
		request.setAttribute("firstYear", year-3);
		request.setAttribute("secondYear", year-2);
		request.setAttribute("thirdYear", year-1);
		request.setAttribute("fourYear", year);
		request.setAttribute("month", month);
        return "/website/loan/loanapply/coProfitView";
    }
    
    /**
     * 科技履约贷款申请填写企业基本信息-利润表
     * @param request
     * @param jltfispCoProfit
     * @return
     */
    @RequestMapping("/saveCoProfit")
    @ResponseBody
    public int saveCoProfit(HttpServletRequest request,JltfispCoProfit jltfispCoProfit,int businesstype) {
    	//获取当前用户登录信息
    	JltfispUser user=loginService.getCurrentUser();
    	//通过USERID获取企业基本信息
    	JltfispCoBaseDto jltfispCoBaseDto=loanService.getCoBaseContextByUserIdAndType(user.getId(),businesstype,3);
    	jltfispCoProfit.setInfoid(jltfispCoBaseDto.getId());
    	return loanService.saveCoProfit(jltfispCoProfit);
    }
    
    /**
     * 科技履约贷款申请填写企业基本信息-附加财务明细
     * @param request
     * @param jltfispCoFinancial
     * @return
     */
    @RequestMapping("/saveCoFinancial")
    @ResponseBody
    public int saveCoFinancial(HttpServletRequest request,JltfispCoFinancial jltfispCoFinancial,int businesstype) {
    	//获取当前用户登录信息
    	JltfispUser user=loginService.getCurrentUser();
    	//通过USERID获取企业基本信息
    	JltfispCoBaseDto jltfispCoBaseDto=loanService.getCoBaseContextByUserIdAndType(user.getId(),businesstype,3);
    	jltfispCoFinancial.setInfoid(jltfispCoBaseDto.getId());
    	jltfispCoFinancial.setCreateUserid(user.getId());
    	return loanService.saveCoFinancial(jltfispCoFinancial);
    }
    
    /**
     * 科技履约贷款申请填写企业基本信息-附件
     * @param request
     * @param jltfispCoFinancial
     * @return
     * @throws IOException 
     */
    @RequestMapping("/saveCoFile")
    @ResponseBody
    public String saveCoFile(HttpServletRequest request,JltfispCoFile jltfispCoFile) throws Exception  {
    	String index = request.getParameter("index");
    	String applytype = request.getParameter("applytype");
    	//获取当前用户登录信息
    	JltfispUser user=loginService.getCurrentUser();
    	//通过USERID获取企业基本信息
    	JltfispCoBaseDto jltfispCoBaseDto=loanService.getCoBaseContextByUserIdAndType(user.getId(),Integer.parseInt(applytype),3);
    	jltfispCoFile.setApplyid(jltfispCoBaseDto.getId());
    	UploadFile uploadFile = FileUpDownUtils.getUploadFile(request, "UpFile"+index);
        String fileName = uploadFile.getFileName();
        if (StringUtils.isNotBlank(fileName) && (fileName.endsWith(".jpg"))) {
            byte[] fileData = FileUpDownUtils.getFileContent(uploadFile.getFile());
            String filePath = fileManager.saveImageFile(fileData, uploadFile.getFileName()).trim();
            jltfispCoFile.setFilepath(filePath);
            jltfispCoFile.setFiletype(Integer.parseInt(index));
            jltfispCoFile.setPreName(fileName);
            int suc=loanService.saveCoFile(jltfispCoFile);
            if(suc==1){
            	return filePath;
            } else{
            	return "0";
            }
        }else{
        	return "0";
        }
    }
    
    /**
     * 科技履约贷款申请填写企业基本信息-企业其他情况
     * @param request
     * @param jltfispCoFinancial
     * @return
     */
    @RequestMapping("/saveCoOther")
    @ResponseBody
    public int saveCoOther(HttpServletRequest request,JltfispCoOther jltfispCoOther,int businesstype) {
    	//获取当前用户登录信息
    	JltfispUser user=loginService.getCurrentUser();
    	//通过USERID获取企业基本信息
    	JltfispCoBaseDto jltfispCoBaseDto=loanService.getCoBaseContextByUserIdAndType(user.getId(),businesstype,3);
    	jltfispCoOther.setInfoid(jltfispCoBaseDto.getId());
        return loanService.saveCoOther(jltfispCoOther);
    }
    
    /**
     * 科技履约贷款申请填写企业基本信息-填写申请表格
     * @param request
     * @param jltfispCoFinancial
     * @return
     */
    @RequestMapping("/saveCoFillInApply")
    @ResponseBody
    public int saveCoFillInApply(HttpServletRequest request,JltfispCoFillInApplyDto jltfispCoFillInApplyDto) {
    	String applytype = request.getParameter("applyType");
    	DictColumnDto dto = loanService.getAppName(applytype);
        request.setAttribute("applyname", dto.getValue());
    	request.setAttribute("applytype", applytype);
    	JltfispCoFillInApply jltfispCoFillInApply=new JltfispCoFillInApply();
    	//将jltfispCoFillInApplyDto的属性拷贝到jltfispCoFillInApply中去
    	WebUtil.copyBean(jltfispCoFillInApplyDto, jltfispCoFillInApply);
    	if("".equals(jltfispCoFillInApplyDto.getFinaneAmount())){
    		jltfispCoFillInApply.setFinaneAmount(null);
    	}
    	jltfispCoFillInApply.setCreateTime(new Date());
    	//获取当前用户登录信息
    	JltfispUser user=loginService.getCurrentUser();
    	//通过USERID获取企业基本信息
    	JltfispCoBaseDto jltfispCoBaseDto=loanService.getCoBaseContextByUserIdAndType(user.getId(),Integer.parseInt(applytype),3);
    	jltfispCoFillInApply.setInfoid(jltfispCoBaseDto.getId());
    	jltfispCoFillInApply.setUserid(user.getId());
    	//查询是否已经存在该流程，如果存在，则不添加新的流程
    	BusinessApplayAudit Ba=businessApplayAuditService.checkApplyForLoan(user.getId(), applytype, "1");
    	if(null == Ba){
    	//Start插入审核流程
    	BusinessApplayAudit loan=new BusinessApplayAudit();
    	loan.setUserId(user.getId());
    	loan.setSubmitDate(new Date());
    	//设定为申请状态
    	loan.setState(3);
    	loan.setParentType("1");
    	//设定applyType类型
    	loan.setType(applytype);
    	loan.setInfoId(jltfispCoBaseDto.getId());
    	loan.setLoanValue(Double.valueOf(jltfispCoFillInApplyDto.getApplyAmount()));
	 	businessApplayAuditService.insertRecord(loan);
    	}
    	//stop插入审核流程
	 	
    	return loanService.saveCoFillInApply(jltfispCoFillInApply);
    }
    
    
    
    @RequestMapping("/fillinApply")
    public String fillinApply(HttpServletRequest request) {
    	String applytype = request.getParameter("applytype");
    	DictColumnDto dto = loanService.getAppName(applytype);
        request.setAttribute("applyname", dto.getValue());
    	request.setAttribute("applytype", applytype);
    	//获取当前用户登录信息
    	JltfispUser user=loginService.getCurrentUser();
    	//获取当前用户所有的申请信息
    	JltfispCoAll coAll=loanService.getApplyALL(user.getId(),Integer.parseInt(applytype),3);
    	request.setAttribute("coAll", coAll);
    	
     //获取申请表单 字段名称
     LoanManageOther loanformManage = new LoanManageOther();
     SysDict sysDict = dictionaryService.getValueByTypeCode(1002, applytype);
     if(redisService.getV("LoanformManage"+sysDict.getId()) != null){
         loanformManage = JSON.toJavaObject((JSON) JSON.parse(redisService.getV("LoanformManage"+sysDict.getId())),
                 LoanManageOther.class);
     }else{
         LoanManageOther params = new LoanManageOther();
         params.setType(sysDict.getId());
         params.setIstemplate(0);
         loanformManage = loanManageOtherService.selectOneByExample(params);
         if(loanformManage == null){
             params = new LoanManageOther();
             params.setIstemplate(1);
             loanformManage = loanManageOtherService.selectOneByExample(params);
         }
         
     }
     String formlabelJson = loanformManage.getFormLabelJson();
     FormLabel formLabel = JSON.toJavaObject((JSON) JSON.parse(formlabelJson),
             FormLabel.class);
     request.setAttribute("loanformManage", formLabel);
    	
        return "/website/loan/loanapply/fillinApply";
    }
    
    @RequestMapping("/showApply")
    public String showApply(HttpServletRequest request) {
    	String applytype = request.getParameter("applytype");
    	DictColumnDto dto = loanService.getAppName(applytype);
        request.setAttribute("applyname", dto.getValue());
    	request.setAttribute("applytype", applytype);
        return "/website/loan/showApply";
    }
    
    @RequestMapping("/loanView")
    public String loanView(HttpServletRequest request){
    	String applytype = request.getParameter("applytype");
    	DictColumnDto dto = loanService.getAppName(applytype);
        request.setAttribute("applyname", dto.getValue());
    	request.setAttribute("applytype", applytype);
    	//获取当前用户登录信息
    	JltfispUser user=loginService.getCurrentUser();
    	JltfispCoAll coAll=loanService.getApplyALL(user.getId(),Integer.parseInt(applytype),3);
    	List<JltfispCoDebt> coDebt=loanService.getCoDebtTableList(user.getId(), Integer.parseInt(applytype),3);
    	List<SysDict> dicList = dictionaryService.getDictListByType(1004);
    	request.setAttribute("coAll", coAll);
    	request.setAttribute("coDebt", coDebt);
    	request.setAttribute("dicList", dicList);
		
    	
     //获取申请表单 字段名称
     LoanManageOther loanformManage = new LoanManageOther();
     SysDict sysDict = dictionaryService.getValueByTypeCode(1002, applytype);
     if(redisService.getV("LoanformManage"+sysDict.getId()) != null){
         loanformManage = JSON.toJavaObject((JSON) JSON.parse(redisService.getV("LoanformManage"+sysDict.getId())),
                 LoanManageOther.class);
     }else{
         LoanManageOther params = new LoanManageOther();
         params.setType(sysDict.getId());
         params.setIstemplate(0);
         loanformManage = loanManageOtherService.selectOneByExample(params);
         if(loanformManage == null){
             params = new LoanManageOther();
             params.setIstemplate(1);
             loanformManage = loanManageOtherService.selectOneByExample(params);
         }
         
     }
     String formlabelJson = loanformManage.getFormLabelJson();
     FormLabel formLabel = JSON.toJavaObject((JSON) JSON.parse(formlabelJson),
             FormLabel.class);
     request.setAttribute("loanformManage", formLabel);
    	
    	return "/website/loan/loanapply/loanView";
    }
    /**
     * 贷款申请-确认提交
     * @param request
     * @return
     */
    @RequestMapping("/loanSubmit")
    public String  loanSubmit(HttpServletRequest request) {
    	String applytype = request.getParameter("applytype");
    	DictColumnDto dto = loanService.getAppName(applytype);
        request.setAttribute("applyname", dto.getValue());
    	request.setAttribute("applytype", applytype);
    	//获取当前用户登录信息
    	JltfispUser user=loginService.getCurrentUser();
	 	BusinessApplayAudit loan=businessApplayAuditService.checkApplyForLoan(user.getId(), applytype, "1");
	 	//更改流程状态为0，0代表申请中
	 	loan.setState(0);
	 	int i=businessApplayAuditService.updateByPK(loan);
	 	if(i==0){
	 	request.setAttribute("failMes", "申请失败");
	 	return "/website/loan/loanapply/loanApplyfail";
	 	}else{
	 	return "/website/loan/loanapply/loanApplysuccess";
	 	}
    }

    @RequestMapping("/financing")
    public String financing(){
        return "/website/loan/financing/financingApply";
    }

    @RequestMapping("/success")
    public String success(){
        return "/website/loan/success";
    }
}
