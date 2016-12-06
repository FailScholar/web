package com.jltfisp.web.institution.entity;

import java.util.Date;

public class InstitutionDto {
	
	private Integer id;
	
	/**
	 * 申请机构（全称）
	 */
	private String institutionalName;
	
	/**
	 * 公司logo
	 */
	private String logoFile;
	
	/**
	 * 简称
	 */
	private String abbreviation;
	
	/**
	 * 法人代表
	 */
	private String corporateRepresentative;
	
	/**
	 * 统一社会信用代码
	 */
	private String socialCreditCode;
	
	/**
	 * 所属省份名称
	 */
	private String provinceName; 
	
	/**
	 * 所属城市名称
	 */
	private String cityName;
	
	/**
	 * 所属区域名称
	 */
	private String areaName;
	
	/**
	 * 详细地址
	 */
	private String address;
	
	/**
	 * 机构属性名称
	 */
	private Integer institutionalNatureName;
	
	/**
	 * 公司网址URL
	 */
	private String url;
	
	/**
	 * 二级栏目排序
	 */
	private Integer columnNo;
	
	/**
	 * 公司简介
	 */
	private String institutionalAbstract;
	
	/**
	 * 投资团队介绍
	 */
	private String investmentTeam;
	
	/**
	 * 服务产品及特色
	 */
	private String serviceProductsAndFeatures;
	
	/**
	 * 主要领域
	 */
	private String mainAreas;
	
	/**
	 * 特别关注投资领域
	 */
	private String specialAreas;
	
	/**
	 * 主要投资阶段
	 */
	private String mainInvestmentStage;
	
	/**
	 * 选择项目基本要求(请选择二项)
	 */
	private String projectRequirement;
	
	/**
	 * 单位所在城市名称
	 */
	private String companyRealAddressName;
	
	/**
	 * 单位所在城区名称
	 */
	private String companyCityName;
	
	/**
	 * 单位详细地址
	 */
	private String institutionalAddress;
	
	/**
	 * 邮编
	 */
	private Integer postcodes;
	
	/**
	 * 联系人
	 */
	private String linkMan;
	
	/**
	 * 手机号
	 */
	private Integer mobilePhone;
	
	/**
	 * 邮箱
	 */
	private String email;
	
	/**
	 * 区号
	 */
	private String zoneDescription;
	
	/**
	 * 电话
	 */
	private String phoneNumer;
	
	/**
	 * 传真
	 */
	private String fax;
	
	/**
	 * 申请机构类别名称
	 */
	private Integer institutionalTypeName;
	
	/**
	 * 创建时间
	 */
	private Date createTime;
	
	/**
	 * 申请用户id
	 */
	private Integer userId;
	
	public Integer getColumnNo() {
		return columnNo;
	}

