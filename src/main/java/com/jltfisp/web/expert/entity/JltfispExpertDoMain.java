/*******************************************************************************
 * Copyright (c) 2016.10.31 by shuxi.zhang.
 * Copyright © 2016 Shenzhen GTA Education Tech Ltd. All rights reserved
 ******************************************************************************/

package com.jltfisp.web.expert.entity;

import javax.persistence.*;

@Table(name = "jltfisp_domain")
public class JltfispExpertDoMain {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    /**
     * 用户ID
     */
    @Column(name = "userid")
    private Integer userid;
    
    /**
     * 一级领域
     */
    @Column(name = "first_domain")
    private String firstdomain;
    
    /**
     * 二级领域
     */
    @Column(name = "second_domain")
    private String seconddomain;
    
    /**
     * 三级领域
     */
    @Column(name = "three_domain")
    private String threedomain;
    
    /**
     * 栏目Id
     */
    @Column(name = "columnid")
    private int columnid;

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

	public String getFirstdomain() {
		return firstdomain;
	}

	public void setFirstdomain(String firstdomain) {
		this.firstdomain = firstdomain;
	}

	public String getSeconddomain() {
		return seconddomain;
	}

	public void setSeconddomain(String seconddomain) {
		this.seconddomain = seconddomain;
	}

	public String getThreedomain() {
		return threedomain;
	}

	public void setThreedomain(String threedomain) {
		this.threedomain = threedomain;
	}

	public int getColumnid() {
		return columnid;
	}

	public void setColumnid(int columnid) {
		this.columnid = columnid;
	}
   
}