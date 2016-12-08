package com.jltfisp.web.loan.entity;

import java.util.List;

public class JltfispFinanceAndShareholdersDto {
	
	 /**
     * ID
     */
    private Integer id;

    /**
     * 企业名称
     */
    private String company;
    
    /**
     * 法人代表
     */
    private String corporateRepresentative;

    /**
     * 成立时间
     */
    private String establishTime;

    /**
     * 注册资本
     */
    private float registeredCapital;
    
    /**
     * 组织机构代码
     */
    private String socialCreditCode;
    
    /**
     * 所属技术领域
     */
    private String tecdomain;
    
    /**
     * 企业上年度销售规模
     */
    private Integer lastyearsellscale;
    
    /**
     * 通讯地址省份
     */
    private int officeProv;
    
    /**
     * 通讯地址城市
     */
    private int officeCity;

    /**
     * 通讯地址区域
     */
    private int officeArea;

    /**
     * 通讯地址详细地址
     */
    private String officeAddress;
    
    /**
     * 邮编 ：数据库未设置邮编，此处将邮箱email字段又来保存邮编
     */
    private String email;

    /**
     * 职工人数
     */
    private Integer workernumber;
    
    /**
     * 注册地址
     */
    private String registeredAddress;

    /**
     * 推荐人单位
     */
    private String refereecompany;
    
    /**
     * 推荐人姓名
     */
    private String referee;
    
    /**
     * 推荐人手机
     */
    private String refereemobile;
    
    /**
     * 推荐人邮箱
     */
    private String refereeemail;
    
    /**
     * 公司网址
     */
    private String companyurl;
    
    /**
     * 联系人姓名
     */
    private String linkMan;
    
    /**
     * 电话的区号
     */
    private String zoneDescription;
    
    /**
     * 电话/传真
     */
    private String phoneOrFax;
    
    /**
     * 联系人手机号
     */
    private String linkMobile;
    
    /**
     * 联系人邮箱
     */
    private String linkEmail;
    
    /**
     * 创建时间
     */
    private String createTime;
    
    /**
     * 企业申请的用户id
     */
    private int userid;
    
    /**
     * 项目名称
     */
    private String projectname;
    
    /**
     * 市场及产品综述
     */
    private String marketproductsummary;
    
    /**
     * 管理团队概述
     */
    private String managerteamsummary;
    
    /**
     * 科技资质
     */
    private String technologyqualifications;
    
    /**
     * 其他说明
     */
    private String otherDesc;
    
    /**
     * 股东list
     */
    private List<JltfispFinShareholder> jltfispFinShareholderList;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getCorporateRepresentative() {
		return corporateRepresentative;
	}

	public void setCorporateRepresentative(String corporateRepresentative) {
		this.corporateRepresentative = corporateRepresentative;
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

	public String getSocialCreditCode() {
		return socialCreditCode;
	}

	public void setSocialCreditCode(String socialCreditCode) {
		this.socialCreditCode = socialCreditCode;
	}

	public String getTecdomain() {
		return tecdomain;
	}

	public void setTecdomain(String tecdomain) {
		this.tecdomain = tecdomain;
	}

	public Integer getLastyearsellscale() {
		return lastyearsellscale;
	}

	public void setLastyearsellscale(Integer lastyearsellscale) {
		this.lastyearsellscale = lastyearsellscale;
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Integer getWorkernumber() {
		return workernumber;
	}

	public void setWorkernumber(Integer workernumber) {
		this.workernumber = workernumber;
	}

	public String getRegisteredAddress() {
		return registeredAddress;
	}

	public void setRegisteredAddress(String registeredAddress) {
		this.registeredAddress = registeredAddress;
	}

	public String getRefereecompany() {
		return refereecompany;
	}

	public void setRefereecompany(String refereecompany) {
		this.refereecompany = refereecompany;
	}

	public String getReferee() {
		return referee;
	}

	public void setReferee(String referee) {
		this.referee = referee;
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

	public String getLinkMan() {
		return linkMan;
	}

	public void setLinkMan(String linkMan) {
		this.linkMan = linkMan;
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

	public String getLinkMobile() {
		return linkMobile;
	}

	public void setLinkMobile(String linkMobile) {
		this.linkMobile = linkMobile;
	}

	public String getLinkEmail() {
		return linkEmail;
	}

	public void setLinkEmail(String linkEmail) {
		this.linkEmail = linkEmail;
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

	public String getOtherDesc() {
		return otherDesc;
	}

	public void setOtherDesc(String otherDesc) {
		this.otherDesc = otherDesc;
	}



	public List<JltfispFinShareholder> getJltfispFinShareholderList() {
		return jltfispFinShareholderList;
	}

	public void setJltfispFinShareholderList(List<JltfispFinShareholder> jltfispFinShareholderList) {
		this.jltfispFinShareholderList = jltfispFinShareholderList;
	}

	public JltfispFinanceAndShareholdersDto() {
		super();
	}

	public JltfispFinanceAndShareholdersDto(Integer id, String company,
			String corporateRepresentative, String establishTime,
			float registeredCapital, String socialCreditCode, String tecdomain,
			Integer lastyearsellscale, int officeProv, int officeCity,
			int officeArea, String officeAddress, String email,
			Integer workernumber, String registeredAddress,
			String refereecompany, String referee, String refereemobile,
			String refereeemail, String companyurl, String linkMan,
			String zoneDescription, String phoneOrFax, String linkMobile,
			String linkEmail, String createTime, int userid,
			String projectname, String marketproductsummary,
			String managerteamsummary, String technologyqualifications,
			String otherDesc) {
		super();
		this.id = id;
		this.company = company;
		this.corporateRepresentative = corporateRepresentative;
		this.establishTime = establishTime;
		this.registeredCapital = registeredCapital;
		this.socialCreditCode = socialCreditCode;
		this.tecdomain = tecdomain;
		this.lastyearsellscale = lastyearsellscale;
		this.officeProv = officeProv;
		this.officeCity = officeCity;
		this.officeArea = officeArea;
		this.officeAddress = officeAddress;
		this.email = email;
		this.workernumber = workernumber;
		this.registeredAddress = registeredAddress;
		this.refereecompany = refereecompany;
		this.referee = referee;
		this.refereemobile = refereemobile;
		this.refereeemail = refereeemail;
		this.companyurl = companyurl;
		this.linkMan = linkMan;
		this.zoneDescription = zoneDescription;
		this.phoneOrFax = phoneOrFax;
		this.linkMobile = linkMobile;
		this.linkEmail = linkEmail;
		this.createTime = createTime;
		this.userid = userid;
		this.projectname = projectname;
		this.marketproductsummary = marketproductsummary;
		this.managerteamsummary = managerteamsummary;
		this.technologyqualifications = technologyqualifications;
		this.otherDesc = otherDesc;
	}

	
    
}
