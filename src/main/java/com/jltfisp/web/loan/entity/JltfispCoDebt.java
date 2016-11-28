/*******************************************************************************
 * Copyright (c) 2016.11.25 by shuxi.zhang.
 * Copyright © 2016 Shenzhen GTA Education Tech Ltd. All rights reserved
 ******************************************************************************/

package com.jltfisp.web.loan.entity;

import javax.persistence.*;

@Table(name = "jltfisp_co_debt")
public class JltfispCoDebt {
    
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
     * 货币资金
     */
    @Column(name = "capital")
    private double capital;

    /**
     * 短期投资
     */
    @Column(name = "short_investment")
    private double shortinvestment;

    /**
     * 应收票据
     */
    @Column(name = "bill")
    private double bill;

    /**
     * 应收股息
     */
    @Column(name = "dividend")
    private double dividend;

    /**
     * 应收账款
     */
    @Column(name = "account_receivable")
    private double accountreceivable;


    /**
     * 其他应收款
     */
    @Column(name = "other_receivable")
    private double otherreceivable;
    
    /**
     * 存货
     */
    @Column(name = "stock")
    private double stock;

    /**
     * 待摊费用
     */
    @Column(name = "prepaid_expenses")
    private double prepaidexpenses;

    /**
     * 一年到期的长期债权投资
     */
    @Column(name = "debts_investment")
    private double debtsinvestment;
    
    /**
     * 其他流动资产
     */
    @Column(name = "liquid_assets")
    private double liquidassets;
    
    /**
     * 预收账款
     */
    @Column(name = "pre_accounts_receivable")
    private double preaccountsreceivable;
    
    /**
     * 流动资产合计
     */
    @Column(name = "liquid_assets_amount")
    private double liquidassetsamount;
    
    /**
     * 长期股权投资
     */
    @Column(name = "long_stock_investment")
    private double longstockinvestment;
    
    /**
     * 长期债权投资
     */
    @Column(name = "long_debts_investment")
    private double longdebtsinvestment;
    
    /**
     * 长期投资合计
     */
    @Column(name = "long_investment_amount")
    private double longinvestmentamount;
    
    /**
     * 累计折旧
     */
    @Column(name = "depreciation")
    private double depreciation;
    
    /**
     * 固定资产净值
     */
    @Column(name = "fixed_assets_value")
    private double fixedassetsvalue;
    
    /**
     * 工程物质
     */
    @Column(name = "engineering_material")
    private double engineeringmaterial;
    
    /**
     * 固定资产清理
     */
    @Column(name = "fixed_assets_clean")
    private double fixedassetsclean;
    
    /**
     * 固定资产合计
     */
    @Column(name = "fixed_assets_amount")
    private double fixedassetsamount;
    
    /**
     * 无形资产
     */
    @Column(name = "intangible_assets")
    private double intangibleassets;
    
    
    /**
     * 长期待摊费用
     */
    @Column(name = "long_prepaid_expenses")
    private double longprepaidexpenses;
    
    
    /**
     * 其他长期资产
     */
    @Column(name = "other_long_assets")
    private double otherlongassets;
    
    /**
     * 无形资产及其他资产合计
     */
    @Column(name = "intangible_and_other_assets")
    private double intangibleandotherassets;
    
    /**
     * 资产合计
     */
    @Column(name = "assets_amount")
    private double assetsamount;

    
    /**
     * 短期借款
     */
    @Column(name = "short_borrow")
    private double shortborrow;
    
    
    /**
     * 应付票据
     */
    @Column(name = "bill_payable")
    private double billpayable;
    
    
    /**
     * 应付账款
     */
    @Column(name = "account_payable")
    private double accountpayable;
    
    /**
     * 代付职工薪酬
     */
    @Column(name = "salaries_payable")
    private double salariespayable;
    
    /**
     * 应付福利费
     */
    @Column(name = "welfare_payable")
    private double welfarepayable;
    
    /**
     * 应付利润
     */
    @Column(name = "profit_payable")
    private double profitpayable;
    
    /**
     * 应交税金
     */
    @Column(name = "tax_payable")
    private double taxpayable;
    
    /**
     * 其他应交款
     */
    @Column(name = "other_payment")
    private double otherpayment;
    
    /**
     * 其他应付款
     */
    @Column(name = "other_payable")
    private double otherpayable;
    
    /**
     * 预提费用
     */
    @Column(name = "accrued_expenses")
    private double accruedexpenses;
    
    /**
     * 一年到期的长期负债
     */
    @Column(name = "one_year_debt")
    private double oneyeardebt;
    
    /**
     * 其他流动负债
     */
    @Column(name = "current_debt")
    private double currentdebt;
    
    
    /**
     * 预收账款
     */
    @Column(name = "pre_accounts_receivable2")
    private double preaccountsreceivable2;
    
    /**
     * 流动负债合计
     */
    @Column(name = "current_debt_amount")
    private double currentdebtamount;
    
    /**
     * 长期借款
     */
    @Column(name = "long_borrow")
    private double longborrow;
    
    /**
     * 长期应付款
     */
    @Column(name = "long_payable")
    private double longpayable;
    
