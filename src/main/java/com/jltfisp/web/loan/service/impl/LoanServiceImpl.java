/*******************************************************************************
 * Copyright (c) 2016.11.7 by 张舒西.
 * Copyright © 2016 Shenzhen GTA Education Tech Ltd. All rights reserved
 ******************************************************************************/

package com.jltfisp.web.loan.service.impl;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.jltfisp.login.entity.JltfispUser;
import com.jltfisp.login.service.LoginService;
import com.jltfisp.util.WebUtil;
import com.jltfisp.web.loan.entity.JltfispCoAll;
import com.jltfisp.web.loan.entity.JltfispCoBaseDto;
import com.jltfisp.web.loan.entity.JltfispCoDebt;
import com.jltfisp.web.loan.entity.JltfispCoFile;
import com.jltfisp.web.loan.entity.JltfispCoFillInApply;
import com.jltfisp.web.loan.entity.JltfispCoFillInApplyDto;
import com.jltfisp.web.loan.entity.JltfispCoFinancial;
import com.jltfisp.web.loan.entity.JltfispCoFinancialDto;
import com.jltfisp.web.loan.entity.JltfispCoOther;
import com.jltfisp.web.loan.entity.JltfispCoProfile;
import com.jltfisp.web.loan.entity.JltfispCoProfit;
import com.jltfisp.web.loan.entity.JltfispCoProfitDto;
import com.jltfisp.web.loan.dao.CoBaseMapper;
import com.jltfisp.web.loan.dao.CoDebtMapper;
import com.jltfisp.web.loan.dao.CoFileMapper;
import com.jltfisp.web.loan.dao.CoFillInApplyMapper;
import com.jltfisp.web.loan.dao.CoFinancialMapper;
import com.jltfisp.web.loan.dao.CoOtherMapper;
import com.jltfisp.web.loan.dao.CoProfileMapper;
import com.jltfisp.web.loan.dao.CoProfitMapper;
import com.jltfisp.web.loan.service.LoanService;
import com.jltfisp.web.news.dao.DictColumnMapper;
import com.jltfisp.web.news.entity.DictColumnDto;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/*
 *前台首页贷款服务service层 
 */
@Service
@Transactional
public class LoanServiceImpl implements LoanService {
    @Autowired
    private CoBaseMapper coBaseMapper;
    
    @Autowired
    private CoProfileMapper coProfileMapper;
    
    @Autowired
    private CoDebtMapper coDebtMapper;
    
    @Autowired
    private CoProfitMapper coProfitMapper;
    
    @Autowired
    private CoFinancialMapper coFinancialMapper;
    
    @Autowired
    private CoFileMapper coFileMapper;
    
    @Autowired
    private CoOtherMapper coOtherMapper;
    
    @Autowired
    private CoFillInApplyMapper coFillInApplyMapper;
    
    @Autowired
    private DictColumnMapper dictColumnMapper;

	private List<JltfispCoProfitDto> listJltfispCoProfitDto;
    
    /**
     * 
     * @author 张舒西 2016年11月22日 上午9:17:52
     */
    @Override
    public JltfispCoBaseDto getCoBaseContext(Integer id) {
        return coBaseMapper.selectByPrimaryKey(id);
    }
    
    /**
     * 
     * @author 张舒西 2016年11月22日 上午9:17:39
     */
    @Override
    public List<JltfispCoBaseDto> getCoBaseList(Integer userid) {
    	JltfispCoBaseDto jltfispCoBaseDto = new JltfispCoBaseDto();
    	jltfispCoBaseDto.setUserid(userid);
        return coBaseMapper.select(jltfispCoBaseDto);
    }
    /**
     * 保存企业基本信息
     * @author 张舒西 2016年11月22日 上午9:17:39
     */
	@Override
	public int saveCoBase(JltfispCoBaseDto coBase) {
		JltfispCoBaseDto JltfispCoBaseDto=coBaseMapper.getCoBaseContextByUserIdAndType(coBase.getUserid(),coBase.getBusinesstype(),3);
		//如果数据库中已有该记录，则更新该记录
		if(JltfispCoBaseDto!=null){
		coBase.setId(JltfispCoBaseDto.getId());
		return	coBaseMapper.updateByPrimaryKey(coBase);
		}else{
		return coBaseMapper.insert(coBase);
		}
	}

