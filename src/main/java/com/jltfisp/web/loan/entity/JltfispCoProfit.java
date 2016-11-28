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
     * 主营业务收入
     */
    @Column(name = "main_income")
    private double mainincome;

    /**
     * 减：主营业务成本
     */
    @Column(name = "main_cost")
    private double maincost;

    /**
     * 减：主营业务税金及附加
     */
    @Column(name = "main_tax")
    private double maintax;

    /**
     * 主营业务利润
     */
    @Column(name = "main_profit")
    private double mainprofit;

    /**
     * 加：其他业务利润
     */
    @Column(name = "other_profit")
    private double otherprofit;


    /**
     * 减：营业费用
     */
    @Column(name = "business_cost")
    private double businesscost;
    
    /**
     * 减：管理费
     */
    @Column(name = "manage_cost")
    private double managecost;

    /**
     * 减：财务费用
     */
    @Column(name = "finance_cost")
    private double financecost;

    /**
     * 营业利润
     */
    @Column(name = "business_profit")
    private double businessprofit;
    
    /**
     * 加：投资收益
     */
    @Column(name = "investment_income")
    private double investmentincome;
    
    /**
     * 加：营业外收入
     */
    @Column(name = "other_income")
    private double otherincome;
    
    /**
     * 加：营业外支出
     */
    @Column(name = "other_pay")
    private double otherpay;
    
    /**
     * 减：资产减值损失
     */
    @Column(name = "asset_loss")
    private double assetloss;
    
    /**
     * 利润总额
     */
    @Column(name = "profit_amount")
    private double profitamount;
    
    /**
     * 减：所得税
     */
    @Column(name = "income_tax")
    private double incometax;
    
    /**
     * 净利润
     */
    @Column(name = "net_profit")
    private double netprofit;

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

	public double getMainincome() {
		return mainincome;
	}

	public void setMainincome(double mainincome) {
		this.mainincome = mainincome;
	}

	public double getMaincost() {
		return maincost;
	}

	public void setMaincost(double maincost) {
		this.maincost = maincost;
	}

	public double getMaintax() {
		return maintax;
	}

	public void setMaintax(double maintax) {
		this.maintax = maintax;
	}

	public double getMainprofit() {
		return mainprofit;
	}

	public void setMainprofit(double mainprofit) {
		this.mainprofit = mainprofit;
	}

	public double getOtherprofit() {
		return otherprofit;
	}

	public void setOtherprofit(double otherprofit) {
		this.otherprofit = otherprofit;
	}

	public double getBusinesscost() {
		return businesscost;
	}

	public void setBusinesscost(double businesscost) {
		this.businesscost = businesscost;
	}

	public double getManagecost() {
		return managecost;
	}

	public void setManagecost(double managecost) {
		this.managecost = managecost;
	}

	public double getFinancecost() {
		return financecost;
	}

	public void setFinancecost(double financecost) {
		this.financecost = financecost;
	}

	public double getBusinessprofit() {
		return businessprofit;
	}

	public void setBusinessprofit(double businessprofit) {
		this.businessprofit = businessprofit;
	}

	public double getInvestmentincome() {
		return investmentincome;
	}

	public void setInvestmentincome(double investmentincome) {
		this.investmentincome = investmentincome;
	}

	public double getOtherincome() {
		return otherincome;
	}

	public void setOtherincome(double otherincome) {
		this.otherincome = otherincome;
	}

	public double getOtherpay() {
		return otherpay;
	}

	public void setOtherpay(double otherpay) {
		this.otherpay = otherpay;
	}

	public double getAssetloss() {
		return assetloss;
	}

	public void setAssetloss(double assetloss) {
		this.assetloss = assetloss;
	}

	public double getProfitamount() {
		return profitamount;
	}

	public void setProfitamount(double profitamount) {
		this.profitamount = profitamount;
	}

	public double getIncometax() {
		return incometax;
	}

	public void setIncometax(double incometax) {
		this.incometax = incometax;
	}

	public double getNetprofit() {
		return netprofit;
	}

	public void setNetprofit(double netprofit) {
		this.netprofit = netprofit;
	}
    
}