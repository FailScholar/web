package com.jltfisp.web.institution.entity;

import javax.persistence.*;
import java.util.Date;

@Table(name = "jltfisp_institut")
public class JltfispInstitution {
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
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
	 * 所属省份，int类型，与sys_area表对应
	 */
	private Integer province; 
	
	/**
	 * 所属城市
	 */
	private Integer city;
	
	/**
	 * 所属区域
	 */
	private Integer area;
	
	/**
	 * 详细地址
	 */
	private String address;
	
	/**
	 * 机构属性
	 */
	private Integer institutionalNature;
	
	/**
	 * 公司网址URL
	 */
	private String url;
	
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
	 * 主要领域,用逗号隔开，例如：1,2,3
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
	 * 单位所在城市
	 */
	private Integer companyRealAddress;
	
	/**
	 * 单位所在城区
	 */
	private Integer companyCity;
	
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
	private String mobilePhone;
	
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
	 * 申请机构列别
	 */
	private Integer institutionalType;
	
	/**
	 * 创建时间
	 */
	private Date createTime;
	
	/**
	 * 合作机构的id
	 */
	private Integer columnId;
	
	/**
	 * 申请用户id
	 */
	private Integer userId;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@Column(name="institutionalName")
	public String getInstitutionalName() {
		return institutionalName;
	}

	public void setInstitutionalName(String institutionalName) {
		this.institutionalName = institutionalName;
	}

	@Column(name="logoFile")
	public String getLogoFile() {
		return logoFile;
	}

	public void setLogoFile(String logoFile) {
		this.logoFile = logoFile;
	}

	@Column(name="abbreviation")
	public String getAbbreviation() {
		return abbreviation;
	}

	public void setAbbreviation(String abbreviation) {
		this.abbreviation = abbreviation;
	}

	@Column(name="corporateRepresentative")
	public String getCorporateRepresentative() {
		return corporateRepresentative;
	}

	public void setCorporateRepresentative(String corporateRepresentative) {
		this.corporateRepresentative = corporateRepresentative;
	}

	@Column(name="socialCreditCode")
	public String getSocialCreditCode() {
		return socialCreditCode;
	}

	public void setSocialCreditCode(String socialCreditCode) {
		this.socialCreditCode = socialCreditCode;
	}

	@Column(name="province")
	public Integer getProvince() {
		return province;
	}

	public void setProvince(Integer province) {
		this.province = province;
	}

	@Column(name="city")
	public Integer getCity() {
		return city;
	}

	public void setCity(Integer city) {
		this.city = city;
	}

	@Column(name="area")
	public Integer getArea() {
		return area;
	}

	public void setArea(Integer area) {
		this.area = area;
	}

	@Column(name="address")
	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Column(name="institutionalNature")
	public Integer getInstitutionalNature() {
		return institutionalNature;
	}

	public void setInstitutionalNature(Integer institutionalNature) {
		this.institutionalNature = institutionalNature;
	}

	@Column(name="url")
	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	@Column(name="institutionalAbstract")
	public String getInstitutionalAbstract() {
		return institutionalAbstract;
	}

	public void setInstitutionalAbstract(String institutionalAbstract) {
		this.institutionalAbstract = institutionalAbstract;
	}

	@Column(name="investmentTeam")
	public String getInvestmentTeam() {
		return investmentTeam;
	}

	public void setInvestmentTeam(String investmentTeam) {
		this.investmentTeam = investmentTeam;
	}

	@Column(name="ServiceProductsAndFeatures")
	public String getServiceProductsAndFeatures() {
		return serviceProductsAndFeatures;
	}

	public void setServiceProductsAndFeatures(String serviceProductsAndFeatures) {
	    this.serviceProductsAndFeatures = serviceProductsAndFeatures;
	}

	@Column(name="mainAreas")
	public String getMainAreas() {
		return mainAreas;
	}

	public void setMainAreas(String mainAreas) {
		this.mainAreas = mainAreas;
	}

	@Column(name="specialAreas")
	public String getSpecialAreas() {
		return specialAreas;
	}

	public void setSpecialAreas(String specialAreas) {
		this.specialAreas = specialAreas;
	}

	@Column(name="mainInvestmentStage")
	public String getMainInvestmentStage() {
		return mainInvestmentStage;
	}

	public void setMainInvestmentStage(String mainInvestmentStage) {
		this.mainInvestmentStage = mainInvestmentStage;
	}

	@Column(name="projectRequirement")
	public String getProjectRequirement() {
		return projectRequirement;
	}

	public void setProjectRequirement(String projectRequirement) {
		this.projectRequirement = projectRequirement;
	}

	@Column(name="companyRealAddress")
	public Integer getCompanyRealAddress() {
		return companyRealAddress;
	}

	public void setCompanyRealAddress(Integer companyRealAddress) {
		this.companyRealAddress = companyRealAddress;
	}

	@Column(name="companyCity")
	public Integer getCompanyCity() {
		return companyCity;
	}

	public void setCompanyCity(Integer companyCity) {
		this.companyCity = companyCity;
	}

	@Column(name="institutionalAddress")
	public String getInstitutionalAddress() {
		return institutionalAddress;
	}

	public void setInstitutionalAddress(String institutionalAddress) {
		this.institutionalAddress = institutionalAddress;
	}

	@Column(name="postcodes")
	public Integer getPostcodes() {
		return postcodes;
	}

	public void setPostcodes(Integer postcodes) {
		this.postcodes = postcodes;
	}

	@Column(name="linkMan")
	public String getLinkMan() {
		return linkMan;
	}

	public void setLinkMan(String linkMan) {
		this.linkMan = linkMan;
	}

	@Column(name="mobilePhone")
	public String getMobilePhone() {
		return mobilePhone;
	}

	public void setMobilePhone(String mobilePhone) {
		this.mobilePhone = mobilePhone;
	}

	@Column(name="email")
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Column(name="zoneDescription")
	public String getZoneDescription() {
		return zoneDescription;
	}

	public void setZoneDescription(String zoneDescription) {
		this.zoneDescription = zoneDescription;
	}

	@Column(name="phoneNumer")
	public String getPhoneNumer() {
		return phoneNumer;
	}

	public void setPhoneNumer(String phoneNumer) {
		this.phoneNumer = phoneNumer;
	}

	@Column(name="fax")
	public String getFax() {
		return fax;
	}

	public void setFax(String fax) {
		this.fax = fax;
	}

	@Column(name="institutionalType")
	public Integer getInstitutionalType() {
		return institutionalType;
	}

	public void setInstitutionalType(Integer institutionalType) {
		this.institutionalType = institutionalType;
	}

	@Column(name="createTime")
	public Date getCreateTime() {
		return createTime;
	}
	
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	@Column(name="columnId")
	public Integer getColumnId() {
		return columnId;
	}

	public void setColumnId(Integer columnId) {
		this.columnId = columnId;
	}
	
	@Column(name="user_id")
	public Integer getUserId() {
    return userId;
}
	
	public void setUserId(Integer userId) {
    this.userId = userId;
}
	
}