    /**
     * 其他长期负债
     */
    @Column(name = "other_long_debt")
    private double otherlongdebt;
    
    /**
     * 长期负债合计
     */
    @Column(name = "long_debt_amount")
    private double longdebtamount;
    
    /**
     * 负债合计
     */
    @Column(name = "debt_amount")
    private double debtamount;
    
    
    /**
     * 实收资本
     */
    @Column(name = "paid_in_capital")
    private double paidincapital;
    
    
    /**
     * 资本公积
     */
    @Column(name = "capital_reserve")
    private double capitalreserve;
    
    /**
     * 盈余公积
     */
    @Column(name = "surplus_reserve")
    private double surplusreserve;
    
    /**
     * 其中：法定公积
     */
    @Column(name = "legal_reserve")
    private double legalreserve;
    
    /**
     * 未分配利润
     */
    @Column(name = "undistributed_profit")
    private double undistributedprofit;
    
    /**
     * 所有者权益（或股东权益）合计
     */
    @Column(name = "owner_equity")
    private double ownerequity;
    
    /**
     * 负债和所有者权益（股东权益）总计
     */
    @Column(name = "owner_equity_amount")
    private double ownerequityamount;

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

	public double getCapital() {
		return capital;
	}

	public void setCapital(double capital) {
		this.capital = capital;
	}

	public double getShortinvestment() {
		return shortinvestment;
	}

	public void setShortinvestment(double shortinvestment) {
		this.shortinvestment = shortinvestment;
	}

	public double getBill() {
		return bill;
	}

	public void setBill(double bill) {
		this.bill = bill;
	}

	public double getDividend() {
		return dividend;
	}

	public void setDividend(double dividend) {
		this.dividend = dividend;
	}

	public double getAccountreceivable() {
		return accountreceivable;
	}

	public void setAccountreceivable(double accountreceivable) {
		this.accountreceivable = accountreceivable;
	}

	public double getOtherreceivable() {
		return otherreceivable;
	}

	public void setOtherreceivable(double otherreceivable) {
		this.otherreceivable = otherreceivable;
	}

	public double getStock() {
		return stock;
	}

	public void setStock(double stock) {
		this.stock = stock;
	}

	public double getPrepaidexpenses() {
		return prepaidexpenses;
	}

	public void setPrepaidexpenses(double prepaidexpenses) {
		this.prepaidexpenses = prepaidexpenses;
	}

	public double getDebtsinvestment() {
		return debtsinvestment;
	}

	public void setDebtsinvestment(double debtsinvestment) {
		this.debtsinvestment = debtsinvestment;
	}

	public double getLiquidassets() {
		return liquidassets;
	}

	public void setLiquidassets(double liquidassets) {
		this.liquidassets = liquidassets;
	}

	public double getPreaccountsreceivable() {
		return preaccountsreceivable;
	}

	public void setPreaccountsreceivable(double preaccountsreceivable) {
		this.preaccountsreceivable = preaccountsreceivable;
	}

	public double getLiquidassetsamount() {
		return liquidassetsamount;
	}

	public void setLiquidassetsamount(double liquidassetsamount) {
		this.liquidassetsamount = liquidassetsamount;
	}

	public double getLongstockinvestment() {
		return longstockinvestment;
	}

	public void setLongstockinvestment(double longstockinvestment) {
		this.longstockinvestment = longstockinvestment;
	}

	public double getLongdebtsinvestment() {
		return longdebtsinvestment;
	}

	public void setLongdebtsinvestment(double longdebtsinvestment) {
		this.longdebtsinvestment = longdebtsinvestment;
	}

	public double getLonginvestmentamount() {
		return longinvestmentamount;
	}

	public void setLonginvestmentamount(double longinvestmentamount) {
		this.longinvestmentamount = longinvestmentamount;
	}

	public double getDepreciation() {
		return depreciation;
	}

	public void setDepreciation(double depreciation) {
		this.depreciation = depreciation;
	}

	public double getFixedassetsvalue() {
		return fixedassetsvalue;
	}

	public void setFixedassetsvalue(double fixedassetsvalue) {
		this.fixedassetsvalue = fixedassetsvalue;
	}

	public double getEngineeringmaterial() {
		return engineeringmaterial;
	}

	public void setEngineeringmaterial(double engineeringmaterial) {
		this.engineeringmaterial = engineeringmaterial;
	}

	public double getFixedassetsclean() {
		return fixedassetsclean;
	}

	public void setFixedassetsclean(double fixedassetsclean) {
		this.fixedassetsclean = fixedassetsclean;
	}

	public double getFixedassetsamount() {
		return fixedassetsamount;
	}

	public void setFixedassetsamount(double fixedassetsamount) {
		this.fixedassetsamount = fixedassetsamount;
	}

	public double getIntangibleassets() {
		return intangibleassets;
	}

	public void setIntangibleassets(double intangibleassets) {
		this.intangibleassets = intangibleassets;
	}

	public double getLongprepaidexpenses() {
		return longprepaidexpenses;
	}