	@Override
	public int saveCoProfile(JltfispCoProfile coProfile) {
		JltfispCoProfile jltfispCoProfile=coProfileMapper.getCoprofileContext(coProfile.getInfoid());
		if(jltfispCoProfile!=null){
			coProfileMapper.deleteCoProfileContext(coProfile.getInfoid());
		}
		return coProfileMapper.insert(coProfile);
	}
	
	@Override
	public int saveCoDebt(JltfispCoDebt coDebt) {
		JltfispCoDebt jltfispCoDebt=coDebtMapper.getCoDebtContextByInfoId(coDebt.getInfoid(),coDebt.getYear());
		if(jltfispCoDebt!=null){
			coDebtMapper.deleteCoDebtContext(coDebt.getInfoid(),coDebt.getYear());
		}
		return coDebtMapper.insert(coDebt);
	}
	
	@Override
	public int saveCoProfit(JltfispCoProfit coProfit) {
		List<JltfispCoProfitDto> jltfispCoProfit=coProfitMapper.getCoProfitContext(coProfit.getInfoid());
		if(jltfispCoProfit!=null){
			coProfitMapper.deleteCoProfitContext(coProfit.getInfoid());
		}
		String[] main_income=coProfit.getMainincome().split(",");
		String[] main_cost=coProfit.getMaincost().split(",");
		String[] main_tax=coProfit.getMaintax().split(",");
		String[] main_profit=coProfit.getMainprofit().split(",");
		String[] other_profit=coProfit.getOtherprofit().split(",");
		String[] business_cost=coProfit.getBusinesscost().split(",");
		String[] manage_cost=coProfit.getManagecost().split(",");
		String[] finance_cost=coProfit.getFinancecost().split(",");
		String[] business_profit=coProfit.getBusinessprofit().split(",");
		String[] investment_income=coProfit.getInvestmentincome().split(",");
		String[] other_income=coProfit.getOtherincome().split(",");
		String[] other_pay=coProfit.getOtherpay().split(",");
		String[] asset_loss=coProfit.getAssetloss().split(",");
		String[] profit_amount=coProfit.getProfitamount().split(",");
		String[] income_tax=coProfit.getIncometax().split(",");
		String[] net_profit=coProfit.getNetprofit().split(",");
		List<JltfispCoProfitDto> list=new ArrayList<JltfispCoProfitDto>();
		Date date=new Date();
		DateFormat format=new SimpleDateFormat("yyyy");
		int year=Integer.parseInt(format.format(date))-3;
		for(int i=0;i<4;i++){
			JltfispCoProfitDto jltfispCoProfitDto=new JltfispCoProfitDto();
			WebUtil.copyBean(coProfit, jltfispCoProfitDto);
			jltfispCoProfitDto.setYear(String.valueOf(year+i));
			jltfispCoProfitDto.setMainincome(Double.valueOf(main_income[i]));
			jltfispCoProfitDto.setMaincost(Double.valueOf(main_cost[i]));
			jltfispCoProfitDto.setMaintax(Double.valueOf(main_tax[i]));
			jltfispCoProfitDto.setMainprofit(Double.valueOf(main_profit[i]));
			jltfispCoProfitDto.setOtherprofit(Double.valueOf(other_profit[i]));
			jltfispCoProfitDto.setBusinesscost(Double.valueOf(business_cost[i]));
			jltfispCoProfitDto.setManagecost(Double.valueOf(manage_cost[i]));
			jltfispCoProfitDto.setFinancecost(Double.valueOf(finance_cost[i]));
			jltfispCoProfitDto.setBusinessprofit(Double.valueOf(business_profit[i]));
			jltfispCoProfitDto.setInvestmentincome(Double.valueOf(investment_income[i]));
			jltfispCoProfitDto.setOtherincome(Double.valueOf(other_income[i]));
			jltfispCoProfitDto.setOtherpay(Double.valueOf(other_pay[i]));
			jltfispCoProfitDto.setAssetloss(Double.valueOf(asset_loss[i]));
			jltfispCoProfitDto.setProfitamount(Double.valueOf(profit_amount[i]));
			jltfispCoProfitDto.setIncometax(Double.valueOf(income_tax[i]));
			jltfispCoProfitDto.setNetprofit(Double.valueOf(net_profit[i]));
			list.add(jltfispCoProfitDto);
		}
		return coProfitMapper.insertList(list);
	}
	
