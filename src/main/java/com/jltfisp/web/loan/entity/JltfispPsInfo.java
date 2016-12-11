package com.jltfisp.web.loan.entity;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
/**
 * 保费补贴企业信息关联类
 * @author cuihong.ge
 *
 */
@Table(name="jltfisp_ps_info")
public class JltfispPsInfo {
    /**
     * 主键id
     */
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	/**
     * 关联的保费企业基本信息id
     */
	@Column(name="info_id")
	private Integer infoId;
	/**
     * 合同编号
     */
	@Column(name="contract_number")
	private String contractNumber;
	/**
     * 保单号
     */
	@Column(name="policy_number")
	private String policyNumber;
	/**
     * 贷款资金(实际支付保额金额)
     */
	@Column(name="loan_money")
	private Double loanMoney;
	/**
     * 贷款银行
     */
	@Column(name="loan_bank")
	private String loanBank;
	/**
     * 保险公司
     */
	@Column(name="insurance_company")
	private String insuranceCompany;
	/**
     * 保费金额
     */
	@Column(name="premium_money")
	private Double premiumMoney;
	/**
     * 还款日
     */
	@Column(name="repayment_date")
	private String repaymentDate;
	/**
     * 本金+利息
     */
	@Column(name="principal_interest")
	private Double principalInterest;
	/**
     * 放贷日
     */
	@Column(name="lend_date")
	private String lendDate;
	/**
     * 贷款期限/月
     */
	@Column(name="loan_term")
	private Integer loanTerm;
	
	
	public JltfispPsInfo() {
		super();
	}
	
	

	public JltfispPsInfo(Integer id, Integer infoId, String contractNumber,
			String policyNumber, Double loanMoney, String loanBank,
			String insuranceCompany, Double premiumMoney, String repaymentDate,
			Double principalInterest, String lendDate, Integer loanTerm) {
		super();
		this.id = id;
		this.infoId = infoId;
		this.contractNumber = contractNumber;
		this.policyNumber = policyNumber;
		this.loanMoney = loanMoney;
		this.loanBank = loanBank;
		this.insuranceCompany = insuranceCompany;
		this.premiumMoney = premiumMoney;
		this.repaymentDate = repaymentDate;
		this.principalInterest = principalInterest;
		this.lendDate = lendDate;
		this.loanTerm = loanTerm;
	}



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
	public String getContractNumber() {
		return contractNumber;
	}
	public void setContractNumber(String contractNumber) {
		this.contractNumber = contractNumber;
	}
	public String getPolicyNumber() {
		return policyNumber;
	}
	public void setPolicyNumber(String policyNumber) {
		this.policyNumber = policyNumber;
	}
	public Double getLoanMoney() {
		return loanMoney;
	}
	public void setLoanMoney(Double loanMoney) {
		this.loanMoney = loanMoney;
	}
	public String getLoanBank() {
		return loanBank;
	}
	public void setLoanBank(String loanBank) {
		this.loanBank = loanBank;
	}

	public String getInsuranceCompany() {
		return insuranceCompany;
	}

	public void setInsuranceCompany(String insuranceCompany) {
		this.insuranceCompany = insuranceCompany;
	}

	public Double getPremiumMoney() {
		return premiumMoney;
	}
	public void setPremiumMoney(Double premiumMoney) {
		this.premiumMoney = premiumMoney;
	}
	public String getRepaymentDate() {
		return repaymentDate;
	}
	public void setRepaymentDate(String repaymentDate) {
		this.repaymentDate = repaymentDate;
	}
	public Double getPrincipalInterest() {
		return principalInterest;
	}
	public void setPrincipalInterest(Double principalInterest) {
		this.principalInterest = principalInterest;
	}
	public String getLendDate() {
		return lendDate;
	}
	public void setLendDate(String lendDate) {
		this.lendDate = lendDate;
	}
	public Integer getLoanTerm() {
		return loanTerm;
	}
	public void setLoanTerm(Integer loanTerm) {
		this.loanTerm = loanTerm;
	}
	
}
