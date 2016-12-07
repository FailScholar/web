/*******************************************************************************
 * Copyright (c) 2016.11.26 by shuxi.zhang.
 * Copyright © 2016 Shenzhen GTA Education Tech Ltd. All rights reserved
 ******************************************************************************/

package com.jltfisp.web.loan.entity;

import java.util.Date;

import javax.persistence.*;

@Table(name = "jltfisp_loan_apply")
public class JltfispCoFillInApply {
    
    /**
     * ID
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    /**
     * 贷款额度
     */
    @Column(name = "applyAmount")
    private double applyAmount;

    /**
     * 贷款期限 6 、6个月  12、12个月
     */
    @Column(name = "payCycle")
    private int payCycle;

    /**
     * 贷款用途
     */
    @Column(name = "useDesc")
    private String useDesc;

    /**
     * 是否首次贷款 
     */
    @Column(name = "historyState")
    private String historyState;
    
    /**
     * 是否续贷 
     */
    @Column(name = "continueloan")
    private String continueloan;

    /**
     * 上次还款时间
     */
    @Column(name = "historyEndtime")
    private String historyEndtime;

    /**
     * 是否银行推荐   1、是  2、否
     */
    @Column(name = "isRecomend1")
    private String isRecomend1;

    /**
     * 是否科委或园区推荐 1 是  2、否
     */
    @Column(name = "isRecomend2")
    private String isRecomend2;


    /**
     * 贷款银行
     */
    @Column(name = "bankid")
    private int bankid;
    
    @Transient
    private String institutionalName;
    
    /**
     * 担保/保险公司
     */
    @Column(name = "riskid")
    private int riskid;

    /**
     * 贷款支行
     */
    @Column(name = "bankBranch")
    private String bankBranch;

    /**
     * 是否已有其他银行贷款  1、是
     */
    @Column(name = "isOtherbankLoan")
    private String isOtherbankLoan;
    
    /**
     * 银行信贷员姓名
     */
    @Column(name = "loanOffice")
    private String loanOffice;
    
    /**
     * 信贷员手机号
     */
    @Column(name = "loanOfficeMobile")
    private String loanOfficeMobile;
    
    /**
     * 是否需要股权融资 1、是  2、否
     */
    @Column(name = "isFinance")
    private String isFinance;
    
    /**
     * 投融资金额
     */
    @Column(name = "finaneAmount")
    private double finaneAmount;
    
    /**
     * 是否有上市计划  1、是  2、否
     */
    @Column(name = "isListingPlan")
    private String isListingPlan;
    
    /**
     * 对投资机构的要求
     */
    @Column(name = "finaneRequire")
    private String finaneRequire;
    
    /**
     * 贷款申请类型
     */
    @Column(name = "applyType")
    private int applyType;
    
    /**
     * 创建时间
     */
    @Column(name = "createTime")
    private Date createTime;
    
    /**
     * 申请企业用户id
     */
    @Column(name = "user_id")
    private int userid;
    
    /**
     * 数据是否有效
     */
    @Column(name = "state")
    private String state;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public double getApplyAmount() {
		return applyAmount;
	}

	public void setApplyAmount(double applyAmount) {
		this.applyAmount = applyAmount;
	}

	public int getPayCycle() {
		return payCycle;
	}

	public void setPayCycle(int payCycle) {
		this.payCycle = payCycle;
	}

	public String getUseDesc() {
		return useDesc;
	}

	public void setUseDesc(String useDesc) {
		this.useDesc = useDesc;
	}

	public String getHistoryState() {
		return historyState;
	}

	public void setHistoryState(String historyState) {
		this.historyState = historyState;
	}

	public String getHistoryEndtime() {
		return historyEndtime;
	}

	public void setHistoryEndtime(String historyEndtime) {
		this.historyEndtime = historyEndtime;
	}

	public String getIsRecomend1() {
		return isRecomend1;
	}

	public void setIsRecomend1(String isRecomend1) {
		this.isRecomend1 = isRecomend1;
	}

	public String getIsRecomend2() {
		return isRecomend2;
	}

	public void setIsRecomend2(String isRecomend2) {
		this.isRecomend2 = isRecomend2;
	}

	public int getBankid() {
		return bankid;
	}

	public void setBankid(int bankid) {
		this.bankid = bankid;
	}

	public int getRiskid() {
		return riskid;
	}

	public void setRiskid(int riskid) {
		this.riskid = riskid;
	}

	public String getBankBranch() {
		return bankBranch;
	}

	public void setBankBranch(String bankBranch) {
		this.bankBranch = bankBranch;
	}

	public String getIsOtherbankLoan() {
		return isOtherbankLoan;
	}

	public void setIsOtherbankLoan(String isOtherbankLoan) {
		this.isOtherbankLoan = isOtherbankLoan;
	}

	public String getLoanOffice() {
		return loanOffice;
	}

	public void setLoanOffice(String loanOffice) {
		this.loanOffice = loanOffice;
	}

	public String getLoanOfficeMobile() {
		return loanOfficeMobile;
	}

	public void setLoanOfficeMobile(String loanOfficeMobile) {
		this.loanOfficeMobile = loanOfficeMobile;
	}

	public String getIsFinance() {
		return isFinance;
	}

	public void setIsFinance(String isFinance) {
		this.isFinance = isFinance;
	}

	public double getFinaneAmount() {
		return finaneAmount;
	}

	public void setFinaneAmount(double finaneAmount) {
		this.finaneAmount = finaneAmount;
	}

	public String getIsListingPlan() {
		return isListingPlan;
	}

	public void setIsListingPlan(String isListingPlan) {
		this.isListingPlan = isListingPlan;
	}

	public String getFinaneRequire() {
		return finaneRequire;
	}

	public void setFinaneRequire(String finaneRequire) {
		this.finaneRequire = finaneRequire;
	}

	public int getApplyType() {
		return applyType;
	}

	public void setApplyType(int applyType) {
		this.applyType = applyType;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getContinueloan() {
		return continueloan;
	}

	public void setContinueloan(String continueloan) {
		this.continueloan = continueloan;
	}

	public String getInstitutionalName() {
		return institutionalName;
	}

	public void setInstitutionalName(String institutionalName) {
		this.institutionalName = institutionalName;
	}

}