	@Override
	public int saveCoFinancial(JltfispCoFinancial coFinancial)  {
		
		List<JltfispCoFinancialDto> JltfispCoFinancialList=coFinancialMapper.getCoCoFinancialContext(coFinancial.getInfoid());
		if(JltfispCoFinancialList!=null){
			coFinancialMapper.deleteCoFinancialContext(coFinancial.getInfoid());
		}
		String[] company=coFinancial.getCompany().split(",");
		String[] Yszkye=coFinancial.getYszkye().split(",");
		String[] Qtzkye=coFinancial.getQtzkye().split(",");
		String[] Zl=coFinancial.getZl().split(",");
		String[] Percent=coFinancial.getPercent().split(",");
		String[] LoanBank=coFinancial.getLoanBank().split(",");
		String[] LoanAccount=coFinancial.getLoanAccount().split(",");
		String[] SureMethod=coFinancial.getSureMethod().split(",");
		String[] StartTime=coFinancial.getStartTime().split(",");
		String[] EndTime=coFinancial.getEndTime().split(",");
		String[] Gx=coFinancial.getGx().split(",");
		String[] Zczb=coFinancial.getZczb().split(",");
		String[] Zysr=coFinancial.getZysr().split(",");
		String[] Zyyw=coFinancial.getZyyw().split(",");
		List<JltfispCoFinancialDto> list=new ArrayList<JltfispCoFinancialDto>();
		//企业应收款明细表
		for(int i=0;i<5;i++){
			JltfispCoFinancialDto dto=new JltfispCoFinancialDto();
			dto.setCompany(company[i]);
			dto.setYszkye(Double.valueOf(Yszkye[i]));
			dto.setZl(Zl[i]);
			dto.setPercent(Double.valueOf(Percent[i]));
			dto.setCreateTime(new Date());
			dto.setFinancialType(1);//1代表应收款明细
			dto.setCreateUserid(Integer.valueOf(coFinancial.getCreateUserid()));
			dto.setInfoid(coFinancial.getInfoid());
			list.add(dto);
		}
		//企业其他应收款明细表
		for(int i=5;i<10;i++){
			JltfispCoFinancialDto dto=new JltfispCoFinancialDto();
			dto.setCompany(company[i]);
			dto.setQtzkye(Double.valueOf(Qtzkye[i-5]));
			dto.setZl(Zl[i]);
			dto.setPercent(Double.valueOf(Percent[i]));
			dto.setCreateTime(new Date());
			dto.setFinancialType(2);//2代表其他应收款明细
			dto.setCreateUserid(Integer.valueOf(coFinancial.getCreateUserid()));
			dto.setInfoid(coFinancial.getInfoid());
			list.add(dto);
		}
		
		//企业应付款明细表
		for(int i=10;i<15;i++){
			JltfispCoFinancialDto dto=new JltfispCoFinancialDto();
			dto.setCompany(company[i]);
			dto.setYszkye(Double.valueOf(Yszkye[i-5]));
			dto.setZl(Zl[i]);
			dto.setPercent(Double.valueOf(Percent[i]));
			dto.setCreateTime(new Date());
			dto.setFinancialType(3);//3代表应付款明细
			dto.setCreateUserid(Integer.valueOf(coFinancial.getCreateUserid()));
			dto.setInfoid(coFinancial.getInfoid());
			list.add(dto);
		}
		//企业其他应付款明细表
		for(int i=15;i<20;i++){
			JltfispCoFinancialDto dto=new JltfispCoFinancialDto();
			dto.setCompany(company[i]);
			dto.setQtzkye(Double.valueOf(Qtzkye[i-10]));
			dto.setZl(Zl[i]);
			dto.setPercent(Double.valueOf(Percent[i]));
			dto.setCreateTime(new Date());
			dto.setFinancialType(4);//4代表其他应付款明细
			dto.setCreateUserid(Integer.valueOf(coFinancial.getCreateUserid()));
			dto.setInfoid(coFinancial.getInfoid());
			list.add(dto);
		}
		
		//企业银行借款明细表
		for(int i=0;i<4;i++){
			JltfispCoFinancialDto dto=new JltfispCoFinancialDto();
			dto.setLoanBank(LoanBank[i]);
			dto.setLoanAccount(Double.valueOf(LoanAccount[i]));
			dto.setSureMethod(SureMethod[i]);
			try {
				dto.setStartTime(new SimpleDateFormat("yyyy-MM-dd").parse(StartTime[i]));
			} catch (ParseException e) {
				e.printStackTrace();
			}
			try {
				dto.setEndTime(new SimpleDateFormat("yyyy-MM-dd").parse(EndTime[i]));
			} catch (ParseException e) {
				e.printStackTrace();
			}
			dto.setCreateTime(new Date());
			dto.setFinancialType(5);//5代表企业银行借款明细表
			dto.setCreateUserid(Integer.valueOf(coFinancial.getCreateUserid()));
			dto.setInfoid(coFinancial.getInfoid());
			list.add(dto);
			}
		//其他企业机构融资
		JltfispCoFinancialDto dto1=new JltfispCoFinancialDto();
		dto1.setOtherrz(Double.valueOf(coFinancial.getOtherrz()));
		dto1.setFinancialType(5);//5代表企业银行借款明细表
		dto1.setCreateTime(new Date());
		dto1.setCreateUserid(Integer.valueOf(coFinancial.getCreateUserid()));
		dto1.setInfoid(coFinancial.getInfoid());
		list.add(dto1);
		//民间融资
		JltfispCoFinancialDto dto2=new JltfispCoFinancialDto();
		dto2.setMjjk(Double.valueOf(coFinancial.getMjjk()));
		dto2.setFinancialType(5);//5代表企业银行借款明细表
		dto2.setCreateTime(new Date());
		dto2.setCreateUserid(Integer.valueOf(coFinancial.getCreateUserid()));
		dto2.setInfoid(coFinancial.getInfoid());
		list.add(dto2);
		//企业关联公司明细表
		for(int i=0;i<4;i++){
		JltfispCoFinancialDto dto=new JltfispCoFinancialDto();
		dto.setCompany(company[i+20]);
		dto.setGx(Gx[i]);
		dto.setZczb(Double.valueOf(Zczb[i]));
		dto.setZyyw(Zyyw[i]);
		dto.setZysr(Double.valueOf(Zysr[i]));
		dto.setFinancialType(6);//6代表企业关联公司明细表
		dto.setCreateTime(new Date());
		dto.setCreateUserid(Integer.valueOf(coFinancial.getCreateUserid()));
		dto.setInfoid(coFinancial.getInfoid());
		list.add(dto);
		}
		return coFinancialMapper.insertList(list);
	}
	
	
	@Override
	public int saveCoFile(JltfispCoFile coFile) {
		int count=coFileMapper.getCoFileContext(coFile.getApplyid(), coFile.getFiletype());
		if(count!=0){
			coFileMapper.deleteCoFileContext(coFile.getApplyid(), coFile.getFiletype());
		}
		return coFileMapper.insert(coFile);
	}

