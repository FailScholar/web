/*******************************************************************************
 * Copyright (c) 2016.11.24 by shuxi.zhang.
 * Copyright © 2016 Shenzhen GTA Education Tech Ltd. All rights reserved
 ******************************************************************************/

package com.jltfisp.web.loan.entity;

import java.util.Date;

import javax.persistence.*;

@Table(name = "jltfisp_co_financial")
public class JltfispCoFinancialDto {
    
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
    private double qtzkye;

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
    private String sureMethod;
    
    /**
     * 开始日期
     */
    @Column(name = "startTime")
    private Date startTime;
    
    /**
     * 结束日期
     */
    @Column(name = "endTime")
    private Date endTime;
    
    
    /**
     * 其他金融机构融资
     */
    @Column(name = "otherrz")
    private double otherrz;
 
    
    /**
     * 民间借款
     */
    @Column(name = "mjjk")
    private double mjjk;
    
    /**
     * 关系
     */
    @Column(name = "gx")
    private String gx;
    
    
    /**
     * 注册资本
     */
    @Column(name = "zczb")
    private double zczb;
    
    /**
     * 主营业务
     */
    @Column(name = "zyyw")
    private String zyyw;
    
    /**
     * 主营收入
     */
    @Column(name = "zysr")
    private double zysr;
    
    /**
     * 创建时间
     */
    @Column(name = "createTime")
    private Date createTime;
    
    /**
     * 创建人
     */
    @Column(name = "createUserid")
    private int createUserid;
    
    /**
     * 序号
     */
    @Column(name = "orderNum")
    private int orderNum;


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


	public double getQtzkye() {
		return qtzkye;
	}


	public void setQtzkye(double qtzkye) {
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


	public String getSureMethod() {
		return sureMethod;
	}


	public void setSureMethod(String sureMethod) {
		this.sureMethod = sureMethod;
	}


	public Date getStartTime() {
		return startTime;
	}


	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}


	public Date getEndTime() {
		return endTime;
	}


	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}


	public double getOtherrz() {
		return otherrz;
	}


	public void setOtherrz(double otherrz) {
		this.otherrz = otherrz;
	}


	public double getMjjk() {
		return mjjk;
	}


	public void setMjjk(double mjjk) {
		this.mjjk = mjjk;
	}


	public String getGx() {
		return gx;
	}


	public void setGx(String gx) {
		this.gx = gx;
	}


	public double getZczb() {
		return zczb;
	}


	public void setZczb(double zczb) {
		this.zczb = zczb;
	}


	public String getZyyw() {
		return zyyw;
	}


	public void setZyyw(String zyyw) {
		this.zyyw = zyyw;
	}


	public double getZysr() {
		return zysr;
	}


	public void setZysr(double zysr) {
		this.zysr = zysr;
	}


	public Date getCreateTime() {
		return createTime;
	}


	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}


	public int getCreateUserid() {
		return createUserid;
	}


	public void setCreateUserid(int createUserid) {
		this.createUserid = createUserid;
	}


	public int getOrderNum() {
		return orderNum;
	}


	public void setOrderNum(int orderNum) {
		this.orderNum = orderNum;
	}

}