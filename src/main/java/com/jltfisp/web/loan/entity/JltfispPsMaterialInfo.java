package com.jltfisp.web.loan.entity;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
/**
 * 保费补贴申请第二部填写内容表
 * @author cuihong.ge
 *
 */
@Table(name = "jltfisp_ps_material_info")
public class JltfispPsMaterialInfo {
 /**
  * 主键id
  */
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
 private Integer id;
 /**
  * 关联的申请企业的基本信息id
  */
 @Column(name="info_id")
 private Integer infoId;
 /**
  * 贷款上一年度总收入
  */
 @Column(name="grossed_last")
 private Double grossedLast;
 /**
  * 贷款该年度总收入
  */
 @Column(name="grossed_this")
 private Double grossedThis;
 /**
  * 贷款上一年度比上年度增长%	(总收入)
  */
 @Column(name="increase_grossed_last")
 private Double increaseGrossedLast;
 /**
  * 贷款当年比上年度增长%（总收入）
  */
 @Column(name="increase_grossed_this")
 private Double increaseGrossedThis;
 /**
  * 贷款上一年度研发投入
  */
 @Column(name="investment_last")
 private Double investmentLast;
 /**
  * 贷款当年研发投入
  */
 @Column(name="investment_this")
 private Double investmentThis;
 /**
  * 贷款上一年度比上年度增长%（研发投入）
  */
 @Column(name="increase_investment_last")
 private Double increaseInvestmentLast;
 /**
  * 贷款当年比上年度增长%（研发投入）
  */
 @Column(name="increase_investment_this")
 private Double increaseInvestmentThis;
 
