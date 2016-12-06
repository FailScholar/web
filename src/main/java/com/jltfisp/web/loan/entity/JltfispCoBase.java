/*******************************************************************************
 * Copyright (c) 2016.11.24 by shuxi.zhang.
 * Copyright © 2016 Shenzhen GTA Education Tech Ltd. All rights reserved
 ******************************************************************************/

package com.jltfisp.web.loan.entity;

import javax.persistence.*;

@Table(name = "jltfisp_co_base")
public class JltfispCoBase {
    
    /**
     * ID
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    /**
     * 企业名称
     */
    @Column(name = "company")
    private String company;

    /**
     * 成立时间
     */
    @Column(name = "establishTime")
    private String establishTime;

    /**
     * 注册资本
     */
    @Column(name = "registeredCapital")
    private float registeredCapital;

    /**
     * 注册地址
     */
    @Column(name = "registeredAddress")
    private String registeredAddress;

    /**
     * 办公省份
     */
    @Column(name = "officeProv")
    private int officeProv;
    
    /**
     * 办公城市
     */
    @Column(name = "officeCity")
    private int officeCity;

    /**
     * 办公区域
     */
    @Column(name = "officeArea")
    private int officeArea;

    /**
     * 办公地址
     */
    @Column(name = "officeAddress")
    private String officeAddress;
    
    /**
     * 生产地址省份
     */
    @Column(name = "productProv")
    private int productProv;
    
    /**
     * 生产地址城市
     */
    @Column(name = "productCity")
    private int productCity;
    
    /**
     * 生产地址区域
     */
    @Column(name = "productArea")
    private int productArea;
    
    /**
     * 生产地址
     */
    @Column(name = "productAddress")
    private String productAddress;
    
    /**
     * 法人代表
     */
    @Column(name = "corporateRepresentative")
    private String corporateRepresentative;
    
    /**
     * 手机号
     */
    @Column(name = "mobilephone")
    private String mobilephone;
    
    /**
     * 邮箱
     */
    @Column(name = "email")
    private String email;
    
    /**
     * 身份证号码
     */
    @Column(name = "IDcard")
    private String IDcard;
    
    /**
     * 统一社会信用代码
     */
    @Column(name = "socialCreditCode")
    private String socialCreditCode;
    
    /**
     * 税务登记号
     */
    @Column(name = "cnpj")
    private String cnpj;
    
    /**
     * 贷款卡号
     */
    @Column(name = "cardNo")
    private String cardNo;
    
    /**
     * 基本账户开户银行
     */
    @Column(name = "basicAccountBank")
    private String basicAccountBank;
    
    /**
     * 基本账户卡号
     */
    @Column(name = "basicAccountCard")
    private String basicAccountCard;
    
    /**
     * 一般账户开户银行
     */
    @Column(name = "generalAccountBank")
    private String generalAccountBank;
    
    /**
     * 一般账户卡号
     */
    @Column(name = "generalAccountCard")
    private String generalAccountCard;
    
    /**
     * 联系人
     */
    @Column(name = "linkMan")
    private String linkMan;
    
    /**
     * 职务
     */
    @Column(name = "duties")
    private String duties;
    
    /**
     * 联系人手机号
     */
    @Column(name = "linkMobile")
    private String linkMobile;
    
    /**
     * 区号
     */
    @Column(name = "zoneDescription")
    private String zoneDescription;
    
    /**
     * 电话/传真
     */
    @Column(name = "phoneOrFax")
    private String phoneOrFax;
    
    /**
     * 联系人电子邮件
     */
    @Column(name = "linkEmail")
    private String linkEmail;
    
    /**
     * 第一股东姓名
     */
    @Column(name = "oneShareholderName")
    private String oneShareholderName;
    /**
     * 第一股东股份
     */
    @Column(name = "oneStock")
    private int oneStock;
    /**
     * 第二股东姓名
     */
    @Column(name = "twoShareholderName")
    private String twoShareholderName;
    /**
     * 第二股东股份
     */
    @Column(name = "twoStock")
    private int twoStock;
    
    /**
     * 第三股东姓名
     */
    @Column(name = "threeShareholerName")
    private String threeShareholerName;
    
    /**
     * 第三股东股份
     */
    @Column(name = "threeStock")
    private int threeStock;
    
    /**
     * 创建时间
     */
    @Column(name = "createTime")
    private String createTime;
    
    /**
     * 企业申请账户id
     */
    @Column(name = "user_id")
    private int userid;
    
    /**
     * 本年度已签订所有合同的标的总额
     */
    @Column(name = "agreementsAmount")
    private float agreementsAmount;
    
    /**
     * 实际控制人或核心股东个人经营性贷款
     */
    @Column(name = "loanAccount")
    private float loanAccount;
    
    /**
     * 其他说明
     */
    @Column(name = "otherDesc")
    private String otherDesc;
    
    public String getTecdomain() {
		return tecdomain;
	}

