package com.jltfisp.web.loan.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.jltfisp.login.entity.JltfispUser;
import com.jltfisp.login.service.LoginService;
import com.jltfisp.util.WebUtil;
import com.jltfisp.web.loan.entity.BusinessApplayAudit;
import com.jltfisp.web.loan.entity.JlfispPsBaseDto;
import com.jltfisp.web.loan.entity.JltfispCoBaseDto;
import com.jltfisp.web.loan.entity.JltfispPsInfo;
import com.jltfisp.web.loan.entity.JltfispPsMaterialInfo;
import com.jltfisp.web.loan.entity.JltfispSubsidyCoBaseDto;
import com.jltfisp.web.loan.service.IBusinessApplayAuditService;
import com.jltfisp.web.loan.service.ISubsidyService;
import com.jltfisp.web.loan.service.LoanService;
/**
 * 保费补贴Controller
 * @author cuihong.ge
 *
 */
@Controller
@RequestMapping({"/anon/loan","/loan"})
public class SubsidyApplyController {
	@Autowired
	private LoginService loginService;
	@Autowired
	private ISubsidyService subsidyService;
	@Autowired
	private LoanService loanService;
    @Autowired
    private IBusinessApplayAuditService businessApplayAuditService;
	
    /**
	 * 判断是否已经申请贷款服务
	 * @param request
	 * @return mv
	 */
    @RequestMapping("/judgeIsApplyLoan")
    public ModelAndView judgeIsApplyLoan(HttpServletRequest request){
    	ModelAndView mv=new ModelAndView("/website/loan/subsidy/GuideApply");
        JltfispUser user =loginService.getCurrentUser();
        String type=null;
        //如果是企业用户则判断是否申请相应的贷款服务
        if(user !=null && user.getType()==2 ){
        	BusinessApplayAudit businessApplayAudit=businessApplayAuditService.getBusinessApplayAuditByUserId(user.getId(), "1");
        	//若是已经申请则判断申请状态(0：申请中；1：申请通过；2：申请不通过)
        	if((businessApplayAudit !=null && businessApplayAudit.getState()==2)){
        		//申请状态为申请不通过则进入申请须知页面
        		mv=new ModelAndView("/website/loan/subsidy/GuideApply");
        		//下次进入申请页面信息重新填
        		mv.addObject("refill", 0);
        	}else if(businessApplayAudit==null){
        		mv=new ModelAndView("/website/loan/subsidy/GuideApply");
        		//下次进入申请页面信息不用重新填
        		mv.addObject("refill", 1);
        	}else{
        		mv=new ModelAndView("/website/loan/fail");
        		mv.addObject("failMes", "对不起，您已经申请了保费补贴贷款");
        	}
        }
    	return mv;
    }
    /**
	 * 保费补贴在线申请
	 * @return
	 */
	@RequestMapping("/subsidy")
    public ModelAndView subsidy(HttpServletRequest request,Integer isReFill){
		JltfispUser user =loginService.getCurrentUser();
		ModelAndView mv=new ModelAndView("/website/loan/subsidy/subsidyApply");
		
		//企业用户如果是申请了贷款服务没有最后一步点击提交下次进入则要回显之前几个页面填写的内容
		if(user !=null && user.getType()==2 && isReFill==1 ){
			JlfispPsBaseDto jlfispPsBaseDto=this.subsidyService.getJlfispPsBaseDtoByUserId(user.getId());
			mv.addObject("jlfispPsBaseDto", jlfispPsBaseDto);
			// 获取保费补贴申请第二部里面的内容
	    	if(jlfispPsBaseDto !=null){
	    		JltfispPsMaterialInfo PsMaterialInfo=subsidyService.getJltfispPsMaterialInfoByInfoId(jlfispPsBaseDto.getId());
	    		mv.addObject("PsMaterialInfo", PsMaterialInfo);
	    	}
		}
        return mv;
    }
	/**
	 * 保存申请保费补贴企业信息第一步
	 * @param request
	 * @param jlfispSubsidyBaseDto
	 * @return
	 */
    @RequestMapping("/saveSubsidyCoBase")
    @ResponseBody
    public int saveSubsidyCoBase(HttpServletRequest request,JltfispSubsidyCoBaseDto jlfispSubsidyBaseDto) {
        //首先判断该企业用户的申请信息是否已经存在数据库存在先删除否则直接新增一条信息
    	JltfispUser user =loginService.getCurrentUser();
    	JltfispCoBaseDto jltfispCoBaseDto;
    	this.subsidyService.getJlfispPsBaseByUserIdAndName(user.getId(),jlfispSubsidyBaseDto);
    	//新增企业信息
    	jltfispCoBaseDto=new JltfispCoBaseDto();
    	WebUtil.copyBean(jlfispSubsidyBaseDto, jltfispCoBaseDto);
    	//获取当前用户登录信息
    	jltfispCoBaseDto.setUserid(user.getId());
    	jltfispCoBaseDto.setBusinesstype(5);
    	int saveCoBaseMes=loanService.saveCoBase(jltfispCoBaseDto);
    	int savePsInfoMes=0;
    	//获取保费补贴list
    	List<JltfispPsInfo> jltfispPsInfoList=jlfispSubsidyBaseDto.getJltfispPsInfoList();
    	if(jltfispPsInfoList!=null && jltfispPsInfoList.size()>0){
    	  for(int i=0;i<jltfispPsInfoList.size();i++){
    		 jltfispPsInfoList.get(i).setInfoId(jltfispCoBaseDto.getId());
    	  }
    	   savePsInfoMes=subsidyService.saveJltfispPsInfo(jltfispPsInfoList);
    	}
    	//返回前台保存成功或者失败
    	if((saveCoBaseMes==savePsInfoMes)&&saveCoBaseMes==1){
    		return 1;
    	}else{
    		return 0;
    	}
    	
    }
    /**
     * 保存保费补贴申请第二部里面的内容
     * @param request
     * @param jltfispPsMaterialInfo 
     * @return
     */
    @RequestMapping("/SavePsMaterialInfo")
    public ModelAndView SavePsMaterialInfo(JltfispPsMaterialInfo jltfispPsMaterialInfo){
    	ModelAndView mv=new ModelAndView("/website/loan/subsidy/finishApply");
    	//获取当前用户登录信息
    	JltfispUser user=loginService.getCurrentUser();
    	//通过USERID获取企业基本信息
    	JltfispCoBaseDto jltfispCoBaseDto=loanService.getCoBaseContextByUserIdAndType(user.getId(),5);
    	//根据企业id获取保费补贴
    	List<JltfispPsInfo> jltfispPsInfoList=subsidyService.getJltfispPsInfoListByCoBaseId(jltfispCoBaseDto.getId());
    	//保存保费补贴申请信息
    	jltfispPsMaterialInfo.setInfoId(jltfispCoBaseDto.getId());
    	subsidyService.saveJltfispPsMaterialInfo(jltfispPsMaterialInfo);
    	mv.addObject("jltfispCoBaseDto", jltfispCoBaseDto);
    	mv.addObject("jltfispPsInfoList",jltfispPsInfoList);
    	mv.addObject("jltfispPsMaterialInfo",jltfispPsMaterialInfo);
    	return mv ;
    }
    /**
     * 最后一步点击提交
     * @return
     */
     @RequestMapping("/finishApply")
     @ResponseBody
     public String submitSubsidyApply(){
    	//获取当前用户登录信息
    	JltfispUser user=loginService.getCurrentUser();
    	BusinessApplayAudit businessApplyAudit=new BusinessApplayAudit();
 		businessApplyAudit.setUserId(user.getId());
 		businessApplyAudit.setSubmitDate(new Date());
 		businessApplyAudit.setState(0);
 		//或者保存为5
 		businessApplyAudit.setType("1");
 		businessApplayAuditService.insertRecord(businessApplyAudit);
 		return "success";
    }
}
