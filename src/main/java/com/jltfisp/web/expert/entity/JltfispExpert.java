/*******************************************************************************
 * Copyright (c) 2016.10.31 by shuxi.zhang.
 * Copyright © 2016 Shenzhen GTA Education Tech Ltd. All rights reserved
 ******************************************************************************/

package com.jltfisp.web.expert.entity;

import java.util.Date;

import javax.persistence.*;

@Table(name = "jltfisp_fin_expert")
public class JltfispExpert {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    /**
     * 用户ID
     */
    @Column(name = "userid")
    private Integer userid;
    
    /**
     * 用户名称
     */
    @Column(name = "name")
    private String name;
    
    /**
     * 用户照片
     */
    @Column(name = "user_logo")
    private String userlogo;
    
    /**
     * 用户照片
     */
    @Column(name = "birthday")
    private Date birthday;
    
    /**
     * 用户ID
     */
    @Column(name = "columnid")
    private Integer columnid;

    /**
     * 性别
     */
    @Column(name = "sex")
    private Integer sex;

    /**
     * 学位
     */
    @Column(name = "degree")
    private Integer degree;

    /**
     * 技术领域1：电子信息技术2：生物医药技术3：航天航空技术4：新材料技术5:高技术服务业6：新能源节能技术7：资源环境技术8：高新技术改造传统产业
     */
    @Column(name = "technology_domain")
    private Integer technologydomain;

    /**
     * 职务
     */
    @Column(name = "work_post")
    private String workpost;

    /**
     * 职称
     */
    @Column(name = "work_title")
    private String worktitle;

    /**
     * 传真
     */
    @Column(name = "fax")
    private String fax;


    /**
     * 邮编
     */
    @Column(name = "postcode")
    private String postcode;
    
    /**
     * 办公地址
     */
    @Column(name = "busines_address")
    private String businesaddress;

    /**
     * 主要工作地
     */
    @Column(name = "main_address")
    private String mainaddress;
    
    /**
     * 工作单位
     */
    @Column(name = "work_company")
    private String workcompany;

    /**
     * 通讯地址
     */
    @Column(name = "postal_address")
    private String postaladdress;
    
    /**
     * 教育背景
     */
    @Column(name = "educational_background")
    private String educationalbackground;
    
    /**
     * 兼职/专职情况
     */
    @Column(name = "part_full")
    private String partfull;
    
    /**
     * 近五年来主要的研究成果或成果转化项目
     */
    @Column(name = "major_info")
    private String majorinfo;
    
    /**
     * 近三年来承担国家和地方科研项目情况
     */
    @Column(name = "project_info")
    private String projectinfo;
    
    /**
     * 机构logo
     */
    @Column(name = "agency_logo")
    private String agencylogo;
    
    /**
     * 机构信息
     */
    @Column(name = "agency_info")
    private String agencyinfo;
    
    /**
     * 技术领域（以1,2,3这样存储）
     */
    @Column(name = "domain")
    private String domain;
    
    /**
     * 电话号码
     */
    @Column(name = "phone")
    private String phone;
    
    /**
     * 邮箱地址
     */
    @Column(name = "email")
    private String email;
    
    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public Integer getColumnid() {
		return columnid;
	}

	public void setColumnid(Integer columnid) {
		this.columnid = columnid;
	}

	public void setEmail(String email) {
        this.email = email;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public Integer getSex() {
        return sex;
    }

    public void setSex(Integer sex) {
        this.sex = sex;
    }

    public Integer getDegree() {
        return degree;
    }

    public void setDegree(Integer degree) {
        this.degree = degree;
    }

    public Integer getTechnologydomain() {
        return technologydomain;
    }

    public void setTechnologydomain(Integer technologydomain) {
        this.technologydomain = technologydomain;
    }

    public String getWorkpost() {
        return workpost;
    }

    public void setWorkpost(String workpost) {
        this.workpost = workpost;
    }

    public String getWorktitle() {
        return worktitle;
    }

    public void setWorktitle(String worktitle) {
        this.worktitle = worktitle;
    }

    public String getFax() {
		return fax;
	}

	public void setFax(String fax) {
		this.fax = fax;
	}

	public String getPostcode() {
		return postcode;
	}

	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}

	public String getBusinesaddress() {
        return businesaddress;
    }

    public void setBusinesaddress(String businesaddress) {
        this.businesaddress = businesaddress;
    }

    public String getMainaddress() {
        return mainaddress;
    }

    public void setMainaddress(String mainaddress) {
        this.mainaddress = mainaddress;
    }

    public String getPostaladdress() {
        return postaladdress;
    }

    public void setPostaladdress(String postaladdress) {
        this.postaladdress = postaladdress;
    }

    public String getEducationalbackground() {
        return educationalbackground;
    }

    public void setEducationalbackground(String educationalbackground) {
        this.educationalbackground = educationalbackground;
    }

    public String getPartfull() {
        return partfull;
    }

    public void setPartfull(String partfull) {
        this.partfull = partfull;
    }

    public String getMajorinfo() {
        return majorinfo;
    }

    public void setMajorinfo(String majorinfo) {
        this.majorinfo = majorinfo;
    }

    public String getProjectinfo() {
        return projectinfo;
    }

    public void setProjectinfo(String projectinfo) {
        this.projectinfo = projectinfo;
    }

    public String getAgencylogo() {
        return agencylogo;
    }

    public void setAgencylogo(String agencylogo) {
        this.agencylogo = agencylogo;
    }

    public String getAgencyinfo() {
        return agencyinfo;
    }

    public void setAgencyinfo(String agencyinfo) {
        this.agencyinfo = agencyinfo;
    }

    public String getDomain() {
        return domain;
    }

    public void setDomain(String domain) {
        this.domain = domain;
    }

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUserlogo() {
		return userlogo;
	}

	public void setUserlogo(String userlogo) {
		this.userlogo = userlogo;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getWorkcompany() {
		return workcompany;
	}

	public void setWorkcompany(String workcompany) {
		this.workcompany = workcompany;
	}
    
}