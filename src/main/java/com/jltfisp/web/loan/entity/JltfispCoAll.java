/*******************************************************************************
 * Copyright (c) 2016.12.1 by shuxi.zhang.
 * Copyright © 2016 Shenzhen GTA Education Tech Ltd. All rights reserved
 ******************************************************************************/

package com.jltfisp.web.loan.entity;

import java.util.List;


public class JltfispCoAll {
	//企业基本信息
    JltfispCoBaseDto jltfispCoBase;
    //企业概况
    JltfispCoOther jltfispCoOther;
    //资产负债表
    JltfispCoDebt JltfispCoDebt;
    //附件表
    List<JltfispCoFile> jltfispCoFileList;
    //利润表
    List<JltfispCoProfitDto> jltfispCoProfit;
	//企业其他情况表
    JltfispCoProfile jltfispCoProfile;
    //附加财务明细
    List<JltfispCoFinancialDto> jltfispCoFinancialList;
    //申请表格
    JltfispCoFillInApply jltfispCoFillInApply;
    public JltfispCoBaseDto getJltfispCoBase() {
		return jltfispCoBase;
	}
	public void setJltfispCoBase(JltfispCoBaseDto jltfispCoBase) {
		this.jltfispCoBase = jltfispCoBase;
	}
	public JltfispCoOther getJltfispCoOther() {
		return jltfispCoOther;
	}
	public void setJltfispCoOther(JltfispCoOther jltfispCoOther) {
		this.jltfispCoOther = jltfispCoOther;
	}
	public JltfispCoDebt getJltfispCoDebt() {
		return JltfispCoDebt;
	}
	public void setJltfispCoDebt(JltfispCoDebt jltfispCoDebt) {
		JltfispCoDebt = jltfispCoDebt;
	}
	public List<JltfispCoFile> getJltfispCoFileList() {
		return jltfispCoFileList;
	}
	public void setJltfispCoFileList(List<JltfispCoFile> jltfispCoFileList) {
		this.jltfispCoFileList = jltfispCoFileList;
	}
	
	public List<JltfispCoProfitDto> getJltfispCoProfit() {
		return jltfispCoProfit;
	}
	public void setJltfispCoProfit(List<JltfispCoProfitDto> jltfispCoProfit) {
		this.jltfispCoProfit = jltfispCoProfit;
	}
	public JltfispCoProfile getJltfispCoProfile() {
		return jltfispCoProfile;
	}
	public void setJltfispCoProfile(JltfispCoProfile jltfispCoProfile) {
		this.jltfispCoProfile = jltfispCoProfile;
	}
	public List<JltfispCoFinancialDto> getJltfispCoFinancialList() {
		return jltfispCoFinancialList;
	}
	public void setJltfispCoFinancialList(
			List<JltfispCoFinancialDto> jltfispCoFinancialList) {
		this.jltfispCoFinancialList = jltfispCoFinancialList;
	}
	public JltfispCoFillInApply getJltfispCoFillInApply() {
		return jltfispCoFillInApply;
	}
	public void setJltfispCoFillInApply(
			JltfispCoFillInApply jltfispCoFillInApply) {
		this.jltfispCoFillInApply = jltfispCoFillInApply;
	}
    
}