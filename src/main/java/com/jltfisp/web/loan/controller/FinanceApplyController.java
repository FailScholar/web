package com.jltfisp.web.loan.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jltfisp.login.entity.JltfispUser;
import com.jltfisp.login.service.LoginService;
import com.jltfisp.web.area.entity.JltfispArea;
import com.jltfisp.web.area.service.AreaService;
import com.jltfisp.web.loan.entity.BusinessApplayAudit;
import com.jltfisp.web.loan.entity.JltfispCoBase;
import com.jltfisp.web.loan.entity.JltfispFinMaterial;
import com.jltfisp.web.loan.entity.JltfispFinShareholder;
import com.jltfisp.web.loan.service.FinanceApplyService;
import com.jltfisp.web.loan.service.IBusinessApplayAuditService;

@Controller
@RequestMapping({"/anon/loan","/loan"})
public class FinanceApplyController {
	
    @Autowired
    private LoginService loginService;
    
    @Autowired
    private FinanceApplyService financeApplyService;
    
    @Autowired
    private AreaService areaService;
    
    @Autowired
    private IBusinessApplayAuditService businessApplayAuditService;
    
	@RequestMapping("/financeApply")
	public String finaApply(HttpServletRequest request) {
		 /**
		   * 根据用户id查询当前用户是否申请过贷款，若申请过则提示“你已提交过申请！请不要重新申请”
		   * 若用户之前填写的申请没有提交，显示已经填写的内容
		  */
	    //获取当前用户登录信息
	    JltfispUser user=loginService.getCurrentUser();
	    String userName = user.getUsername();
	    JltfispCoBase jltfispCoBase = this.financeApplyService.getJltfispCoBaseInfo(user.getId());
	    if(jltfispCoBase!=null){
	    		 JltfispFinMaterial jltfispFinMaterial = this.financeApplyService.getJltfispFinMaterialInfo(jltfispCoBase.getId());
	    		 request.setAttribute("jltfispFinMaterial", jltfispFinMaterial);
	    		 String establishTime = jltfispCoBase.getEstablishTime();
	    		 if(establishTime!=null){
		    		 String year = establishTime.substring(0, 4);//获取年份
		    		 String month = establishTime.substring(5, 7); //获取月份
		    		 String date = establishTime.substring(8, 10);//获取日期
		    		 request.setAttribute("year", year);
		    		 request.setAttribute("month", month);
		    		 request.setAttribute("date", date);
	    		 }
	    		 List<JltfispFinShareholder> shareholderList = new ArrayList<JltfispFinShareholder>();
	    		 shareholderList=this.financeApplyService.getShareholderlistByInfoId(jltfispCoBase.getId());
	    		 request.setAttribute("shareholderList", shareholderList);
	    }
	    request.setAttribute("userName", userName);
	    request.setAttribute("jltfispCoBase", jltfispCoBase);
	    return "/website/loan/financing/financingApply";
	  }
	  
	  @RequestMapping("/financeKnow")
	  public String financeKnow(HttpServletRequest request) {
		  JltfispUser user=loginService.getCurrentUser();
		  JltfispCoBase jltfispCoBase = this.financeApplyService.getJltfispCoBaseInfo(user.getId());
		  if(jltfispCoBase!=null){
		    	/**
		    	 * apply_state申请状态,0已申请，1表示申请中或者未申请
		    	 */
		    	if(jltfispCoBase.getApplystate()==0){
		    		return "/website/loan/financing/financeHaveApplied";
		    	}
		  }
	        return "/website/loan/financeGuideApply";
	  }
	  