	public void setColumnNo(Integer columnNo) {
		this.columnNo = columnNo;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getInstitutionalName() {
		return institutionalName;
	}

	public void setInstitutionalName(String institutionalName) {
		this.institutionalName = institutionalName;
	}

	public String getLogoFile() {
		return logoFile;
	}

	public void setLogoFile(String logoFile) {
		this.logoFile = logoFile;
	}

	public String getAbbreviation() {
		return abbreviation;
	}

	public void setAbbreviation(String abbreviation) {
		this.abbreviation = abbreviation;
	}

	public String getCorporateRepresentative() {
		return corporateRepresentative;
	}

	public void setCorporateRepresentative(String corporateRepresentative) {
		this.corporateRepresentative = corporateRepresentative;
	}

	public String getSocialCreditCode() {
		return socialCreditCode;
	}

	public void setSocialCreditCode(String socialCreditCode) {
		this.socialCreditCode = socialCreditCode;
	}

	public String getProvinceName() {
		return provinceName;
	}

	public void setProvinceName(String provinceName) {
		this.provinceName = provinceName;
	}

	public String getCityName() {
		return cityName;
	}

	public void setCityName(String cityName) {
		this.cityName = cityName;
	}

	public String getAreaName() {
		return areaName;
	}

	public void setAreaName(String areaName) {
		this.areaName = areaName;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Integer getInstitutionalNatureName() {
		return institutionalNatureName;
	}

	public void setInstitutionalNatureName(Integer institutionalNatureName) {
		this.institutionalNatureName = institutionalNatureName;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getInstitutionalAbstract() {
		return institutionalAbstract;
	}

	public void setInstitutionalAbstract(String institutionalAbstract) {
		this.institutionalAbstract = institutionalAbstract;
	}

	public String getInvestmentTeam() {
		return investmentTeam;
	}

	public void setInvestmentTeam(String investmentTeam) {
		this.investmentTeam = investmentTeam;
	}

	public String getServiceProductsAndFeatures() {
		return serviceProductsAndFeatures;
	}

	public void setServiceProductsAndFeatures(String serviceProductsAndFeatures) {
		this.serviceProductsAndFeatures = serviceProductsAndFeatures;
	}

	public String getMainAreas() {
		return mainAreas;
	}

	public void setMainAreas(String mainAreas) {
		this.mainAreas = mainAreas;
	}

	public String getSpecialAreas() {
		return specialAreas;
	}

	public void setSpecialAreas(String specialAreas) {
		this.specialAreas = specialAreas;
	}

	public String getMainInvestmentStage() {
		return mainInvestmentStage;
	}

	public void setMainInvestmentStage(String mainInvestmentStage) {
		this.mainInvestmentStage = mainInvestmentStage;
	}

	public String getProjectRequirement() {
		return projectRequirement;
	}

	public void setProjectRequirement(String projectRequirement) {
		this.projectRequirement = projectRequirement;
	}

	public String getCompanyRealAddressName() {
		return companyRealAddressName;
	}

	public void setCompanyRealAddressName(String companyRealAddressName) {
		this.companyRealAddressName = companyRealAddressName;
	}

	public String getCompanyCityName() {
		return companyCityName;
	}

	public void setCompanyCityName(String companyCityName) {
		this.companyCityName = companyCityName;
	}

	public String getInstitutionalAddress() {
		return institutionalAddress;
	}

	public void setInstitutionalAddress(String institutionalAddress) {
		this.institutionalAddress = institutionalAddress;
	}

	public Integer getPostcodes() {
		return postcodes;
	}

	public void setPostcodes(Integer postcodes) {
		this.postcodes = postcodes;
	}

	public String getLinkMan() {
		return linkMan;
	}

	public void setLinkMan(String linkMan) {
		this.linkMan = linkMan;
	}

	public Integer getMobilePhone() {
		return mobilePhone;
	}

	public void setMobilePhone(Integer mobilePhone) {
		this.mobilePhone = mobilePhone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getZoneDescription() {
		return zoneDescription;
	}

	public void setZoneDescription(String zoneDescription) {
		this.zoneDescription = zoneDescription;
	}

	public String getPhoneNumer() {
		return phoneNumer;
	}

	public void setPhoneNumer(String phoneNumer) {
		this.phoneNumer = phoneNumer;
	}

	public String getFax() {
		return fax;
	}

	public void setFax(String fax) {
		this.fax = fax;
	}

	public Integer getInstitutionalTypeName() {
		return institutionalTypeName;
	}

	public void setInstitutionalTypeName(Integer institutionalTypeName) {
		this.institutionalTypeName = institutionalTypeName;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Integer getUserId() {
    return userId;
}
	
	public void setUserId(Integer userId) {
    this.userId = userId;
}
	

	public InstitutionDto(Integer id, String institutionalName,
			String logoFile, String abbreviation,
			String corporateRepresentative, String socialCreditCode,
			String provinceName, String cityName, String areaName,
			String address, Integer institutionalNatureName, String url,
			String institutionalAbstract, String investmentTeam,
			String serviceProductsAndFeatures, String mainAreas,
			String specialAreas, String mainInvestmentStage,
			String projectRequirement, String companyRealAddressName,
			String companyCityName, String institutionalAddress,
			Integer postcodes, String linkMan, Integer mobilePhone,
			String email, String zoneDescription, String phoneNumer,
			String fax, Integer institutionalTypeName, Date createTime ,Integer userId) {
		super();
		this.id = id;
		this.institutionalName = institutionalName;
		this.logoFile = logoFile;
		this.abbreviation = abbreviation;
		this.corporateRepresentative = corporateRepresentative;
		this.socialCreditCode = socialCreditCode;
		this.provinceName = provinceName;
		this.cityName = cityName;
		this.areaName = areaName;
		this.address = address;
		this.institutionalNatureName = institutionalNatureName;
		this.url = url;
		this.institutionalAbstract = institutionalAbstract;
		this.investmentTeam = investmentTeam;
		this.serviceProductsAndFeatures = serviceProductsAndFeatures;
		this.mainAreas = mainAreas;
		this.specialAreas = specialAreas;
		this.mainInvestmentStage = mainInvestmentStage;
		this.projectRequirement = projectRequirement;
		this.companyRealAddressName = companyRealAddressName;
		this.companyCityName = companyCityName;
		this.institutionalAddress = institutionalAddress;
		this.postcodes = postcodes;
		this.linkMan = linkMan;
		this.mobilePhone = mobilePhone;
		this.email = email;
		this.zoneDescription = zoneDescription;
		this.phoneNumer = phoneNumer;
		this.fax = fax;
		this.institutionalTypeName = institutionalTypeName;
		this.createTime = createTime;
		this.userId = userId;
	}
	
	
}
