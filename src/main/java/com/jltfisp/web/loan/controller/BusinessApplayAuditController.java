package com.jltfisp.web.loan.controller;

import com.jltfisp.base.controller.BaseController;
import com.jltfisp.base.entity.PageInfo;
import com.jltfisp.base.service.IBaseService;
import com.jltfisp.login.entity.JltfispUser;
import com.jltfisp.login.service.LoginService;
import com.jltfisp.web.loan.entity.*;
import com.jltfisp.web.loan.service.IBusinessApplayAuditService;
import com.jltfisp.web.loan.service.ISubsidyService;
import com.jltfisp.web.loan.service.LoanService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;


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
		t.setUserName(currentUser.getAccountNumber());
		PageInfo info  = preparePageinfo(request,t);
		String result = handlePage(request, info, t);
		return result;
	}
	
	/**
	 * 查看贷款申请详情
	 * @param request
	 * @param applyId
	 * @param userid
	 * @return
	 */
	@RequestMapping("/detail")
	public String detail(HttpServletRequest request,Integer id) {
		//获取当前用户登录信息
    	JltfispUser user=loginService.getCurrentUser();
		//根据userid查询企业基本信息
		JltfispCoBaseDto coBase = loanService.getCoBaseContext(user.getId());
		request.setAttribute("coBase", coBase);
		//查询贷款申请信息
		JltfispCoFillInApply apply = businessApplayAuditService.selectApplyByPk(id);
		request.setAttribute("apply", apply);
		//查询资产负债信息
		List<JltfispCoDebt> debtList = businessApplayAuditService.getCoDebtContextByInfoId(coBase.getId());
		request.setAttribute("debtList", debtList);
		return getFileBasePath()+"loanView";
	}
	
	  /**
     * 保存保费补贴申请-查看
     * @param request
     * @param jltfispPsMaterialInfo 
     * @return
     */
    @RequestMapping("/showSubsidyDetail")
    public String showSubsidyDetail(HttpServletRequest request,Integer id){
    	//获取当前用户登录信息
    	JltfispUser user=loginService.getCurrentUser();
    	//通过USERID获取企业基本信息
    	JltfispCoBaseDto jltfispCoBaseDto=loanService.getCoBaseContext(user.getId());
    	//根据企业id获取保费补贴
    	List<JltfispPsInfo> jltfispPsInfoList=subsidyService.getJltfispPsInfoListByCoBaseId(jltfispCoBaseDto.getId());
    	//保费补贴申请信息
    	JltfispPsMaterialInfo jltfispPsMaterialInfo = subsidyService.selectByPk(id);
    	request.setAttribute("jltfispCoBaseDto", jltfispCoBaseDto);
    	request.setAttribute("jltfispPsInfoList",jltfispPsInfoList);
    	request.setAttribute("jltfispPsMaterialInfo",jltfispPsMaterialInfo);
    	return getFileBasePath()+"subsidyApplyDetail";
    }
  
}