	public void setTecdomain(String tecdomain) {
		this.tecdomain = tecdomain;
	}

	public int getLastyearsellscale() {
		return lastyearsellscale;
	}

	public void setLastyearsellscale(int lastyearsellscale) {
		this.lastyearsellscale = lastyearsellscale;
	}

	public int getWorkernumber() {
		return workernumber;
	}

	public void setWorkernumber(int workernumber) {
		this.workernumber = workernumber;
	}

	public String getReferee() {
		return referee;
	}

	public void setReferee(String referee) {
		this.referee = referee;
	}

	public String getRefereecompany() {
		return refereecompany;
	}

	public void setRefereecompany(String refereecompany) {
		this.refereecompany = refereecompany;
	}

	public String getRefereemobile() {
		return refereemobile;
	}

	public void setRefereemobile(String refereemobile) {
		this.refereemobile = refereemobile;
	}

	public String getRefereeemail() {
		return refereeemail;
	}

	public void setRefereeemail(String refereeemail) {
		this.refereeemail = refereeemail;
	}

	public String getCompanyurl() {
		return companyurl;
	}

	public void setCompanyurl(String companyurl) {
		this.companyurl = companyurl;
	}

	public String getProjectname() {
		return projectname;
	}

	public void setProjectname(String projectname) {
		this.projectname = projectname;
	}

	public String getMarketproductsummary() {
		return marketproductsummary;
	}

	public void setMarketproductsummary(String marketproductsummary) {
		this.marketproductsummary = marketproductsummary;
	}

	public String getManagerteamsummary() {
		return managerteamsummary;
	}

	public void setManagerteamsummary(String managerteamsummary) {
		this.managerteamsummary = managerteamsummary;
	}

	public String getTechnologyqualifications() {
		return technologyqualifications;
	}

	public void setTechnologyqualifications(String technologyqualifications) {
		this.technologyqualifications = technologyqualifications;
	}

	public int getBusinesstype() {
		return businesstype;
	}

	public void setBusinesstype(int businesstype) {
		this.businesstype = businesstype;
	}

	public int getApplystate() {
		return applystate;
	}

	public void setApplystate(int applystate) {
		this.applystate = applystate;
	}

	/**
     * 所属技术领域
     */
    @Column(name = "tec_domain")
    private String tecdomain;
    
    /**
     * 企业上年度销售规模
     */
    @Column(name = "last_year_sell_scale")
    private int lastyearsellscale;
    
    /**
     * 职工人数
     */
    @Column(name = "worker_number")
    private int workernumber;
    
    /**
     * 推荐人
     */
    @Column(name = "referee")
    private String referee;
    
    /**
     * 推荐人单位
     */
    @Column(name = "referee_company")
    private String refereecompany;
    
    /**
     * 推荐人手机
     */
    @Column(name = "referee_mobile")
    private String refereemobile;
    
    /**
     * 推荐人邮箱
     */
    @Column(name = "referee_email")
    private String refereeemail;
    
    
    /**
     * 公司网址
     */
    @Column(name = "company_url")
    private String companyurl;
    
    
    /**
     * 项目名称
     */
    @Column(name = "project_name")
    private String projectname;
    
    
    /**
     * 市场 及产品概述
     */
    @Column(name = "market_product_summary")
    private String marketproductsummary;
    
    /**
     * 管理团队概述
     */
    @Column(name = "manager_team_summary")
    private String managerteamsummary;
    
    /**
     * 科技资质
     */
    @Column(name = "technology_qualifications")
    private String technologyqualifications;
    
    /**
     * 业务类型
     */
    @Column(name = "business_type")
    private int businesstype;
    
    /**
     * 业务申请状态
     */
    @Column(name = "apply_state")
    private int applystate;
    /**
     * 贷款银行
     */
    @Column(name="loan_bank_name")
    private String loanBankName;
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getEstablishTime() {
		return establishTime;
	}

	public void setEstablishTime(String establishTime) {
		this.establishTime = establishTime;
	}

	public float getRegisteredCapital() {
		return registeredCapital;
	}

	public void setRegisteredCapital(float registeredCapital) {
		this.registeredCapital = registeredCapital;
	}

	public String getRegisteredAddress() {
		return registeredAddress;
	}

	public void setRegisteredAddress(String registeredAddress) {
		this.registeredAddress = registeredAddress;
	}

	public int getOfficeProv() {
		return officeProv;
	}

	public void setOfficeProv(int officeProv) {
		this.officeProv = officeProv;
	}

	public int getOfficeCity() {
		return officeCity;
	}

	public void setOfficeCity(int officeCity) {
		this.officeCity = officeCity;
	}

	public int getOfficeArea() {
		return officeArea;
	}

	public void setOfficeArea(int officeArea) {
		this.officeArea = officeArea;
	}

	public String getOfficeAddress() {
		return officeAddress;
	}

	public void setOfficeAddress(String officeAddress) {
		this.officeAddress = officeAddress;
	}

