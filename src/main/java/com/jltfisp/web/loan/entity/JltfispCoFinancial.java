/*******************************************************************************
 * Copyright (c) 2016.11.24 by shuxi.zhang.
 * Copyright © 2016 Shenzhen GTA Education Tech Ltd. All rights reserved
 ******************************************************************************/

package com.jltfisp.web.loan.entity;

import javax.persistence.*;

public class JltfispCoFinancial {
    
    /**
     * ID
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    /**
     * 关联的企业申请信息id
     */
    @Column(name = "info_id")
    private int infoid;

    /**
     * 单位全称或者关联企业名称
     */
    @Column(name = "company")
    private String company;

    /**
     * 应收款余额
     */
    @Column(name = "yszkye")
    private double yszkye;

    /**
     * 其他应收款余额
     */
    @Column(name = "qtzkye")
    private String qtzkye;

    /**
     * 账龄
     */
    @Column(name = "zl")
    private String zl;

    /**
     * 百分比
     */
    @Column(name = "percent")
    private double percent;
    
    
    /**
     * 财务类型 1、应收款明细 2、其他应收款明细 3、应付款明细 4、其他应付款明细5、银行借款明细 6、关联公司明细
     */
    @Column(name = "financialType")
    private int financialType;
    
    /**
     * 贷款银行
     */
    @Column(name = "loanBank")
    private String loanBank;
    
    /**
     * 贷款金额
     */
    @Column(name = "loanAccount")
    private double loanAccount;
    
    /**
     * 担保方式
     */
    @Column(name = "sureMethod")
    private double sureMethod;
    
    /**
     * 开始日期
     */
    @Column(name = "startTime")
    private String startTime;
    
    /**
     * 结束日期
     */
    @Column(name = "endTime")
    private String endTime;
    
    
    /**
     * 其他金融机构融资
     */
    @Column(name = "otherrz")
    private String otherrz;


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public int getInfoid() {
		return infoid;
	}


	public void setInfoid(int infoid) {
		this.infoid = infoid;
	}


	public String getCompany() {
		return company;
	}


	public void setCompany(String company) {
		this.company = company;
	}


	public double getYszkye() {
		return yszkye;
	}


	public void setYszkye(double yszkye) {
		this.yszkye = yszkye;
	}


	public String getQtzkye() {
		return qtzkye;
	}


	public void setQtzkye(String qtzkye) {
		this.qtzkye = qtzkye;
	}


	public String getZl() {
		return zl;
	}


	public void setZl(String zl) {
		this.zl = zl;
	}


	public double getPercent() {
		return percent;
	}


	public void setPercent(double percent) {
		this.percent = percent;
	}


	public int getFinancialType() {
		return financialType;
	}


	public void setFinancialType(int financialType) {
		this.financialType = financialType;
	}


	public String getLoanBank() {
		return loanBank;
	}


	public void setLoanBank(String loanBank) {
		this.loanBank = loanBank;
	}


	public double getLoanAccount() {
		return loanAccount;
	}


	public void setLoanAccount(double loanAccount) {
		this.loanAccount = loanAccount;
	}


	public double getSureMethod() {
		return sureMethod;
	}


	public void setSureMethod(double sureMethod) {
		this.sureMethod = sureMethod;
	}


	public String getStartTime() {
		return startTime;
	}


	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}


	public String getEndTime() {
		return endTime;
	}


	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}


	public String getOtherrz() {
		return otherrz;
	}


	public void setOtherrz(String otherrz) {
		this.otherrz = otherrz;
	}

}