package com.jltfisp.web.loan.controller;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jltfisp.PdfGenerator;
import com.jltfisp.base.controller.BaseController;
import com.jltfisp.base.entity.PageInfo;
import com.jltfisp.base.entity.SysDict;
import com.jltfisp.base.service.IBaseService;
import com.jltfisp.login.entity.JltfispUser;
import com.jltfisp.login.service.LoginService;
import com.jltfisp.util.service.DictionaryService;
import com.jltfisp.web.area.entity.JltfispArea;
import com.jltfisp.web.area.service.AreaService;
import com.jltfisp.web.loan.entity.BusinessApplayAudit;
import com.jltfisp.web.loan.entity.JltfispCoAll;
import com.jltfisp.web.loan.entity.JltfispCoBase;
import com.jltfisp.web.loan.entity.JltfispCoBaseDto;
import com.jltfisp.web.loan.entity.JltfispCoDebt;
import com.jltfisp.web.loan.entity.JltfispFinMaterial;
import com.jltfisp.web.loan.entity.JltfispFinShareholder;
import com.jltfisp.web.loan.entity.JltfispFinanceAndShareholdersDto;
import com.jltfisp.web.loan.entity.JltfispPsInfo;
import com.jltfisp.web.loan.entity.JltfispPsMaterialInfo;
import com.jltfisp.web.loan.service.FinanceApplyService;
import com.jltfisp.web.loan.service.IBusinessApplayAuditService;
import com.jltfisp.web.loan.service.ISubsidyService;
import com.jltfisp.web.loan.service.LoanService;


/**
 * 数据访问
 * @author freameworkGenerator
 *
 */
@Controller
@RequestMapping("/business")
public class BusinessApplayAuditController extends BaseController<BusinessApplayAudit> {

    private static final Logger logger = LoggerFactory
            .getLogger(BusinessApplayAuditController.class);

    @Autowired
    private IBusinessApplayAuditService businessApplayAuditService;
    @Autowired
    private LoginService loginService;
    @Autowired
    private LoanService loanService;
    @Autowired
	private ISubsidyService subsidyService;
    @Autowired
    private FinanceApplyService financeApplyService;
    @Autowired
    private DictionaryService dictionaryService;
    @Autowired
    private AreaService areaService;
    
    @Override
	public IBaseService<BusinessApplayAudit> getEntityService() {
		return businessApplayAuditService;
	}

	@Override
	public String getFileBasePath() {
		return "website/usercenter/";
	}

	@Override
	public String getPageName() {
		return "Business";
	}

	@Override
	public void getMenuIndex(HttpServletRequest request) {
		// TODO Auto-generated method stub
		
	}
	@Override
	@RequestMapping(value = "/page")
	public String page(HttpServletRequest request, BusinessApplayAudit t) throws Exception {
		if(t.getType()==null || "".equals(t.getType())) {
			t.setType("1");
		}
		List<SysDict> dictListByType = dictionaryService.getDictListByType(1002);
		request.setAttribute("dictListByType", dictListByType);
		request.setAttribute("t", t);
		JltfispUser currentUser = loginService.getCurrentUser();
		t.setUserId(currentUser.getId());
		PageInfo info  = preparePageinfo(request,t);
		String result = handlePage(request, info, t);
		return result;
	}
	
	
	@RequestMapping(value = "/busspage")
	public String busspage(HttpServletRequest request, BusinessApplayAudit t) throws Exception {
		JltfispUser currentUser = loginService.getCurrentUser();
		t.setUserId(currentUser.getId());
		PageInfo info  = preparePageinfo(request,t);
		handlePage(request, info, t);
		request.setAttribute("t", t);
		return getFileBasePath()+"tableList";
	}
	@RequestMapping("/updateBuss")
	@ResponseBody
	public int updateBuss(HttpServletRequest request,BusinessApplayAudit record) {
		record.setState(0);
		int i = businessApplayAuditService.updateByPKSelective(record);
		return i;
	}
	
	/**
	 * 查看贷款申请详情-科技履约贷款申请等前四中贷款类型
	 * @param request
	 * @param applyId
	 * @param userid
	 * @return
	 */
	@RequestMapping("/detail")
	public String detail(HttpServletRequest request,Integer businessType) {
		SysDict dict = dictionaryService.getValueByTypeCode(1002, businessType.toString());
    	request.setAttribute("applyname", dict.getValue());
    	request.setAttribute("applytype", businessType);
    	//获取当前用户登录信息
    	JltfispUser user=loginService.getCurrentUser();
    	JltfispCoAll coAll=loanService.getApplyALL(user.getId(),businessType);
    	List<JltfispCoDebt> coDebt=loanService.getCoDebtTableList(user.getId(), businessType);
    	request.setAttribute("coAll", coAll);
    	request.setAttribute("coDebt", coDebt);
    	request.setAttribute("businessType", businessType);
		return getFileBasePath()+"loanView";
	}
	