	public int getProductProv() {
		return productProv;
	}

	public void setProductProv(int productProv) {
		this.productProv = productProv;
	}

	public int getProductCity() {
		return productCity;
	}

	public void setProductCity(int productCity) {
		this.productCity = productCity;
	}

	public int getProductArea() {
		return productArea;
	}

	public void setProductArea(int productArea) {
		this.productArea = productArea;
	}

	public String getProductAddress() {
		return productAddress;
	}

	public void setProductAddress(String productAddress) {
		this.productAddress = productAddress;
	}

	public String getCorporateRepresentative() {
		return corporateRepresentative;
	}

	public void setCorporateRepresentative(String corporateRepresentative) {
		this.corporateRepresentative = corporateRepresentative;
	}

	public String getMobilephone() {
		return mobilephone;
	}

	public void setMobilephone(String mobilephone) {
		this.mobilephone = mobilephone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getIDcard() {
		return IDcard;
	}

	public void setIDcard(String iDcard) {
		IDcard = iDcard;
	}

	public String getSocialCreditCode() {
		return socialCreditCode;
	}

	public void setSocialCreditCode(String socialCreditCode) {
		this.socialCreditCode = socialCreditCode;
	}

	public String getCnpj() {
		return cnpj;
	}

	public void setCnpj(String cnpj) {
		this.cnpj = cnpj;
	}

	public String getCardNo() {
		return cardNo;
	}

	public void setCardNo(String cardNo) {
		this.cardNo = cardNo;
	}

	public String getBasicAccountBank() {
		return basicAccountBank;
	}

	public void setBasicAccountBank(String basicAccountBank) {
		this.basicAccountBank = basicAccountBank;
	}

	public String getBasicAccountCard() {
		return basicAccountCard;
	}

	public void setBasicAccountCard(String basicAccountCard) {
		this.basicAccountCard = basicAccountCard;
	}

	public String getGeneralAccountBank() {
		return generalAccountBank;
	}

	public void setGeneralAccountBank(String generalAccountBank) {
		this.generalAccountBank = generalAccountBank;
	}

	public String getGeneralAccountCard() {
		return generalAccountCard;
	}

	public void setGeneralAccountCard(String generalAccountCard) {
		this.generalAccountCard = generalAccountCard;
	}

	public String getLinkMan() {
		return linkMan;
	}

	public void setLinkMan(String linkMan) {
		this.linkMan = linkMan;
	}

	public String getDuties() {
		return duties;
	}

	public void setDuties(String duties) {
		this.duties = duties;
	}

	public String getLinkMobile() {
		return linkMobile;
	}

	public void setLinkMobile(String linkMobile) {
		this.linkMobile = linkMobile;
	}

	public String getZoneDescription() {
		return zoneDescription;
	}

	public void setZoneDescription(String zoneDescription) {
		this.zoneDescription = zoneDescription;
	}

	public String getPhoneOrFax() {
		return phoneOrFax;
	}

	public void setPhoneOrFax(String phoneOrFax) {
		this.phoneOrFax = phoneOrFax;
	}

	public String getLinkEmail() {
		return linkEmail;
	}

	public void setLinkEmail(String linkEmail) {
		this.linkEmail = linkEmail;
	}

	public String getOneShareholderName() {
		return oneShareholderName;
	}

	public void setOneShareholderName(String oneShareholderName) {
		this.oneShareholderName = oneShareholderName;
	}

	public int getOneStock() {
		return oneStock;
	}

	public void setOneStock(int oneStock) {
		this.oneStock = oneStock;
	}

	public String getTwoShareholderName() {
		return twoShareholderName;
	}

	public void setTwoShareholderName(String twoShareholderName) {
		this.twoShareholderName = twoShareholderName;
	}

	public int getTwoStock() {
		return twoStock;
	}

	public void setTwoStock(int twoStock) {
		this.twoStock = twoStock;
	}

	public String getThreeShareholerName() {
		return threeShareholerName;
	}

	public void setThreeShareholerName(String threeShareholerName) {
		this.threeShareholerName = threeShareholerName;
	}

	public int getThreeStock() {
		return threeStock;
	}

	public void setThreeStock(int threeStock) {
		this.threeStock = threeStock;
	}

	public String getCreateTime() {
		return createTime;
	}

	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public float getAgreementsAmount() {
		return agreementsAmount;
	}

	public void setAgreementsAmount(float agreementsAmount) {
		this.agreementsAmount = agreementsAmount;
	}

	public float getLoanAccount() {
		return loanAccount;
	}

	public void setLoanAccount(float loanAccount) {
		this.loanAccount = loanAccount;
	}

	public String getOtherDesc() {
		return otherDesc;
	}

	public void setOtherDesc(String otherDesc) {
		this.otherDesc = otherDesc;
	}

	public String getLoanBankName() {
		return loanBankName;
	}

	public void setLoanBankName(String loanBankName) {
		this.loanBankName = loanBankName;
	}
    
}