/*******************************************************************************
 * Copyright (c) 2016.11.24 by shuxi.zhang.
 * Copyright © 2016 Shenzhen GTA Education Tech Ltd. All rights reserved
 ******************************************************************************/

package com.jltfisp.web.loan.entity;

import javax.persistence.*;

public class JltfispCoBankBorrow {
    
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
     * 年份
     */
    @Column(name = "year")
    private String year;

    /**
     * 贷款银行
     */
    @Column(name = "company_name")
    private String companyname;

    /**
     * 贷款金额
     */
    @Column(name = "payable_amount")
    private double payableamount;

    /**
     * 担保方式
     */
    @Column(name = "aging")
    private String aging;

    /**
     * 开始日期
     */
    @Column(name = "begin_date")
    private String begindate;

    /**
     * 结束日期
     */
    @Column(name = "end_date")
    private String enddate;
    
    
    /**
     * 占百分比%
     */
    @Column(name = "percentage")
    private double percentage;


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

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getCompanyname() {
		return companyname;
	}

	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}

	public double getPayableamount() {
		return payableamount;
	}

	public void setPayableamount(double payableamount) {
		this.payableamount = payableamount;
	}

	public String getAging() {
		return aging;
	}

	public void setAging(String aging) {
		this.aging = aging;
	}

	public String getBegindate() {
		return begindate;
	}

	public void setBegindate(String begindate) {
		this.begindate = begindate;
	}

	public String getEnddate() {
		return enddate;
	}

	public void setEnddate(String enddate) {
		this.enddate = enddate;
	}

}