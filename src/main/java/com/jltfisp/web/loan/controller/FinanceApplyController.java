package com.jltfisp.web.loan.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.jltfisp.login.entity.JltfispUser;
import com.jltfisp.login.service.LoginService;
import com.jltfisp.web.area.entity.JltfispArea;
import com.jltfisp.web.area.service.AreaService;
import com.jltfisp.web.loan.entity.BusinessApplayAudit;
import com.jltfisp.web.loan.entity.JltfispCoBase;
import com.jltfisp.web.loan.entity.JltfispFinMaterial;
import com.jltfisp.web.loan.entity.JltfispFinShareholder;
import com.jltfisp.web.loan.entity.JltfispFinanceAndShareholdersDto;
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
    
	/**
	 * 
	 * @description 跳转到股权融资申请页面
	 * @author chenyun
	 * @date 2016年12月6日 下午2:17:49 
	 * @param @param request
	 * @param @return
	 * @return String
	 */
    @RequestMapping("/financeApply")
	public String finaApply(HttpServletRequest request) {
	    //获取当前用户登录信息
	    JltfispUser user=loginService.getCurrentUser();
	    List<BusinessApplayAudit> businessApplayAuditList= this.businessApplayAuditService.getBusinessApplayAuditListByUserId(user.getId(),"6");
		for(int i=0;i<businessApplayAuditList.size();i++){
			  if(businessApplayAuditList.get(i).getState()==0)
			  {
				  request.setAttribute("failMes", "您的股权融资申请正在审核中");
				  return "/website/loan/financing/fail";
			  }
			  else if(businessApplayAuditList.get(i).getState()==1)
			  {
				  request.setAttribute("failMes", "您已经申请了股权融资申请");
				  return "/website/loan/financing/fail";
			  }
		  }
	    
	    JltfispFinanceAndShareholdersDto jltfispCoBaseDto = this.financeApplyService.getJltfispFinanceAndShareholdersDto(user.getId(),6);
	    if(jltfispCoBaseDto!=null){
	    	JltfispFinMaterial jltfispFinMaterial = this.financeApplyService.getJltfispFinMaterialInfo(jltfispCoBaseDto.getId());
	    	request.setAttribute("jltfispFinMaterial", jltfispFinMaterial);
	    	String createTime = jltfispCoBaseDto.getCreateTime();
	    	if(createTime!=null){
		    	String year2 = createTime.substring(0, 4);//获取年份
		    	String month = createTime.substring(5, 7); //获取月份
		    	String date = createTime.substring(8, 10);//获取日期
		    	int year = Integer.parseInt(year2);
		    	request.setAttribute("year", year);
		    	request.setAttribute("month", month);
		    	request.setAttribute("date", date);
	    	}
	    	 else{
		   		 Calendar cal = Calendar.getInstance();  
		   		 int year =cal.get(Calendar.YEAR);  
		   		 int month =  cal.get(Calendar.MONTH) + 1;  
		   		 int date = cal.get(Calendar.DAY_OF_MONTH); 
		   		 request.setAttribute("year", year);
		         request.setAttribute("month", month);
		    	 request.setAttribute("date", date);
		   	}
	    	List<JltfispFinShareholder> shareholderList = new ArrayList<JltfispFinShareholder>();
	    	shareholderList=this.financeApplyService.getShareholderlistByInfoId(jltfispCoBaseDto.getId());
	    	if(shareholderList!=null){
	    		jltfispCoBaseDto.setJltfispFinShareholderList(shareholderList);
	    	    int shareholderListSize=shareholderList.size();
	    		request.setAttribute("shareholderListSize", shareholderListSize);
	    	}
	    }
	   
	    request.setAttribute("user", user);
	    request.setAttribute("jltfispCoBaseDto", jltfispCoBaseDto);
	    return "/website/loan/financing/financingApply";
     }
	
      /**
       * 
       * @description 股权融资申请须知
       * @author chenyun
       * @date 2016年12月6日 下午2:19:36 
       * @param @param request
       * @param @return
       * @return String
       */
	  @RequestMapping("/financeKnow")
	  public String financeKnow(HttpServletRequest request) {
		  JltfispUser user=loginService.getCurrentUser();
		  int userType = user.getType();
		  request.setAttribute("userType", userType);
	      return "/website/loan/financeGuideApply";
	  }
	  
	  @RequestMapping("/financeKnow2")
	  public String financeKnowNoApply(HttpServletRequest request) {
		  JltfispUser user=loginService.getCurrentUser();
		  int userType = user.getType();
		  request.setAttribute("userType", userType);
	      return "/website/loan/financing/financeGuideApply";
	  }
	  
	  /**
	   * 
	   * @description 保存用户填写股权融资申请的基本信息(第一步)
	   * @author chenyun
	   * @date 2016年12月6日 下午2:14:47 
	   * @param @param request
	   * @param @param jltfispCoBase
	   * @return void
	   */
	  @RequestMapping("/saveFinanceBasicInfo")
	  @ResponseBody
	  public void saveFinanceBasicInfo(HttpServletRequest request,JltfispFinanceAndShareholdersDto jltfispCoBaseDto){
	    	JltfispUser user=loginService.getCurrentUser();
	    	/**根据用户id和业务类型6获取原来是否有股权融资申请填写的内容**/
		    JltfispCoBase jltfispCoBase = this.financeApplyService.getJltfispCoBaseInfo(user.getId());
		    JltfispCoBase jltfispCoBase2 = new JltfispCoBase();//用来存放现有信息
		    Calendar cal = Calendar.getInstance();  
		    Date tasktime=cal.getTime();  
		    SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); //设置日期输出的格式  
		    jltfispCoBase2.setCreateTime(df.format(tasktime));
		    jltfispCoBase2.setCompany(user.getUsername());
		    jltfispCoBase2.setCorporateRepresentative(jltfispCoBaseDto.getCorporateRepresentative());
		    jltfispCoBase2.setEstablishTime(jltfispCoBaseDto.getEstablishTime());
		    jltfispCoBase2.setRegisteredCapital(jltfispCoBaseDto.getRegisteredCapital());
		    jltfispCoBase2.setSocialCreditCode(jltfispCoBaseDto.getSocialCreditCode());
		    jltfispCoBase2.setTecdomain(jltfispCoBaseDto.getTecdomain());
		    jltfispCoBase2.setLastyearsellscale(jltfispCoBaseDto.getLastyearsellscale());
		    jltfispCoBase2.setOfficeProv(jltfispCoBaseDto.getOfficeProv());
		    jltfispCoBase2.setOfficeCity(jltfispCoBaseDto.getOfficeCity());
		    jltfispCoBase2.setOfficeArea(jltfispCoBaseDto.getOfficeArea());
		    jltfispCoBase2.setOfficeAddress(jltfispCoBaseDto.getOfficeAddress());
		    jltfispCoBase2.setEmail(jltfispCoBaseDto.getEmail());
		    jltfispCoBase2.setWorkernumber(jltfispCoBaseDto.getWorkernumber());
		    jltfispCoBase2.setRegisteredAddress(jltfispCoBaseDto.getRegisteredAddress());
		    jltfispCoBase2.setRefereecompany(jltfispCoBaseDto.getRefereecompany());
		    jltfispCoBase2.setReferee(jltfispCoBaseDto.getReferee());
		    jltfispCoBase2.setRefereemobile(jltfispCoBaseDto.getRefereemobile());
		    jltfispCoBase2.setRefereeemail(jltfispCoBaseDto.getRefereeemail());
		    jltfispCoBase2.setCompanyurl(jltfispCoBaseDto.getCompanyurl());
		    jltfispCoBase2.setLinkMan(jltfispCoBaseDto.getLinkMan());
		    jltfispCoBase2.setZoneDescription(jltfispCoBaseDto.getZoneDescription());
		    jltfispCoBase2.setPhoneOrFax(jltfispCoBaseDto.getPhoneOrFax());
		    jltfispCoBase2.setLinkMobile(jltfispCoBaseDto.getLinkMobile());
		    jltfispCoBase2.setLinkEmail(jltfispCoBaseDto.getLinkEmail());
		    jltfispCoBase2.setUserid(user.getId());
		    jltfispCoBase2.setProjectname(jltfispCoBaseDto.getProjectname());
		    jltfispCoBase2.setMarketproductsummary(jltfispCoBaseDto.getMarketproductsummary());
		    jltfispCoBase2.setManagerteamsummary(jltfispCoBaseDto.getManagerteamsummary());
		    jltfispCoBase2.setTechnologyqualifications(jltfispCoBaseDto.getTechnologyqualifications());
		    jltfispCoBase2.setOtherDesc(jltfispCoBaseDto.getOtherDesc());
		    jltfispCoBase2.setBusinesstype(6);
		    if(jltfispCoBase!=null){
			    /**更新jltfispCoBase表**/
		    	JltfispFinMaterial jltfispFinMaterial = this.financeApplyService.getJltfispFinMaterialInfo(jltfispCoBase.getId());
		    	this.financeApplyService.deleteBase(jltfispCoBase.getId());
		    	this.financeApplyService.deleteShareholders(jltfispCoBase.getId());
		    	this.financeApplyService.addCoBase(jltfispCoBase2);
		    	JltfispCoBase jltfispCoBase3 = this.financeApplyService.getJltfispCoBaseInfo(user.getId());
		    	if(jltfispFinMaterial!=null){
		    		this.financeApplyService.updateCoBaseAndMaterial(jltfispCoBase3.getId(),jltfispFinMaterial.getId());
		    	}
		    	if(jltfispCoBaseDto.getJltfispFinShareholderList()!=null){
		    		for(int i=0;i<jltfispCoBaseDto.getJltfispFinShareholderList().size();i++){
		    			if(jltfispCoBaseDto.getJltfispFinShareholderList().get(i)!=null){
		    				jltfispCoBaseDto.getJltfispFinShareholderList().get(i).setFinancingId(jltfispCoBase2.getId());
		    				this.financeApplyService.addShareholders(jltfispCoBaseDto.getJltfispFinShareholderList().get(i));
		    		}
		    	}
		    	}
		    }
		    else{
		    	this.financeApplyService.addCoBase(jltfispCoBase2);
		    	if(jltfispCoBaseDto.getJltfispFinShareholderList()!=null){
		    		for(int i=0;i<jltfispCoBaseDto.getJltfispFinShareholderList().size();i++){
		    			if(jltfispCoBaseDto.getJltfispFinShareholderList().get(i)!=null){
		    				jltfispCoBaseDto.getJltfispFinShareholderList().get(i).setFinancingId(jltfispCoBase2.getId());
		    				this.financeApplyService.addShareholders(jltfispCoBaseDto.getJltfispFinShareholderList().get(i));
		    		}
		    	}
		    	}
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
	  public ModelAndView saveJltfispFinMaterialInfo(HttpServletRequest request,JltfispFinMaterial jltfispFinMaterial){
		  ModelAndView mv=new ModelAndView("/website/loan/financing/financeLast");	
		  JltfispUser user=loginService.getCurrentUser();
		  request.setAttribute("user", user);
		  JltfispCoBase jltfispCoBase = this.financeApplyService.getJltfispCoBaseInfo(user.getId());
		  int infoId=jltfispCoBase.getId();//关联关系Id
	      JltfispFinMaterial jltfispFinMaterial2 = this.financeApplyService.getJltfispFinMaterialInfo(infoId);
	      if(jltfispFinMaterial2!=null){
	    	this.financeApplyService.deleteFinMaterial(infoId);
	      }
	      jltfispFinMaterial.setInfoId(infoId);
	      double money=jltfispFinMaterial.getCapitals();
	      this.financeApplyService.addFinMaterial(jltfispFinMaterial);
	      JltfispFinanceAndShareholdersDto jltfispCoBaseDto2 = this.financeApplyService.getJltfispFinanceAndShareholdersDto(user.getId(),6);
	      String createTime = jltfispCoBaseDto2.getCreateTime();
	      if(createTime!=null){
		    	String year2 = createTime.substring(0, 4);//获取年份
		    	String month = createTime.substring(5, 7); //获取月份
		    	String date = createTime.substring(8, 10);//获取日期
		    	int year = Integer.parseInt(year2);
		    	request.setAttribute("year", year);
		    	request.setAttribute("month", month);
		    	request.setAttribute("date", date);
	      }
	      else{
		   		 Calendar cal = Calendar.getInstance();  
		   		 int year =cal.get(Calendar.YEAR);  
		   		 int month =  cal.get(Calendar.MONTH) + 1;  
		   		 int date = cal.get(Calendar.DAY_OF_MONTH); 
		   		 request.setAttribute("year", year);
		         request.setAttribute("month", month);
		    	 request.setAttribute("date", date);
		   	}
	      JltfispFinMaterial jltfispFinMaterial3 = this.financeApplyService.getJltfispFinMaterialInfo(jltfispCoBaseDto2.getId());
	      request.setAttribute("jltfispFinMaterial3", jltfispFinMaterial3);
		  JltfispArea  JltfispArea1= this.areaService.getAreaContext(jltfispCoBaseDto2.getOfficeProv());
		  String provName= JltfispArea1.getName();
		  JltfispArea  JltfispArea2= this.areaService.getAreaContext(jltfispCoBaseDto2.getOfficeCity());
		  String cityName= JltfispArea2.getName();
		  JltfispArea  JltfispArea3= this.areaService.getAreaContext(jltfispCoBaseDto2.getOfficeArea());
		  String areaName= JltfispArea3.getName();
		  request.setAttribute("provName", provName);
		  request.setAttribute("cityName", cityName);
		  request.setAttribute("areaName", areaName);
		  List<JltfispFinShareholder> shareholderList = new ArrayList<JltfispFinShareholder>();
	      shareholderList=this.financeApplyService.getShareholderlistByInfoId(jltfispCoBaseDto2.getId());
	      if(shareholderList!=null){
	    	  jltfispCoBaseDto2.setJltfispFinShareholderList(shareholderList);
	      }
	      mv.addObject("jltfispCoBaseDto2", jltfispCoBaseDto2);
	      List<BusinessApplayAudit> businessApplayAuditList= this.businessApplayAuditService.getBusinessApplayAuditListByUserId(user.getId(),"6");
	      BusinessApplayAudit businessApplyAudit=new BusinessApplayAudit();
	 	  businessApplyAudit.setUserId(user.getId());
	 	  businessApplyAudit.setSubmitDate(new Date());
	 	  businessApplyAudit.setState(3);
	 	  businessApplyAudit.setLoanValue(money);
	 	  businessApplyAudit.setType("6");
		  if(businessApplayAuditList==null){
		 	  businessApplayAuditService.insertRecord(businessApplyAudit);
		  }
		  else{
			  BusinessApplayAudit businessApplyAudit2= this.businessApplayAuditService.getBusinessApplayAuditByUserId(user.getId(),"6");
			  if(businessApplyAudit2==null){
				  businessApplayAuditService.insertRecord(businessApplyAudit);
			  }
			  else{
				  this.businessApplayAuditService.updateMoneyByUserIdAndType(user.getId(),"6",money);
				  this.businessApplayAuditService.updateBusinessApplayAuditByUserIdAndType(user.getId(),"6",3);
			  }
		  }
	      return  mv;
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
	  public ModelAndView submitFinanceApply(HttpServletRequest request){
		  ModelAndView mv=new ModelAndView("/website/loan/financing/success");
		  JltfispUser user=loginService.getCurrentUser();
	 	  this.businessApplayAuditService.updateBusinessApplayAuditByUserIdAndType(user.getId(),"6",0);
	      return mv;
	  }
	  
	  
}
