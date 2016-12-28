/*******************************************************************************
 * Copyright (c) 2016.11.24 by shuxi.zhang.
 * Copyright © 2016 Shenzhen GTA Education Tech Ltd. All rights reserved
 ******************************************************************************/

package com.jltfisp.web.loan.entity;



import java.util.Date;

import javax.persistence.*;

@Table(name = "jltfisp_co_profile")
public class JltfispCoProfile {
    
    /**
     * ID
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    /**
     * 关联的企业申请信息id
     */
    @Column(name = "info_id")
    private Integer infoid;

    /**
     * 经营范围（主营）
     */
    @Column(name = "mainBusiness")
    private String mainBusiness;

    /**
     * 经营范围（兼营）
     */
    @Column(name = "sidelineBusses")
    private String sidelineBusses;

    /**
     * 主营技术领域
     */
    @Column(name = "mainField")
    private Integer mainField;
    @Transient
    private String mainFieldValue;

    /**
     * 企业性质
     */
    @Column(name = "nature")
    private Integer nature;

    /**
     * 企业性质其他
     */
    @Column(name = "otherNature")
    private String otherNature;

    /**
     * 职工总数
     */
    @Column(name = "workforce")
    private Integer workforce;


    /**
     * 研发人员数量
     */
    @Column(name = "researchStaffNum")
    private Integer researchStaffNum;
    
    /**
     * 大专以上学历职工数
     */
    @Column(name = "collegeDegreeOrAboveNum")
    private Integer collegeDegreeOrAboveNum;

    /**
     * 知识产权数量
     */
    @Column(name = "intellectualPropertyNum")
    private Integer intellectualPropertyNum;

    /**
     * 发明专利个数
     */
    @Column(name = "patentOfInventionNum")
    private Integer patentOfInventionNum;
    
    /**
     * 实用新型专利个数
     */
    @Column(name = "utilityModelPatentNum")
    private Integer utilityModelPatentNum;
    
    /**
     * 软件著作权个数
     */
    @Column(name = "softwareCopyrightNum")
    private Integer softwareCopyrightNum;
    
    /**
     * 集成电路设计板块个数
     */
    @Column(name = "integratedCircuitDesignNum")
    private Integer integratedCircuitDesignNum;
    
    /**
     * 企业曾获得科技认定或资助情况
     */
    @Column(name = "technologyOrFinance")
    private String technologyOrFinance;
    
    /**
     * 科技认定或者资助情况其他
     */
    @Column(name = "OtherTechnologyOrFinance")
    private String OtherTechnologyOrFinance;
    
    /**
     * 企业简介
     */
    @Column(name = "institutionalAbstract")
    private String institutionalAbstract;
    
    /**
     * 管理团队简介
     */
    @Column(name = "managementTeamProfile")
    private String managementTeamProfile;
    
    /**
     * 主营产品简介
     */
    @Column(name = "mainProductIntroduction")
    private String mainProductIntroduction;
    
    /**
     * 统一社会信用代码
     */
    @Column(name = "createTime")
    private Date createTime;
    
    /**
     * 创建人
     */
    @Column(name = "createUserid")
    private Integer createUserid;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getInfoid() {
		return infoid;
	}

	public void setInfoid(Integer infoid) {
		this.infoid = infoid;
	}

	public String getMainBusiness() {
		return mainBusiness;
	}

	public void setMainBusiness(String mainBusiness) {
		this.mainBusiness = mainBusiness;
	}

	public String getSidelineBusses() {
		return sidelineBusses;
	}

	public void setSidelineBusses(String sidelineBusses) {
		this.sidelineBusses = sidelineBusses;
	}

	public Integer getMainField() {
		return mainField;
	}

	public void setMainField(Integer mainField) {
		this.mainField = mainField;
	}

	public String getMainFieldValue() {
		return mainFieldValue;
	}

	public void setMainFieldValue(String mainFieldValue) {
		this.mainFieldValue = mainFieldValue;
	}

	public Integer getNature() {
		return nature;
	}

	public void setNature(Integer nature) {
		this.nature = nature;
	}

	public String getOtherNature() {
		return otherNature;
	}

	public void setOtherNature(String otherNature) {
		this.otherNature = otherNature;
	}

	public Integer getWorkforce() {
		return workforce;
	}

	public void setWorkforce(Integer workforce) {
		this.workforce = workforce;
	}

	public Integer getResearchStaffNum() {
		return researchStaffNum;
	}

	public void setResearchStaffNum(Integer researchStaffNum) {
		this.researchStaffNum = researchStaffNum;
	}

	public Integer getCollegeDegreeOrAboveNum() {
		return collegeDegreeOrAboveNum;
	}

	public void setCollegeDegreeOrAboveNum(Integer collegeDegreeOrAboveNum) {
		this.collegeDegreeOrAboveNum = collegeDegreeOrAboveNum;
	}

	public Integer getIntellectualPropertyNum() {
		return intellectualPropertyNum;
	}

	public void setIntellectualPropertyNum(Integer intellectualPropertyNum) {
		this.intellectualPropertyNum = intellectualPropertyNum;
	}

	public Integer getPatentOfInventionNum() {
		return patentOfInventionNum;
	}

	public void setPatentOfInventionNum(Integer patentOfInventionNum) {
		this.patentOfInventionNum = patentOfInventionNum;
	}

	public Integer getUtilityModelPatentNum() {
		return utilityModelPatentNum;
	}

	public void setUtilityModelPatentNum(Integer utilityModelPatentNum) {
		this.utilityModelPatentNum = utilityModelPatentNum;
	}

	public Integer getSoftwareCopyrightNum() {
		return softwareCopyrightNum;
	}

	public void setSoftwareCopyrightNum(Integer softwareCopyrightNum) {
		this.softwareCopyrightNum = softwareCopyrightNum;
	}

	public Integer getIntegratedCircuitDesignNum() {
		return integratedCircuitDesignNum;
	}

	public void setIntegratedCircuitDesignNum(Integer integratedCircuitDesignNum) {
		this.integratedCircuitDesignNum = integratedCircuitDesignNum;
	}

	public String getTechnologyOrFinance() {
		return technologyOrFinance;
	}

	public void setTechnologyOrFinance(String technologyOrFinance) {
		this.technologyOrFinance = technologyOrFinance;
	}

	public String getOtherTechnologyOrFinance() {
		return OtherTechnologyOrFinance;
	}

	public void setOtherTechnologyOrFinance(String otherTechnologyOrFinance) {
		OtherTechnologyOrFinance = otherTechnologyOrFinance;
	}

	public String getInstitutionalAbstract() {
		return institutionalAbstract;
	}

	public void setInstitutionalAbstract(String institutionalAbstract) {
		this.institutionalAbstract = institutionalAbstract;
	}

	public String getManagementTeamProfile() {
		return managementTeamProfile;
	}

	public void setManagementTeamProfile(String managementTeamProfile) {
		this.managementTeamProfile = managementTeamProfile;
	}

	public String getMainProductIntroduction() {
		return mainProductIntroduction;
	}

	public void setMainProductIntroduction(String mainProductIntroduction) {
		this.mainProductIntroduction = mainProductIntroduction;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Integer getCreateUserid() {
		return createUserid;
	}

	public void setCreateUserid(Integer createUserid) {
		this.createUserid = createUserid;
	}

    
}