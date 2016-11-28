/*******************************************************************************
 * Copyright (c) 2016.10.31 by shuxi.zhang.
 * Copyright © 2016 Shenzhen GTA Education Tech Ltd. All rights reserved
 ******************************************************************************/

package com.jltfisp.web.area.entity;

import javax.persistence.*;

@Table(name = "sys_area")
public class JltfispArea {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    /**
     * 省、市、区县名称
     */
    @Column(name = "name")
    private String name;
    
    /**
     * 父ID
     */
    @Column(name = "Pid")
    private Integer Pid;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getPid() {
		return Pid;
	}

	public void setPid(Integer pid) {
		Pid = pid;
	}

}