package com.jltfisp.web.loan.entity;

import java.util.List;
/**
 * 申请保费补贴对应的企业基本信息跟申请保费补贴信息Dto
 * @author cuihong.ge
 *
 */
public class JlfispPsBaseDto {
    /**
     * 保费补贴基本信息Id
     */
	private Integer id;
	/**
     * 企业名称
     */
	private String company;
	 /**
     * 组织机构代码
     */
	private String socialCreditCode;
	/**
	 * 带框卡号
	 */
	private String cardNo;
	 /**
     * 基本开户银行
     */
	private String basicAccountBank;
	 /**
     * 基本户户名
     */
	private String basicAccountName;
	 /**
     * 基本账户卡号
     */
	private String  basicAccountCard;
	 /**
     * 注册资本
     */
	private float registeredCapital;
	 /**
     * 注册地址
     */
	private String registeredAddress;
	 /**
     * 经营省
     */
	private Integer officeProv;
	 /**
     * 经营城市
     */
	private Integer officeCity;
	 /**
     * 经营区域
     */
	private Integer officeArea;
	 /**
     * 经营地址
     */
	private String officeAddress;
	 /**
     * 联系人
     */
	private String linkMan;
	 /**
     * email邮箱
     */
	private String email;
	 /**
     * 电话/传真
     */
	private String phoneOrFax;
	 /**
     * 手机号
     */
	private String mobilephone;
	 /**
	  * 申请业务类型
	  */
	private Integer bussinessType;
	 /**
     * 贷款银行
     */
    private String loanBankName;
    
    /**
     * 区号
     */
    private String zoneDescription;
    /**
     * 申请保费补贴信息
     */
	private List<JltfispPsInfo> jltfispPsInfoList;
	
	public JlfispPsBaseDto() {
		super();
	}
	

	public JlfispPsBaseDto(Integer id, String company, String socialCreditCode,
			String cardNo, String basicAccountBank, String basicAccountName,
			String basicAccountCard, float registeredCapital,
			String registeredAddress, Integer officeProv, Integer officeCity,
			Integer officeArea, String officeAddress, String linkMan,
			String email, String phoneOrFax, String mobilephone,
			Integer bussinessType, String loanBankName, String zoneDescription) {
		super();
		this.id = id;
		this.company = company;
		this.socialCreditCode = socialCreditCode;
		this.cardNo = cardNo;
		this.basicAccountBank = basicAccountBank;
		this.basicAccountName = basicAccountName;
		this.basicAccountCard = basicAccountCard;
		this.registeredCapital = registeredCapital;
		this.registeredAddress = registeredAddress;
		this.officeProv = officeProv;
		this.officeCity = officeCity;
		this.officeArea = officeArea;
		this.officeAddress = officeAddress;
		this.linkMan = linkMan;
		this.email = email;
		this.phoneOrFax = phoneOrFax;
		this.mobilephone = mobilephone;
		this.bussinessType = bussinessType;
		this.loanBankName = loanBankName;
		this.zoneDescription = zoneDescription;
	}





	public JlfispPsBaseDto(Integer id, String company, String socialCreditCode,
			String cardNo, String basicAccountBank, String basicAccountName,
			String basicAccountCard, float registeredCapital,
			String registeredAddress, Integer officeProv, Integer officeCity,
			Integer officeArea, String officeAddress, String linkMan,
			String email, String phoneOrFax, String mobilephone,
			Integer bussinessType, List<JltfispPsInfo> jltfispPsInfoList) {
		super();
		this.id = id;
		this.company = company;
		this.socialCreditCode = socialCreditCode;
		this.cardNo = cardNo;
		this.basicAccountBank = basicAccountBank;
		this.basicAccountName = basicAccountName;
		this.basicAccountCard = basicAccountCard;
		this.registeredCapital = registeredCapital;
		this.registeredAddress = registeredAddress;
		this.officeProv = officeProv;
		this.officeCity = officeCity;
		this.officeArea = officeArea;
		this.officeAddress = officeAddress;
		this.linkMan = linkMan;
		this.email = email;
		this.phoneOrFax = phoneOrFax;
		this.mobilephone = mobilephone;
		this.bussinessType = bussinessType;
		this.jltfispPsInfoList = jltfispPsInfoList;
	}



	public String getCardNo() {
		return cardNo;
	}



	public void setCardNo(String cardNo) {
		this.cardNo = cardNo;
	}



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

	public String getSocialCreditCode() {
		return socialCreditCode;
	}
	public void setSocialCreditCode(String socialCreditCode) {
		this.socialCreditCode = socialCreditCode;
	}
	public String getBasicAccountBank() {
		return basicAccountBank;
	}
	public void setBasicAccountBank(String basicAccountBank) {
		this.basicAccountBank = basicAccountBank;
	}
	public String getBasicAccountName() {
		return basicAccountName;
	}
	public void setBasicAccountName(String basicAccountName) {
		this.basicAccountName = basicAccountName;
	}
	public String getBasicAccountCard() {
		return basicAccountCard;
	}
	public void setBasicAccountCard(String basicAccountCard) {
		this.basicAccountCard = basicAccountCard;
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
	public Integer getOfficeProv() {
		return officeProv;
	}
	public void setOfficeProv(Integer officeProv) {
		this.officeProv = officeProv;
	}
	public Integer getOfficeCity() {
		return officeCity;
	}
	public void setOfficeCity(Integer officeCity) {
		this.officeCity = officeCity;
	}
	public Integer getOfficeArea() {
		return officeArea;
	}
	public void setOfficeArea(Integer officeArea) {
		this.officeArea = officeArea;
	}
	public String getOfficeAddress() {
		return officeAddress;
	}
	public void setOfficeAddress(String officeAddress) {
		this.officeAddress = officeAddress;
	}
	public String getLinkMan() {
		return linkMan;
	}
	public void setLinkMan(String linkMan) {
		this.linkMan = linkMan;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhoneOrFax() {
		return phoneOrFax;
	}
	public void setPhoneOrFax(String phoneOrFax) {
		this.phoneOrFax = phoneOrFax;
	}
	public String getMobilephone() {
		return mobilephone;
	}
	public void setMobilephone(String mobilephone) {
		this.mobilephone = mobilephone;
	}
	
	public Integer getBussinessType() {
		return bussinessType;
	}
	public void setBussinessType(Integer bussinessType) {
		this.bussinessType = bussinessType;
	}
	public List<JltfispPsInfo> getJltfispPsInfoList() {
		return jltfispPsInfoList;
	}
	public void setJltfispPsInfoList(List<JltfispPsInfo> jltfispPsInfoList) {
		this.jltfispPsInfoList = jltfispPsInfoList;
	}

	public String getLoanBankName() {
		return loanBankName;
	}

	public void setLoanBankName(String loanBankName) {
		this.loanBankName = loanBankName;
	}


	public String getZoneDescription() {
		return zoneDescription;
	}


	public void setZoneDescription(String zoneDescription) {
		this.zoneDescription = zoneDescription;
	}
}