	@Override
	public int saveCoOther(JltfispCoOther coOther) {
		JltfispCoOther jltfispCoOther=coOtherMapper.getCoOtherContext(coOther.getInfoid());
		if(jltfispCoOther!=null){
			coOtherMapper.deleteCoOtherContext(coOther.getInfoid());
		}
		return coOtherMapper.insert(coOther);
	}
	
	@Override
	public int saveCoFillInApply(JltfispCoFillInApply coFillInApply) {
		JltfispCoFillInApply jltfispCoFillInApply=coFillInApplyMapper.getCoFillInApplyContext(coFillInApply.getInfoid());
		if(jltfispCoFillInApply!=null){
			coFillInApplyMapper.deleteCoFillInApplyContext(coFillInApply.getInfoid());
		} 
		return coFillInApplyMapper.insert(coFillInApply);
	}

	@Override
	public JltfispCoBaseDto getCoBaseContextByUserIdAndType(int userid,int business_type,int apply_state) {
		return coBaseMapper.getCoBaseContextByUserIdAndType(userid,business_type,apply_state);
	}
    /**
     * 查询所有申请信息并返回
     */
	@Override
	public JltfispCoAll getApplyALL(int userid,int businesstype,int applystate) {
		JltfispCoBaseDto coBase=this.getCoBaseContextByUserIdAndType(userid,businesstype,applystate);
		JltfispCoAll CoAll=new JltfispCoAll();
		if(null != coBase){
		JltfispCoOther  coOther=coOtherMapper.getCoOtherContext(coBase.getId());
		Calendar cal = Calendar.getInstance();
		int year = cal.get(Calendar.YEAR);
		JltfispCoDebt   coDebt=coDebtMapper.getCoDebtContextByInfoId(coBase.getId(),String.valueOf(year-3));
		JltfispCoDebt   coDebt2=coDebtMapper.getCoDebtContextByInfoId(coBase.getId(),String.valueOf(year-2));
		JltfispCoDebt   coDebt3=coDebtMapper.getCoDebtContextByInfoId(coBase.getId(),String.valueOf(year-1));
		JltfispCoDebt   coDebt4=coDebtMapper.getCoDebtContextByInfoId(coBase.getId(),String.valueOf(year));
		List<JltfispCoFile>  coFileList=coFileMapper.getCoFileContextList(coBase.getId());
		List<JltfispCoProfitDto> coProfit=coProfitMapper.getCoProfitContext(coBase.getId());
		JltfispCoProfile coProfile=coProfileMapper.getCoprofileContext(coBase.getId());
		List<JltfispCoFinancialDto> coFinancialList=coFinancialMapper.getCoCoFinancialContext(coBase.getId());
		JltfispCoFillInApply coFillInApply=coFillInApplyMapper.getCoFillInApplyContext(coBase.getId());
		CoAll.setJltfispCoBase(coBase);
		CoAll.setJltfispCoDebt(coDebt!=null?coDebt:new JltfispCoDebt());
		CoAll.setJltfispCoDebtTwo(coDebt2!=null?coDebt2:new JltfispCoDebt());
		CoAll.setJltfispCoDebtThree(coDebt3!=null?coDebt3:new JltfispCoDebt());
		CoAll.setJltfispCoDebtFour(coDebt4!=null?coDebt4:new JltfispCoDebt());
		CoAll.setJltfispCoOther(coOther);
		CoAll.setJltfispCoFileList(coFileList);
		CoAll.setJltfispCoProfit(coProfit);
		CoAll.setJltfispCoProfile(coProfile);
		CoAll.setJltfispCoFinancialList(coFinancialList);
		CoAll.setJltfispCoFillInApply(coFillInApply);
		}
		return CoAll;
	}

