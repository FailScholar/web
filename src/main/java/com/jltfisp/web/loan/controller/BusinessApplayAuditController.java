package com.jltfisp.web.loan.controller;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
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
import com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.BIConversion.User;


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
		record.setSubmitDate(new Date());
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
	public String detail(HttpServletRequest request,Integer businessType,Integer infoId) {
		SysDict dict = dictionaryService.getValueByTypeCode(1002, businessType.toString());
    	request.setAttribute("applyname", dict.getValue());
    	request.setAttribute("applytype", businessType);
    	request.setAttribute("infoId", infoId);
    	
    	
    	//获取当前用户登录信息
    	
    	BusinessApplayAudit params = new BusinessApplayAudit();
    	params.setInfoId(infoId);
    	List<BusinessApplayAudit> applayAudit = businessApplayAuditService.selectBySample(params, null);
    	request.setAttribute("applayAudits", applayAudit);
    	JltfispCoAll coAll=loanService.getApplyALL(infoId);
    	List<JltfispCoDebt> coDebt=loanService.getCoDebtTableList(infoId);
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
    public String showSubsidyDetail(HttpServletRequest request,Integer businessType,Integer infoId){
    	//获取当前用户登录信息
    	JltfispUser user=loginService.getCurrentUser();
    	BusinessApplayAudit params = new BusinessApplayAudit();
    	params.setUserId(user.getId());
    	params.setType(businessType.toString());
    	List<BusinessApplayAudit> applayAudit = businessApplayAuditService.selectBySample(params, null);
    	request.setAttribute("applayAudits", applayAudit);
    	//通过USERID获取企业基本信息
    	JltfispCoBaseDto jltfispCoBaseDto=loanService.getCoBaseContext(infoId);
    	//根据企业id获取保费补贴
    	List<JltfispPsInfo> jltfispPsInfoList=subsidyService.getJltfispPsInfoListByCoBaseId(infoId);
    	//保费补贴申请信息
    	JltfispPsMaterialInfo jltfispPsMaterialInfo = subsidyService.getJltfispPsMaterialInfoByInfoId(infoId);
    	request.setAttribute("jltfispCoBaseDto", jltfispCoBaseDto);
    	request.setAttribute("jltfispPsInfoList",jltfispPsInfoList);
    	request.setAttribute("jltfispPsMaterialInfo",jltfispPsMaterialInfo);
    	request.setAttribute("infoId", infoId);
    	return getFileBasePath()+"subsidyApplyDetail";
    }
    
    /**
     * 股权融资查看详情
     * @param request
     * @param businessType
     * @return
     */
    @RequestMapping("/showFinanceApplyDetail")
    public String showFinanceApplyDetail(HttpServletRequest request,Integer businessType,Integer infoId){
    	JltfispUser user=loginService.getCurrentUser();
    	
    	BusinessApplayAudit params = new BusinessApplayAudit();
    	params.setInfoId(infoId);
    	List<BusinessApplayAudit> applayAudit = businessApplayAuditService.selectBySample(params, null);
    	request.setAttribute("applayAudits", applayAudit);
	      JltfispFinanceAndShareholdersDto jltfispCoBaseDto2 = this.financeApplyService.getJltfispFinanceAndShareholdersDto(infoId);
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
	      SysDict dict = dictionaryService.getValueByTypeCode(1002, jltfispCoBaseDto2.getTecdomain());
	      jltfispCoBaseDto2.setTecdomain(dict.getValue());
	      JltfispFinMaterial jltfispFinMaterial3 = this.financeApplyService.getJltfispFinMaterialInfo(infoId);
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
		  request.setAttribute("user", user);
		  request.setAttribute("infoId", infoId);
		  List<JltfispFinShareholder> shareholderList = new ArrayList<JltfispFinShareholder>();
	      shareholderList=this.financeApplyService.getShareholderlistByInfoId(infoId);
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
    public void printLoanPDF(HttpServletRequest request,Integer businessType,Integer infoId,HttpServletResponse response){
    	
    	//获取当前用户登录信息
    	JltfispUser user=loginService.getCurrentUser();
    	SysDict dict = dictionaryService.getValueByTypeCode(1002, businessType.toString());
    	JltfispCoAll coAll=loanService.getApplyALL(infoId);
    	List<JltfispCoDebt> coDebt=loanService.getCoDebtTableList(infoId);
    	Map<String,Object> variables = new HashMap<String,Object>();
    	Integer mainField = coAll.getJltfispCoProfile().getMainField();
    	SysDict dict1 = dictionaryService.getValueByTypeCode(1004, mainField.toString());
    	coAll.getJltfispCoProfile().setMainFieldValue(dict1.getValue());
    	//办公地址
    	JltfispArea officeProv=areaService.getAreaContext(coAll.getJltfispCoBase().getOfficeProv());
    	JltfispArea officeCity=areaService.getAreaContext(coAll.getJltfispCoBase().getOfficeCity());
    	JltfispArea officeArea=areaService.getAreaContext(coAll.getJltfispCoBase().getOfficeArea());
    	coAll.getJltfispCoBase().setOfficeAddress(officeProv.getName()+officeCity.getName()+officeArea.getName()+coAll.getJltfispCoBase().getOfficeAddress());
    	//生成地址
    	JltfispArea productProv=areaService.getAreaContext(coAll.getJltfispCoBase().getProductProv());
    	JltfispArea productCity=areaService.getAreaContext(coAll.getJltfispCoBase().getProductCity());
    	JltfispArea productArea=areaService.getAreaContext(coAll.getJltfispCoBase().getProductArea());
    	coAll.getJltfispCoBase().setProductAddress(productProv.getName()+productCity.getName()+productArea.getName()+coAll.getJltfispCoBase().getProductAddress());
    	
    	Map<String, String> finaMap = new HashMap<String, String>();
    	finaMap.put("1", "高科技企业");
    	finaMap.put("2", "科技小巨人企业");
    	finaMap.put("3", "科技小巨人培育企业");
    	finaMap.put("4", "软件企业");
    	finaMap.put("5", "技术先进企业");
    	finaMap.put("6", "创新性企业");
    	finaMap.put("7", "专利示范企业");
    	variables.put("finaMap",finaMap);
    	variables.put("applyname",dict.getValue());
    	variables.put("applytype", businessType);
    	variables.put("coAll", coAll);
    	variables.put("coDebt", coDebt);
    	BusinessApplayAudit params = new BusinessApplayAudit();
    	params.setUserId(user.getId());
    	params.setType(businessType.toString());
    	List<BusinessApplayAudit> applayAudit = businessApplayAuditService.selectBySample(params, null);
    	variables.put("applayAudits", applayAudit);
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
    public void printSubsidyPDF(HttpServletRequest request,Integer businessType,Integer infoId,HttpServletResponse response){
    	//String outputFile = "D:\\sample.pdf"; 
    	//获取当前用户登录信息
    	JltfispUser user=loginService.getCurrentUser();
    	//通过USERID获取企业基本信息
    	JltfispCoBaseDto jltfispCoBaseDto=loanService.getCoBaseContext(infoId);
    	//根据企业id获取保费补贴
    	List<JltfispPsInfo> jltfispPsInfoList=subsidyService.getJltfispPsInfoListByCoBaseId(infoId);
    	//保费补贴申请信息
    	JltfispPsMaterialInfo jltfispPsMaterialInfo = subsidyService.getJltfispPsMaterialInfoByInfoId(infoId);
    	Map<String,Object> variables = new HashMap<String,Object>();
    	 variables.put("jltfispCoBaseDto", jltfispCoBaseDto);
    	 variables.put("jltfispPsInfoList", jltfispPsInfoList);
    	 variables.put("jltfispPsMaterialInfo", jltfispPsMaterialInfo);
    	 BusinessApplayAudit params = new BusinessApplayAudit();
     	params.setUserId(user.getId());
     	params.setType(businessType.toString());
     	List<BusinessApplayAudit> applayAudit = businessApplayAuditService.selectBySample(params, null);
     	variables.put("applayAudits", applayAudit);
    	 String basePath = request.getSession().getServletContext()  
                 .getRealPath("/");  
    	 PdfGenerator.printPDF(basePath, variables, "保费补贴申请", response,"subsidyApplyDetail.ftl");
    }
    
    @RequestMapping("/printFinanceApply")
    public void printFinanceApply(HttpServletRequest request,HttpServletResponse response,Integer businessType,Integer infoId){
    	
    	Map<String,Object> variables = new HashMap<String,Object>();
    	JltfispUser user=loginService.getCurrentUser();
	      JltfispFinanceAndShareholdersDto jltfispCoBaseDto2 = this.financeApplyService.getJltfispFinanceAndShareholdersDto(infoId);
	      
	      SysDict dict = dictionaryService.getValueByTypeCode(1002, jltfispCoBaseDto2.getTecdomain());
	      jltfispCoBaseDto2.setTecdomain(dict.getValue());
	      String createTime = jltfispCoBaseDto2.getCreateTime();
	      if(createTime!=null){
		    	String year2 = createTime.substring(0, 4);//获取年份
		    	String month = createTime.substring(5, 7); //获取月份
		    	String date = createTime.substring(8, 10);//获取日期
		    	int year = Integer.parseInt(year2);
		    	variables.put("year", year);
		    	variables.put("month", month);
		    	variables.put("date", date);
	      }
	      else{
		   		 Calendar cal = Calendar.getInstance();  
		   		 int year =cal.get(Calendar.YEAR);  
		   		 int month =  cal.get(Calendar.MONTH) + 1;  
		   		 int date = cal.get(Calendar.DAY_OF_MONTH); 
		   		 variables.put("year", year);
		         variables.put("month", month);
		    	 variables.put("date", date);
		   	}
	      JltfispFinMaterial jltfispFinMaterial3 = this.financeApplyService.getJltfispFinMaterialInfo(infoId);
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
		  variables.put("user", user);
		  List<JltfispFinShareholder> shareholderList = new ArrayList<JltfispFinShareholder>();
	      shareholderList=this.financeApplyService.getShareholderlistByInfoId(infoId);
	      if(shareholderList!=null){
	    	  jltfispCoBaseDto2.setJltfispFinShareholderList(shareholderList);
	      }
	      variables.put("jltfispCoBaseDto2", jltfispCoBaseDto2);
	      BusinessApplayAudit params = new BusinessApplayAudit();
	    	params.setUserId(user.getId());
	    	params.setType(businessType.toString());
	    	List<BusinessApplayAudit> applayAudit = businessApplayAuditService.selectBySample(params, null);
	    	variables.put("applayAudits", applayAudit);
	      String basePath = request.getSession().getServletContext()  
	                 .getRealPath("/");  
	     PdfGenerator.printPDF(basePath, variables, "股权融资申请", response,"financeApplyDetail.ftl");
    }
    
}
