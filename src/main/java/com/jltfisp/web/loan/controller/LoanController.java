/*******************************************************************************
 * Copyright (c) 2016.11.14 by LiuFa.
 * Copyright © 2016 Shenzhen GTA Education Tech Ltd. All rights reserved
 ******************************************************************************/

package com.jltfisp.web.loan.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jltfisp.util.WebUtil;
import com.jltfisp.web.area.service.AreaService;
import com.jltfisp.web.loan.entity.*;
import com.jltfisp.web.area.entity.*;
import com.jltfisp.web.loan.service.LoanService;


/**
 * Created by LiuFa on 2016/11/14.
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

	private Map<String,String> map = new HashMap<String,String>();
	
	
	public LoanController(){
		map.put("1", "科技履约贷款申请");
		map.put("2", "科技小巨人贷款申请");
		map.put("3", "高新技术贷款申请");
		map.put("4", "科技微贷通贷款申请");
		map.put("5", "保费补贴申请");
		map.put("6", "股权融资申请");
	}
    @RequestMapping("/onlineApply")
    public String onlineApply(HttpServletRequest request) {
    	String applytype = request.getParameter("applytype");
    	request.setAttribute("applyname", map.get(applytype));
    	request.setAttribute("applytype", applytype);
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
    	jltfispCoBaseDto.setBusinesstype(2); //2代表业务类型为科技履约贷款申请
        return loanService.saveCoBase(jltfispCoBaseDto);
    }
    
    /**
     * 科技履约贷款申请填写企业基本信息-企业概况
     * @param request
     * @param jltfispCoProfile
     * @return
     */
    @RequestMapping("/saveCoProfile")
    @ResponseBody
    public int saveCoProfile(HttpServletRequest request,JltfispCoProfile jltfispCoProfile) {
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
    public int saveCoDebt(HttpServletRequest request,JltfispCoDebt jltfispCoDebt) {
        return loanService.saveCoDebt(jltfispCoDebt);
    }
    
    
    /**
     * 科技履约贷款申请填写企业基本信息-利润表
     * @param request
     * @param jltfispCoProfit
     * @return
     */
    @RequestMapping("/saveCoProfit")
    @ResponseBody
    public int saveCoProfit(HttpServletRequest request,JltfispCoProfit jltfispCoProfit) {
    	jltfispCoProfit.setYear("2014");
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
    public int saveCoFinancial(HttpServletRequest request,JltfispCoFinancial jltfispCoFinancial) {
    	//jltfispCoFinancial.setYear("2014");
        return loanService.saveCoFinancial(jltfispCoFinancial);
    }
    
    /**
     * 科技履约贷款申请填写企业基本信息-附件
     * @param request
     * @param jltfispCoFinancial
     * @return
     */
    @RequestMapping("/saveCoFile")
    @ResponseBody
    public int saveCoFile(HttpServletRequest request,JltfispCoFile jltfispCoFile) {
    	//jltfispCoFinancial.setYear("2014");
        return loanService.saveCoFile(jltfispCoFile);
    }
    
    
    @RequestMapping("/guideApply")
    public String guideApply(HttpServletRequest request) {
    	String applytype = request.getParameter("applytype");
    	request.setAttribute("applyname", map.get(applytype));
    	request.setAttribute("applytype", applytype);
        return "/website/loan/guideApply";
    }
    @RequestMapping("/fillinApply")
    public String fillinApply(HttpServletRequest request) {
    	String applytype = request.getParameter("applytype");
    	request.setAttribute("applyname", map.get(applytype));
    	request.setAttribute("applytype", applytype);
        return "/website/loan/loanapply/fillinApply";
    }
    
    @RequestMapping("/showApply")
    public String showApply(HttpServletRequest request) {
    	String applytype = request.getParameter("applytype");
    	request.setAttribute("applyname", map.get(applytype));
    	request.setAttribute("applytype", applytype);
        return "/website/loan/showApply";
    }
    
    @RequestMapping("/loanView")
    public String loanView(){
    	return "/website/loan/loanapply/loanView";
    }

    @RequestMapping("/subsidy")
    public String subsidy(){
        return "/website/loan/subsidy/subsidyApply";
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