	@Override
	public JltfispCoAll getCoDebtTable(int userid,String year,int businesstype,int applystate) {
		JltfispCoBaseDto coBase=this.getCoBaseContextByUserIdAndType(userid,businesstype,applystate);
		JltfispCoDebt coDebt=coDebtMapper.getCoDebtContextByInfoId(coBase.getId(), year);
		JltfispCoAll CoAll=new JltfispCoAll();
		CoAll.setJltfispCoDebt(coDebt);
		return CoAll;
	}
	
	
	@Override
	public DictColumnDto getAppName(String apptype) {
		DictColumnDto dto=new DictColumnDto();
		dto.setCode(apptype);
		dto.setType(1002);
		return dictColumnMapper.selectOne(dto);
	}
	
	
	@Override
	public List<JltfispCoDebt> getCoDebtTableList(int userid,int businesstype,int applystate) {
		JltfispCoBaseDto coBase=this.getCoBaseContextByUserIdAndType(userid,businesstype,applystate);
		List<JltfispCoDebt> coDebt=coDebtMapper.getCoDebtContextList(coBase.getId());
		return coDebt;
	}

	@Override
	public List<JltfispCoFinancialDto> getCoCoFinancialContextByinfoId(
			int infoId) {
		// TODO Auto-generated method stub
		return coFinancialMapper.getCoCoFinancialContextByinfoId(infoId);
	}

