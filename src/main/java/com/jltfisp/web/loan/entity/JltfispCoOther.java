/*******************************************************************************
 * Copyright (c) 2016.11.24 by shuxi.zhang.
 * Copyright © 2016 Shenzhen GTA Education Tech Ltd. All rights reserved
 ******************************************************************************/

package com.jltfisp.web.loan.entity;

import javax.persistence.*;

@Table(name = "jltfisp_co_other_info")
public class JltfispCoOther {
    
    /**
     * ID
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    /**
     * 关联企业申请信息id
     */
    @Column(name = "info_id")
    private int infoid;

    /**
     * 本年度已签订所有合同的标的总额
     */
    @Column(name = "subject_amount")
    private double subjectamount;

    /**
     * 附件存储路径
     */
    @Column(name = "loan_amount")
    private double loanamount;
    
    /**
     * 其他说明
     */
    @Column(name = "other_explain")
    private String otherexplain;

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

	public double getSubjectamount() {
		return subjectamount;
	}

	public void setSubjectamount(double subjectamount) {
		this.subjectamount = subjectamount;
	}

	public double getLoanamount() {
		return loanamount;
	}

	public void setLoanamount(double loanamount) {
		this.loanamount = loanamount;
	}

	public String getOtherexplain() {
		return otherexplain;
	}

	public void setOtherexplain(String otherexplain) {
		this.otherexplain = otherexplain;
	}


}