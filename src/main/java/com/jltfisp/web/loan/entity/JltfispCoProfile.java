/*******************************************************************************
 * Copyright (c) 2016.11.24 by shuxi.zhang.
 * Copyright © 2016 Shenzhen GTA Education Tech Ltd. All rights reserved
 ******************************************************************************/

package com.jltfisp.web.loan.entity;


import javax.persistence.*;
import java.util.Date;

@Table(name = "jltfisp_co_profile")
public class JltfispCoProfile {
    
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
    private int mainField;

    /**
     * 企业性质
     */
    @Column(name = "nature")
    private int nature;

    /**
     * 企业性质其他
     */
    @Column(name = "otherNature")
    private String otherNature;

    /**
     * 职工总数
     */
    @Column(name = "workforce")
    private int workforce;


    /**
     * 研发人员数量
     */
    @Column(name = "researchStaffNum")
    private int researchStaffNum;
    
    /**
     * 大专以上学历职工数
     */
    @Column(name = "collegeDegreeOrAboveNum")
    private int collegeDegreeOrAboveNum;

    /**
     * 知识产权数量
     */
    @Column(name = "intellectualPropertyNum")
    private int intellectualPropertyNum;

    /**
     * 发明专利个数
     */
    @Column(name = "patentOfInventionNum")
    private String patentOfInventionNum;
    
    /**
     * 实用新型专利个数
     */
    @Column(name = "utilityModelPatentNum")
    private int utilityModelPatentNum;
    
    /**
     * 软件著作权个数
     */
    @Column(name = "softwareCopyrightNum")
    private int softwareCopyrightNum;
    
    /**
     * 集成电路设计板块个数
     */
    @Column(name = "integratedCircuitDesignNum")
    private int integratedCircuitDesignNum;
    
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
    private int createUserid;

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

	public int getMainField() {
		return mainField;
	}

	public void setMainField(int mainField) {
		this.mainField = mainField;
	}

	public int getNature() {
		return nature;
	}

	public void setNature(int nature) {
		this.nature = nature;
	}

	public String getOtherNature() {
		return otherNature;
	}

	public void setOtherNature(String otherNature) {
		this.otherNature = otherNature;
	}

	public int getWorkforce() {
		return workforce;
	}

	public void setWorkforce(int workforce) {
		this.workforce = workforce;
	}

	public int getResearchStaffNum() {
		return researchStaffNum;
	}

	public void setResearchStaffNum(int researchStaffNum) {
		this.researchStaffNum = researchStaffNum;
	}

	public int getCollegeDegreeOrAboveNum() {
		return collegeDegreeOrAboveNum;
	}

	public void setCollegeDegreeOrAboveNum(int collegeDegreeOrAboveNum) {
		this.collegeDegreeOrAboveNum = collegeDegreeOrAboveNum;
	}

	public int getIntellectualPropertyNum() {
		return intellectualPropertyNum;
	}

	public void setIntellectualPropertyNum(int intellectualPropertyNum) {
		this.intellectualPropertyNum = intellectualPropertyNum;
	}

	public String getPatentOfInventionNum() {
		return patentOfInventionNum;
	}

	public void setPatentOfInventionNum(String patentOfInventionNum) {
		this.patentOfInventionNum = patentOfInventionNum;
	}

	public int getUtilityModelPatentNum() {
		return utilityModelPatentNum;
	}

	public void setUtilityModelPatentNum(int utilityModelPatentNum) {
		this.utilityModelPatentNum = utilityModelPatentNum;
	}

	public int getSoftwareCopyrightNum() {
		return softwareCopyrightNum;
	}

	public void setSoftwareCopyrightNum(int softwareCopyrightNum) {
		this.softwareCopyrightNum = softwareCopyrightNum;
	}

	public int getIntegratedCircuitDesignNum() {
		return integratedCircuitDesignNum;
	}

	public void setIntegratedCircuitDesignNum(int integratedCircuitDesignNum) {
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

	public int getCreateUserid() {
		return createUserid;
	}

	public void setCreateUserid(int createUserid) {
		this.createUserid = createUserid;
	}
    
    
}