	  /**
     * 保存保费补贴申请-查看
     * @param request
     * @param jltfispPsMaterialInfo 
     * @return
     */
    @RequestMapping("/showSubsidyDetail")
    public String showSubsidyDetail(HttpServletRequest request,Integer businessType){
    	//获取当前用户登录信息
    	JltfispUser user=loginService.getCurrentUser();
    	//通过USERID获取企业基本信息
    	JltfispCoBaseDto jltfispCoBaseDto=loanService.getCoBaseContextByUserIdAndType(user.getId(),businessType);
    	//根据企业id获取保费补贴
    	List<JltfispPsInfo> jltfispPsInfoList=subsidyService.getJltfispPsInfoListByCoBaseId(jltfispCoBaseDto.getId());
    	//保费补贴申请信息
    	JltfispPsMaterialInfo jltfispPsMaterialInfo = subsidyService.getJltfispPsMaterialInfoByInfoId(jltfispCoBaseDto.getId());
    	request.setAttribute("jltfispCoBaseDto", jltfispCoBaseDto);
    	request.setAttribute("jltfispPsInfoList",jltfispPsInfoList);
    	request.setAttribute("jltfispPsMaterialInfo",jltfispPsMaterialInfo);
    	return getFileBasePath()+"subsidyApplyDetail";
    }
    
    /**
     * 股权融资查看详情
     * @param request
     * @param businessType
     * @return
     */
    @RequestMapping("/showFinanceApplyDetail")
    public String showFinanceApplyDetail(HttpServletRequest request,Integer businessType){
    	JltfispUser user=loginService.getCurrentUser();
	      JltfispFinanceAndShareholdersDto jltfispCoBaseDto2 = this.financeApplyService.getJltfispFinanceAndShareholdersDto(user.getId(),6);
	      
	      SysDict dict = dictionaryService.getValueByTypeCode(1002, jltfispCoBaseDto2.getTecdomain());
	      jltfispCoBaseDto2.setTecdomain(dict.getValue());
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
	      request.setAttribute("jltfispCoBaseDto2", jltfispCoBaseDto2);
    	return getFileBasePath()+"financeApplyDetail";
    }
    /**
     * 贷款打印pdf
     * @param request
     * @param businessType
     * @param response
     */
    @RequestMapping("/printLoanPDF")
    public void printLoanPDF(HttpServletRequest request,Integer businessType,HttpServletResponse response){
    	
    	//获取当前用户登录信息
    	JltfispUser user=loginService.getCurrentUser();
    	SysDict dict = dictionaryService.getValueByTypeCode(1002, businessType.toString());
    	JltfispCoAll coAll=loanService.getApplyALL(user.getId(),businessType);
    	List<JltfispCoDebt> coDebt=loanService.getCoDebtTableList(user.getId(), businessType);
    	Map<String,Object> variables = new HashMap<String,Object>();
    	String historyState = coAll.getJltfispCoFillInApply().getHistoryState();
    	if (historyState.equals("1")) {
    		coAll.getJltfispCoFillInApply().setHistoryState("是");
		}else {
			coAll.getJltfispCoFillInApply().setHistoryState("否");
		}
    	if(coAll.getJltfispCoFillInApply().getIsFinance().equals("1")){
    		coAll.getJltfispCoFillInApply().setIsFinance("是");
    	}else {
    		coAll.getJltfispCoFillInApply().setIsFinance("否");
		}
    	if(coAll.getJltfispCoFillInApply().getIsListingPlan().equals("1")){
    		coAll.getJltfispCoFillInApply().setIsListingPlan("是");
    	}else{
    		coAll.getJltfispCoFillInApply().setIsListingPlan("否");
    	}
    	Integer mainField = coAll.getJltfispCoProfile().getMainField();
    	SysDict dict1 = dictionaryService.getValueByTypeCode(1002, mainField.toString());
    	coAll.getJltfispCoProfile().setMainFieldValue(dict1.getValue());
    	
    	variables.put("applyname",dict.getValue());
    	variables.put("applytype", businessType);
    	variables.put("coAll", coAll);
    	variables.put("coDebt", coDebt);
    	String basePath = request.getSession().getServletContext()  
                .getRealPath("/");  
    	PdfGenerator.printPDF(basePath, variables, dict.getValue(), response,"loanView.ftl");
    }
    
