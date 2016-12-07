/*******************************************************************************
 * Copyright (c) 2016.11.24 by shuxi.zhang.
 * Copyright © 2016 Shenzhen GTA Education Tech Ltd. All rights reserved
 ******************************************************************************/

package com.jltfisp.web.loan.entity;

import java.util.Date;

import javax.persistence.*;
@Table(name = "jltfisp_co_financial")
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
    private String yszkye;

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
    private String percent;
    
    
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
    private String loanAccount;
    
    /**
     * 担保方式
     */
    @Column(name = "sureMethod")
    private String sureMethod;
    
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
    
    
    /**
     * 民间借款
     */
    @Column(name = "mjjk")
    private String mjjk;
    
    /**
     * 关系
     */
    @Column(name = "gx")
    private String gx;
    
    
    /**
     * 注册资本
     */
    @Column(name = "zczb")
    private String zczb;
    
    /**
     * 主营业务
     */
    @Column(name = "zyyw")
    private String zyyw;
    
    /**
     * 主营收入
     */
    @Column(name = "zysr")
    private String zysr;

    /**
     * 创建时间
     */
    @Column(name = "createTime")
    private String createTime;
    
    /**
     * 创建人
     */
    @Column(name = "createUserid")
    private int createUserid;
    
    /**
     * 序号
     */
    @Column(name = "orderNum")
    private String orderNum;

	public String getCreateTime() {
		return createTime;
	}


	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}


	public int getCreateUserid() {
		return createUserid;
	}


	public void setCreateUserid(int createUserid) {
		this.createUserid = createUserid;
	}


	public String getOrderNum() {
		return orderNum;
	}


	public void setOrderNum(String orderNum) {
		this.orderNum = orderNum;
	}


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


	public String getYszkye() {
		return yszkye;
	}


	public void setYszkye(String yszkye) {
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


	public String getPercent() {
		return percent;
	}


	public void setPercent(String percent) {
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


	public String getLoanAccount() {
		return loanAccount;
	}


	public void setLoanAccount(String loanAccount) {
		this.loanAccount = loanAccount;
	}


	public String getSureMethod() {
		return sureMethod;
	}


	public void setSureMethod(String sureMethod) {
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


	public String getMjjk() {
		return mjjk;
	}


	public void setMjjk(String mjjk) {
		this.mjjk = mjjk;
	}


	public String getGx() {
		return gx;
	}


	public void setGx(String gx) {
		this.gx = gx;
	}


	public String getZczb() {
		return zczb;
	}


	public void setZczb(String zczb) {
		this.zczb = zczb;
	}


	public String getZyyw() {
		return zyyw;
	}


	public void setZyyw(String zyyw) {
		this.zyyw = zyyw;
	}


	public String getZysr() {
		return zysr;
	}


	public void setZysr(String zysr) {
		this.zysr = zysr;
	}


}