 /**
  * 贷款上一年度利润
  */
 @Column(name="profit_last")
 private Double profitLast;
 /**
  * 贷款当年利润
  */
 @Column(name="profit_this")
 private Double profitThis;
 /**
  * 贷款上一年度比上年度增长%（利润）
  */
 @Column(name="increase_profit_last")
 private Double increaseProfitLast;
 /**
  * 贷款当年比上年度增长%（利润）
  */
 @Column(name="increase_profit_this")
 private Double increaseProfitThis;
 /**
  * 贷款上一年度纳税总额
  */
 @Column(name="taxes_last")
 private Double  taxesLast;
 /**
  * 贷款该年纳税总额
  */
 @Column(name="taxes_this")
 private Double taxesThis;
 /**
  * 贷款上一年度比上年度增长%（纳税总额）
  */
 @Column(name="increase_taxes_last")
 private Double increaseTaxesLast;
 /**
  * 贷款该年度比上年度增长%（纳税总额）
  */
 @Column(name="increase_taxes_this")
 private Double increaseTaxesThis;
 /**
  * 贷款上一年度发明
  */
 @Column(name="invention_last")
 private Integer inventionLast;
 /**
  * 贷款该年发明
  */
 @Column(name="invention_this")
 private Integer inventionThis;
 /**
  * 贷款上一年度实用新型
  */
 @Column(name="utilitarian_last")
 private Integer utilitarianLast;
 /**
  * 贷款该年度实用新型
  */
 @Column(name="utilitarian_this")
 private Integer utilitarianThis;
 /**
  * 贷款上一年度外观设计
  */
 @Column(name="appearance_last")
 private Integer appearanceLast;
 /**
  * 贷款该年度外观设计
  */
 @Column(name="appearance_this")
 private Integer appearanceThis;
 /**
  * 贷款上一年度电路图设计
  */
 @Column(name="ic_last")
 private Integer icLast;
 /**
  * 贷款该年度电路图设计
  */
 @Column(name="ic_this")
 private Integer icThis;
 /**
  * 贷款该年度软件著作权
  */
 @Column(name="software_this")
 private Integer softwareThis;
 /**
  * 贷款上一年度软件著作权
  */
 @Column(name="software_last")
 private Integer softwareLast;
 /**
  * 贷款上一年度软件组著作权
  */
 @Column(name="softwares_last")
 private Integer softwaresLast;
 /**
  * 贷款该年度软件组著作权
  */
 @Column(name="softwares_this")
 private Integer softwaresThis;
 /**
  * 贷款上一年度新增知识产权
  */
 @Column(name="knowledge_last")
 private Integer knowledgeLast;
 /**
  * 贷款该年度新增知识产权
  */
 @Column(name="knowledge_this")
 private Integer knowledgeThis;
 /**
  * 贷款期间新获企业资质和各种认定
  */
 @Column(name="cognizance")
 private Integer cognizance;
 @Transient
 private String cognizanceValue;
 /**
  * 贷款期间新获企业资质和各种认定补充文本
  */
 @Column(name="cognizance_text")
 private String cognizanceText;
 /**
  * 新获政府项目资助情况名称和资助金额
  */
 @Column(name="meta")
 private String meta;
 
public Integer getId() {
	return id;
}
public void setId(Integer id) {
	this.id = id;
}
public Integer getInfoId() {
	return infoId;
}
public void setInfoId(Integer infoId) {
	this.infoId = infoId;
}
public Double getGrossedLast() {
	return grossedLast;
}
public void setGrossedLast(Double grossedLast) {
	this.grossedLast = grossedLast;
}
public Double getGrossedThis() {
	return grossedThis;
}
public void setGrossedThis(Double grossedThis) {
	this.grossedThis = grossedThis;
}
public Double getIncreaseGrossedLast() {
	return increaseGrossedLast;
}
public void setIncreaseGrossedLast(Double increaseGrossedLast) {
	this.increaseGrossedLast = increaseGrossedLast;
}
public Double getIncreaseGrossedThis() {
	return increaseGrossedThis;
}
public void setIncreaseGrossedThis(Double increaseGrossedThis) {
	this.increaseGrossedThis = increaseGrossedThis;
}
public Double getInvestmentLast() {
	return investmentLast;
}
public void setInvestmentLast(Double investmentLast) {
	this.investmentLast = investmentLast;
}
public Double getInvestmentThis() {
	return investmentThis;
}
public void setInvestmentThis(Double investmentThis) {
	this.investmentThis = investmentThis;
}
public Double getProfitLast() {
	return profitLast;
}
public void setProfitLast(Double profitLast) {
	this.profitLast = profitLast;
}
public Double getProfitThis() {
	return profitThis;
}
public void setProfitThis(Double profitThis) {
	this.profitThis = profitThis;
}
public Double getIncreaseProfitLast() {
	return increaseProfitLast;
}
public void setIncreaseProfitLast(Double increaseProfitLast) {
	this.increaseProfitLast = increaseProfitLast;
}
public Double getIncreaseProfitThis() {
	return increaseProfitThis;
}
public void setIncreaseProfitThis(Double increaseProfitThis) {
	this.increaseProfitThis = increaseProfitThis;
}
public Double getTaxesLast() {
	return taxesLast;
}
public void setTaxesLast(Double taxesLast) {
	this.taxesLast = taxesLast;
}
public Double getTaxesThis() {
	return taxesThis;
}
public void setTaxesThis(Double taxesThis) {
	this.taxesThis = taxesThis;
}
public Double getIncreaseTaxesLast() {
	return increaseTaxesLast;
}
public void setIncreaseTaxesLast(Double increaseTaxesLast) {
	this.increaseTaxesLast = increaseTaxesLast;
}
public Double getIncreaseTaxesThis() {
	return increaseTaxesThis;
}
public void setIncreaseTaxesThis(Double increaseTaxesThis) {
	this.increaseTaxesThis = increaseTaxesThis;
}
public Integer getInventionLast() {
	return inventionLast;
}
public void setInventionLast(Integer inventionLast) {
	this.inventionLast = inventionLast;
}
public Integer getInventionThis() {
	return inventionThis;
}
public void setInventionThis(Integer inventionThis) {
	this.inventionThis = inventionThis;
}
public Integer getUtilitarianLast() {
	return utilitarianLast;
}
public void setUtilitarianLast(Integer utilitarianLast) {
	this.utilitarianLast = utilitarianLast;
}
public Integer getUtilitarianThis() {
	return utilitarianThis;
}
public void setUtilitarianThis(Integer utilitarianThis) {
	this.utilitarianThis = utilitarianThis;
}
public Integer getAppearanceLast() {
	return appearanceLast;
}
public void setAppearanceLast(Integer appearanceLast) {
	this.appearanceLast = appearanceLast;
}
public Integer getAppearanceThis() {
	return appearanceThis;
}
public void setAppearanceThis(Integer appearanceThis) {
	this.appearanceThis = appearanceThis;
}
public Integer getIcLast() {
	return icLast;
}
public void setIcLast(Integer icLast) {
	this.icLast = icLast;
}
public Integer getIcThis() {
	return icThis;
}
public void setIcThis(Integer icThis) {
	this.icThis = icThis;
}
public Integer getSoftwareThis() {
	return softwareThis;
}
public void setSoftwareThis(Integer softwareThis) {
	this.softwareThis = softwareThis;
}
public Integer getSoftwareLast() {
	return softwareLast;
}
public void setSoftwareLast(Integer softwareLast) {
	this.softwareLast = softwareLast;
}
public Integer getSoftwaresLast() {
	return softwaresLast;
}
public void setSoftwaresLast(Integer softwaresLast) {
	this.softwaresLast = softwaresLast;
}
public Integer getSoftwaresThis() {
	return softwaresThis;
}
public void setSoftwaresThis(Integer softwaresThis) {
	this.softwaresThis = softwaresThis;
}
public Integer getKnowledgeLast() {
	return knowledgeLast;
}
public void setKnowledgeLast(Integer knowledgeLast) {
	this.knowledgeLast = knowledgeLast;
}
public Integer getKnowledgeThis() {
	return knowledgeThis;
}
public void setKnowledgeThis(Integer knowledgeThis) {
	this.knowledgeThis = knowledgeThis;
}
public Integer getCognizance() {
	return cognizance;
}
public void setCognizance(Integer cognizance) {
	this.cognizance = cognizance;
}
public String getCognizanceText() {
	return cognizanceText;
}
public void setCognizanceText(String cognizanceText) {
	this.cognizanceText = cognizanceText;
}
public String getMeta() {
	return meta;
}
public void setMeta(String meta) {
	this.meta = meta;
}
public Double getIncreaseInvestmentLast() {
	return increaseInvestmentLast;
}
public void setIncreaseInvestmentLast(Double increaseInvestmentLast) {
	this.increaseInvestmentLast = increaseInvestmentLast;
}
public Double getIncreaseInvestmentThis() {
	return increaseInvestmentThis;
}
public void setIncreaseInvestmentThis(Double increaseInvestmentThis) {
	this.increaseInvestmentThis = increaseInvestmentThis;
}
public String getCognizanceValue() {
	return cognizanceValue;
}
public void setCognizanceValue(String cognizanceValue) {
	this.cognizanceValue = cognizanceValue;
}
 
}
