/*******************************************************************************
 * Copyright (c) 2016.11.24 by shuxi.zhang.
 * Copyright © 2016 Shenzhen GTA Education Tech Ltd. All rights reserved
 ******************************************************************************/

package com.jltfisp.web.loan.entity;

import javax.persistence.*;

@Table(name = "jltfisp_co_file")
public class JltfispCoFile {
    
    /**
     * ID
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    /**
     * 企业申请信息id
     */
    @Column(name = "apply_id")
    private int applyid;

    /**
     * 附件类型:1、工商营业执照2、组织机构代码3、税务登录记4、法人代表授权书5、专利证书6、公司介绍7、主要销售合同8、其他
     */
    @Column(name = "file_type")
    private int filetype;

    /**
     * 附件存储路径
     */
    @Column(name = "file_path")
    private String filepath;
    
    /**
     * 附件原名称
     */
    @Column(name = "preName")
    private String preName;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getApplyid() {
		return applyid;
	}

	public void setApplyid(int applyid) {
		this.applyid = applyid;
	}

	public int getFiletype() {
		return filetype;
	}

	public void setFiletype(int filetype) {
		this.filetype = filetype;
	}

	public String getFilepath() {
		return filepath;
	}

	public void setFilepath(String filepath) {
		this.filepath = filepath;
	}

	public String getPreName() {
		return preName;
	}

	public void setPreName(String preName) {
		this.preName = preName;
	}

}