    /**
     * 打印保费补贴申请信息
     * @param request
     * @param businessType
     * @param response
     */
    @RequestMapping("/printSubsidyPDF")
    public void printSubsidyPDF(HttpServletRequest request,Integer businessType,HttpServletResponse response){
    	//String outputFile = "D:\\sample.pdf"; 
    	//获取当前用户登录信息
    	JltfispUser user=loginService.getCurrentUser();
    	//通过USERID获取企业基本信息
    	JltfispCoBaseDto jltfispCoBaseDto=loanService.getCoBaseContextByUserIdAndType(user.getId(),businessType);
    	//根据企业id获取保费补贴
    	List<JltfispPsInfo> jltfispPsInfoList=subsidyService.getJltfispPsInfoListByCoBaseId(jltfispCoBaseDto.getId());
    	//保费补贴申请信息
    	JltfispPsMaterialInfo jltfispPsMaterialInfo = subsidyService.getJltfispPsMaterialInfoByInfoId(jltfispCoBaseDto.getId());
    	 
    	Integer cognizance = jltfispPsMaterialInfo.getCognizance();
    	if(cognizance==1){
    		jltfispPsMaterialInfo.setCognizanceValue("私营企业");
    	}else if (cognizance==2) {
    		jltfispPsMaterialInfo.setCognizanceValue("中外合资企业");
		}else if (cognizance==3) {
    		jltfispPsMaterialInfo.setCognizanceValue("国有企业");
		}else {
    		jltfispPsMaterialInfo.setCognizanceValue("集体企业");
		}
    	Map<String,Object> variables = new HashMap<String,Object>();
    	 variables.put("jltfispCoBaseDto", jltfispCoBaseDto);
    	 variables.put("jltfispPsInfoList", jltfispPsInfoList);
    	 variables.put("jltfispPsMaterialInfo", jltfispPsMaterialInfo);
    	 String basePath = request.getSession().getServletContext()  
                 .getRealPath("/");  
    	 PdfGenerator.printPDF(basePath, variables, "保费补贴申请", response,"subsidyApplyDetail.ftl");
    }
    
    @RequestMapping("/printFinanceApply")
    public void printFinanceApply(HttpServletRequest request,HttpServletResponse response,Integer businessType){
    	
    	Map<String,Object> variables = new HashMap<String,Object>();
    	JltfispUser user=loginService.getCurrentUser();
	      JltfispFinanceAndShareholdersDto jltfispCoBaseDto2 = this.financeApplyService.getJltfispFinanceAndShareholdersDto(user.getId(), businessType);
	      
	      SysDict dict = dictionaryService.getValueByTypeCode(1002, jltfispCoBaseDto2.getTecdomain());
	      jltfispCoBaseDto2.setTecdomain(dict.getValue());
	      String technologyqualifications = jltfispCoBaseDto2.getTechnologyqualifications();
	      if("1".equals(technologyqualifications)) {
	    	  jltfispCoBaseDto2.setTechnologyqualifications("高科技企业");
	      }else if("2".equals(technologyqualifications)) {
	    	  jltfispCoBaseDto2.setTechnologyqualifications("科技小巨人企业");
	      }else if("3".equals(technologyqualifications)) {
	    	  jltfispCoBaseDto2.setTechnologyqualifications("科技小巨人培训企业");
	      }else {
	    	  jltfispCoBaseDto2.setTechnologyqualifications("软件企业");
		}
	      JltfispFinMaterial jltfispFinMaterial3 = this.financeApplyService.getJltfispFinMaterialInfo(jltfispCoBaseDto2.getId());
	      variables.put("jltfispFinMaterial3", jltfispFinMaterial3);
		  JltfispArea  JltfispArea1= this.areaService.getAreaContext(jltfispCoBaseDto2.getOfficeProv());
		  String provName= JltfispArea1.getName();
		  JltfispArea  JltfispArea2= this.areaService.getAreaContext(jltfispCoBaseDto2.getOfficeCity());
		  String cityName= JltfispArea2.getName();
		  JltfispArea  JltfispArea3= this.areaService.getAreaContext(jltfispCoBaseDto2.getOfficeArea());
		  String areaName= JltfispArea3.getName();
		  variables.put("provName", provName);
		  variables.put("cityName", cityName);
		  variables.put("areaName", areaName);
		  List<JltfispFinShareholder> shareholderList = new ArrayList<JltfispFinShareholder>();
	      shareholderList=this.financeApplyService.getShareholderlistByInfoId(jltfispCoBaseDto2.getId());
	      if(shareholderList!=null){
	    	  jltfispCoBaseDto2.setJltfispFinShareholderList(shareholderList);
	      }
	      variables.put("jltfispCoBaseDto2", jltfispCoBaseDto2);
	      String basePath = request.getSession().getServletContext()  
	                 .getRealPath("/");  
	     PdfGenerator.printPDF(basePath, variables, "股权融资申请", response,"financeApplyDetail.ftl");
    }
    
}
