package com.jltfisp.web.loan.controller;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.jltfisp.base.controller.BaseController;
import com.jltfisp.base.entity.PageInfo;
import com.jltfisp.base.service.IBaseService;
import com.jltfisp.login.entity.JltfispUser;
import com.jltfisp.login.service.LoginService;
import com.jltfisp.web.loan.entity.BusinessApplayAudit;
import com.jltfisp.web.loan.entity.JltfispCoAll;
import com.jltfisp.web.loan.entity.JltfispCoBaseDto;
import com.jltfisp.web.loan.entity.JltfispCoDebt;
import com.jltfisp.web.loan.entity.JltfispCoFillInApply;
import com.jltfisp.web.loan.entity.JltfispCoFinancialDto;
import com.jltfisp.web.loan.entity.JltfispFinMaterial;
import com.jltfisp.web.loan.entity.JltfispFinShareholder;
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
		
		JltfispUser currentUser = loginService.getCurrentUser();
		t.setUserId(currentUser.getId());
		PageInfo info  = preparePageinfo(request,t);
		String result = handlePage(request, info, t);
		return result;
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
		Map<String,String> map = new HashMap<String,String>();
    	request.setAttribute("applyname", map.get(businessType));
    	request.setAttribute("applytype", businessType);
    	//获取当前用户登录信息
    	JltfispUser user=loginService.getCurrentUser();
    	JltfispCoAll coAll=loanService.getApplyALL(user.getId(),businessType);
    	List<JltfispCoDebt> coDebt=loanService.getCoDebtTableList(user.getId(), businessType);
    	request.setAttribute("coAll", coAll);
    	request.setAttribute("coDebt", coDebt);
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
    	//获取当前用户登录信息
    	JltfispUser user=loginService.getCurrentUser();
    	//通过USERID获取企业基本信息
    	JltfispCoBaseDto jltfispCoBaseDto=loanService.getCoBaseContextByUserIdAndType(user.getId(),businessType);
    	//查询股权融资申请信息
    	JltfispFinMaterial jltfispFinMaterialInfo = financeApplyService.getJltfispFinMaterialInfo(jltfispCoBaseDto.getId());
    	//查询股东
    	List<JltfispFinShareholder> shareholderlist = financeApplyService.getShareholderlistByInfoId(jltfispFinMaterialInfo.getId());
    	request.setAttribute("jltfispCoBaseDto", jltfispCoBaseDto);
    	request.setAttribute("jltfispFinMaterialInfo", jltfispFinMaterialInfo);
    	request.setAttribute("shareholderlist", shareholderlist);
    	return getFileBasePath()+"financeApplyDetail";
    }
}