	@Override
	public JltfispCoAll getApplyALL(int infoid) {
		JltfispCoBaseDto coBase=this.getCoBaseContext(infoid);
		JltfispCoAll CoAll=new JltfispCoAll();
		if(null != coBase){
		JltfispCoOther  coOther=coOtherMapper.getCoOtherContext(coBase.getId());
		Calendar cal = Calendar.getInstance();
		int year = cal.get(Calendar.YEAR);
		JltfispCoDebt   coDebt=coDebtMapper.getCoDebtContextByInfoId(coBase.getId(),String.valueOf(year-3));
		JltfispCoDebt   coDebt2=coDebtMapper.getCoDebtContextByInfoId(coBase.getId(),String.valueOf(year-2));
		JltfispCoDebt   coDebt3=coDebtMapper.getCoDebtContextByInfoId(coBase.getId(),String.valueOf(year-1));
		JltfispCoDebt   coDebt4=coDebtMapper.getCoDebtContextByInfoId(coBase.getId(),String.valueOf(year));
		List<JltfispCoFile>  coFileList=coFileMapper.getCoFileContextList(coBase.getId());
		List<JltfispCoProfitDto> coProfit=coProfitMapper.getCoProfitContext(coBase.getId());
		JltfispCoProfile coProfile=coProfileMapper.getCoprofileContext(coBase.getId());
		List<JltfispCoFinancialDto> coFinancialList=coFinancialMapper.getCoCoFinancialContextByinfoId(infoid);
		JltfispCoFillInApply coFillInApply=coFillInApplyMapper.getCoFillInApplyContext(coBase.getId());
		CoAll.setJltfispCoBase(coBase);
		CoAll.setJltfispCoDebt(coDebt!=null?coDebt:new JltfispCoDebt());
		CoAll.setJltfispCoDebtTwo(coDebt2!=null?coDebt2:new JltfispCoDebt());
		CoAll.setJltfispCoDebtThree(coDebt3!=null?coDebt3:new JltfispCoDebt());
		CoAll.setJltfispCoDebtFour(coDebt4!=null?coDebt4:new JltfispCoDebt());
		CoAll.setJltfispCoOther(coOther);
		CoAll.setJltfispCoFileList(coFileList);
		CoAll.setJltfispCoProfit(coProfit);
		CoAll.setJltfispCoProfile(coProfile);
		CoAll.setJltfispCoFinancialList(coFinancialList);
		CoAll.setJltfispCoFillInApply(coFillInApply);
		}
		return CoAll;
	}

	@Override
	public List<JltfispCoDebt> getCoDebtTableList(int infoId) {
		// TODO Auto-generated method stub
		return coDebtMapper.getCoDebtContextList(infoId);
	}
  
}
