/*******************************************************************************
 * Copyright (c) 2016.11.24 by shuxi.zhang.
 * Copyright © 2016 Shenzhen GTA Education Tech Ltd. All rights reserved
 ******************************************************************************/

package com.jltfisp.web.loan.entity;

import javax.persistence.*;

@Table(name = "jltfisp_co_profit")
public class JltfispCoProfit {
    
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
     * 年份
     */
    @Column(name = "year")
    private String year;
    
    /**
     * 当年年份
     */
    @Column(name = "month")
    private String month;

	/**
     * 主营业务收入
     */
    @Column(name = "main_income")
    private String mainincome;

    /**
     * 减：主营业务成本
     */
    @Column(name = "main_cost")
    private String maincost;

    /**
     * 减：主营业务税金及附加
     */
    @Column(name = "main_tax")
    private String maintax;

    /**
     * 主营业务利润
     */
    @Column(name = "main_profit")
    private String mainprofit;

    /**
     * 加：其他业务利润
     */
    @Column(name = "other_profit")
    private String otherprofit;


    /**
     * 减：营业费用
     */
    @Column(name = "business_cost")
    private String businesscost;
    
    /**
     * 减：管理费
     */
    @Column(name = "manage_cost")
    private String managecost;

    /**
     * 减：财务费用
     */
    @Column(name = "finance_cost")
    private String financecost;

    /**
     * 营业利润
     */
    @Column(name = "business_profit")
    private String businessprofit;
    
    /**
     * 加：投资收益
     */
    @Column(name = "investment_income")
    private String investmentincome;
    
    /**
     * 加：营业外收入
     */
    @Column(name = "other_income")
    private String otherincome;
    
    /**
     * 加：营业外支出
     */
    @Column(name = "other_pay")
    private String otherpay;
    
    /**
     * 减：资产减值损失
     */
    @Column(name = "asset_loss")
    private String assetloss;
    
    /**
     * 利润总额
     */
    @Column(name = "profit_amount")
    private String profitamount;
    
    /**
     * 减：所得税
     */
    @Column(name = "income_tax")
    private String incometax;
    
    /**
     * 净利润
     */
    @Column(name = "net_profit")
    private String netprofit;

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

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getMonth() {
		return month;
	}

	public void setMonth(String month) {
		this.month = month;
	}

	public String getMainincome() {
		return mainincome;
	}

	public void setMainincome(String mainincome) {
		this.mainincome = mainincome;
	}

	public String getMaincost() {
		return maincost;
	}

	public void setMaincost(String maincost) {
		this.maincost = maincost;
	}

	public String getMaintax() {
		return maintax;
	}

	public void setMaintax(String maintax) {
		this.maintax = maintax;
	}

	public String getMainprofit() {
		return mainprofit;
	}

	public void setMainprofit(String mainprofit) {
		this.mainprofit = mainprofit;
	}

	public String getOtherprofit() {
		return otherprofit;
	}

	public void setOtherprofit(String otherprofit) {
		this.otherprofit = otherprofit;
	}

	public String getBusinesscost() {
		return businesscost;
	}

	public void setBusinesscost(String businesscost) {
		this.businesscost = businesscost;
	}

	public String getManagecost() {
		return managecost;
	}

	public void setManagecost(String managecost) {
		this.managecost = managecost;
	}

	public String getFinancecost() {
		return financecost;
	}

	public void setFinancecost(String financecost) {
		this.financecost = financecost;
	}

	public String getBusinessprofit() {
		return businessprofit;
	}

	public void setBusinessprofit(String businessprofit) {
		this.businessprofit = businessprofit;
	}

	public String getInvestmentincome() {
		return investmentincome;
	}

	public void setInvestmentincome(String investmentincome) {
		this.investmentincome = investmentincome;
	}

	public String getOtherincome() {
		return otherincome;
	}

	public void setOtherincome(String otherincome) {
		this.otherincome = otherincome;
	}

	public String getOtherpay() {
		return otherpay;
	}

	public void setOtherpay(String otherpay) {
		this.otherpay = otherpay;
	}

	public String getAssetloss() {
		return assetloss;
	}

	public void setAssetloss(String assetloss) {
		this.assetloss = assetloss;
	}

	public String getProfitamount() {
		return profitamount;
	}

	public void setProfitamount(String profitamount) {
		this.profitamount = profitamount;
	}

	public String getIncometax() {
		return incometax;
	}

	public void setIncometax(String incometax) {
		this.incometax = incometax;
	}

	public String getNetprofit() {
		return netprofit;
	}

	public void setNetprofit(String netprofit) {
		this.netprofit = netprofit;
	}

}