	public void setLongprepaidexpenses(double longprepaidexpenses) {
		this.longprepaidexpenses = longprepaidexpenses;
	}

	public double getOtherlongassets() {
		return otherlongassets;
	}

	public void setOtherlongassets(double otherlongassets) {
		this.otherlongassets = otherlongassets;
	}

	public double getIntangibleandotherassets() {
		return intangibleandotherassets;
	}

	public void setIntangibleandotherassets(double intangibleandotherassets) {
		this.intangibleandotherassets = intangibleandotherassets;
	}

	public double getAssetsamount() {
		return assetsamount;
	}

	public void setAssetsamount(double assetsamount) {
		this.assetsamount = assetsamount;
	}

	public double getShortborrow() {
		return shortborrow;
	}

	public void setShortborrow(double shortborrow) {
		this.shortborrow = shortborrow;
	}

	public double getBillpayable() {
		return billpayable;
	}

	public void setBillpayable(double billpayable) {
		this.billpayable = billpayable;
	}

	public double getAccountpayable() {
		return accountpayable;
	}

	public void setAccountpayable(double accountpayable) {
		this.accountpayable = accountpayable;
	}

	public double getSalariespayable() {
		return salariespayable;
	}

	public void setSalariespayable(double salariespayable) {
		this.salariespayable = salariespayable;
	}

	public double getWelfarepayable() {
		return welfarepayable;
	}

	public void setWelfarepayable(double welfarepayable) {
		this.welfarepayable = welfarepayable;
	}

	public double getProfitpayable() {
		return profitpayable;
	}

	public void setProfitpayable(double profitpayable) {
		this.profitpayable = profitpayable;
	}

	public double getTaxpayable() {
		return taxpayable;
	}

	public void setTaxpayable(double taxpayable) {
		this.taxpayable = taxpayable;
	}

	public double getOtherpayment() {
		return otherpayment;
	}

	public void setOtherpayment(double otherpayment) {
		this.otherpayment = otherpayment;
	}

	public double getOtherpayable() {
		return otherpayable;
	}

	public void setOtherpayable(double otherpayable) {
		this.otherpayable = otherpayable;
	}

	public double getAccruedexpenses() {
		return accruedexpenses;
	}

	public void setAccruedexpenses(double accruedexpenses) {
		this.accruedexpenses = accruedexpenses;
	}

	public double getOneyeardebt() {
		return oneyeardebt;
	}

	public void setOneyeardebt(double oneyeardebt) {
		this.oneyeardebt = oneyeardebt;
	}

	public double getCurrentdebt() {
		return currentdebt;
	}

	public void setCurrentdebt(double currentdebt) {
		this.currentdebt = currentdebt;
	}

	public double getPreaccountsreceivable2() {
		return preaccountsreceivable2;
	}

	public void setPreaccountsreceivable2(double preaccountsreceivable2) {
		this.preaccountsreceivable2 = preaccountsreceivable2;
	}

	public double getCurrentdebtamount() {
		return currentdebtamount;
	}

	public void setCurrentdebtamount(double currentdebtamount) {
		this.currentdebtamount = currentdebtamount;
	}

	public double getLongborrow() {
		return longborrow;
	}

	public void setLongborrow(double longborrow) {
		this.longborrow = longborrow;
	}

	public double getLongpayable() {
		return longpayable;
	}

	public void setLongpayable(double longpayable) {
		this.longpayable = longpayable;
	}

	public double getOtherlongdebt() {
		return otherlongdebt;
	}

	public void setOtherlongdebt(double otherlongdebt) {
		this.otherlongdebt = otherlongdebt;
	}

	public double getLongdebtamount() {
		return longdebtamount;
	}

	public void setLongdebtamount(double longdebtamount) {
		this.longdebtamount = longdebtamount;
	}

	public double getDebtamount() {
		return debtamount;
	}

	public void setDebtamount(double debtamount) {
		this.debtamount = debtamount;
	}

	public double getPaidincapital() {
		return paidincapital;
	}

	public void setPaidincapital(double paidincapital) {
		this.paidincapital = paidincapital;
	}

	public double getCapitalreserve() {
		return capitalreserve;
	}

	public void setCapitalreserve(double capitalreserve) {
		this.capitalreserve = capitalreserve;
	}

	public double getSurplusreserve() {
		return surplusreserve;
	}

	public void setSurplusreserve(double surplusreserve) {
		this.surplusreserve = surplusreserve;
	}

	public double getLegalreserve() {
		return legalreserve;
	}

	public void setLegalreserve(double legalreserve) {
		this.legalreserve = legalreserve;
	}

	public double getUndistributedprofit() {
		return undistributedprofit;
	}

	public void setUndistributedprofit(double undistributedprofit) {
		this.undistributedprofit = undistributedprofit;
	}

	public double getOwnerequity() {
		return ownerequity;
	}

	public void setOwnerequity(double ownerequity) {
		this.ownerequity = ownerequity;
	}

	public double getOwnerequityamount() {
		return ownerequityamount;
	}

	public void setOwnerequityamount(double ownerequityamount) {
		this.ownerequityamount = ownerequityamount;
	}
    
    
}