	  /**
	   * 
	   * @description 保存用户填写股权融资申请的基本信息(第一步)
	   * @author chenyun
	   * @date 2016年12月2日 下午1:05:14 
	   * @param @param request
	   * @param @param jltfispCoBase
	   * @return void
	   */
	  @RequestMapping("/saveFinanceBasicInfo")
	  public void saveFinanceBasicInfo(HttpServletRequest request,JltfispCoBase jltfispCoBase){
	      	//获取当前用户登录信息
	    	JltfispUser user=loginService.getCurrentUser();
	    	jltfispCoBase.setUserid(user.getId());
	    	jltfispCoBase.setApplystate(1);
		    JltfispCoBase jltfispCoBase2 = this.financeApplyService.getJltfispCoBaseInfo(user.getId());
		    if(jltfispCoBase2!=null){
		    	JltfispFinMaterial jltfispFinMaterial2 = this.financeApplyService.getJltfispFinMaterialInfo(jltfispCoBase2.getId());
		    	this.financeApplyService.deleteBase(user.getId());
		    	this.financeApplyService.addCoBase(jltfispCoBase);
		    	if(jltfispFinMaterial2!=null){
		    		int infoId=jltfispCoBase.getId();
		    		this.financeApplyService.updateCoBaseAndMaterial(infoId,jltfispFinMaterial2.getId());
		    	}
		    }
		    else{
		    	this.financeApplyService.addCoBase(jltfispCoBase);
		    }
	  }
	
	  /**
	   * 
	   * @description 保存用户填写股权融资申请的材料表(第二步)
	   * @author chenyun
	   * @date 2016年12月2日 下午1:07:41 
	   * @param @param request
	   * @param @param jltfispFinMaterial
	   * @return void
	   */
	  @RequestMapping("/saveJltfispFinMaterialInfo")
	  public void saveJltfispFinMaterialInfo(HttpServletRequest request,JltfispFinMaterial jltfispFinMaterial){
		  	JltfispUser user=loginService.getCurrentUser();
		  	JltfispCoBase jltfispCoBase = this.financeApplyService.getJltfispCoBaseInfo(user.getId());
		  	int infoId=jltfispCoBase.getId();//关联关系Id
	    	JltfispFinMaterial jltfispFinMaterial2 = this.financeApplyService.getJltfispFinMaterialInfo(infoId);
	    	if(jltfispFinMaterial2!=null){
	    		/**删除原来的jltfispFinMaterialInfo**/
	    		this.financeApplyService.deleteFinMaterial(infoId);
	    	}
	    	jltfispFinMaterial.setInfoId(infoId);
	    	this.financeApplyService.addFinMaterial(jltfispFinMaterial);
	  }
	  
	  /**
	   * 
	   * @description 
	   * @author chenyun
	   * @date 2016年12月5日 上午10:37:47 
	   * @param @param request
	   * @param @return
	   * @return String
	   */
	  @RequestMapping("/getArea")
	  @ResponseBody
	  public Map<String,Object> getArea(Integer provId,Integer cityId,Integer areaId){
		 Map<String,Object> xmlItem = new HashMap<String, Object>();
		 String  provName="";
		 String  cityName="";
		 String  areaName="";
		 String  address="";
		 if(provId!=null){
			 JltfispArea  JltfispArea1= this.areaService.getAreaContext(provId);
			 provName= JltfispArea1.getName();
		 }
		 if(cityId!=null){
			 JltfispArea  JltfispArea2= this.areaService.getAreaContext(cityId);
			 cityName= JltfispArea2.getName();
		 }
		 if(areaId!=null){
			 JltfispArea  JltfispArea3= this.areaService.getAreaContext(areaId);
			 areaName= JltfispArea3.getName();
		 }
		 address=provName+" "+cityName+" "+areaName;
		 xmlItem.put("address", address);
		 xmlItem.put("result", "success");
		 return  xmlItem;
	    }
	  
	  /**
	   * 
	   * @description 提交股权融资申请
	   * @author chenyun
	   * @date 2016年12月5日 下午1:03:19 
	   * @param @param request
	   * @return void
	   */
	  @RequestMapping("/submitFinanceApply")
	  @ResponseBody
	  public String  submitFinanceApply(HttpServletRequest request){
		  
		  JltfispUser user=loginService.getCurrentUser();
		  /**更改状态**/
		  this.financeApplyService.updateJltfispCoBaseInfo(user.getId());
	      BusinessApplayAudit businessApplyAudit=new BusinessApplayAudit();
	 	  businessApplyAudit.setUserId(user.getId());
	 	  businessApplyAudit.setSubmitDate(new Date());
	 	  businessApplyAudit.setState(0);
	 	  //股权融资申请类型为2
	 	  businessApplyAudit.setType("2");
	 	  businessApplayAuditService.insertRecord(businessApplyAudit);
	 	 return "success";
	  }
}
