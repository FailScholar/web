package com.jltfisp.web.loan.entity;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 
 * @description 股权融资申请股东表实体类
 * @author chenyun
 * @date 2016年12月2日 上午9:14:33
 */
@Table(name = "jltfisp_fin_shareholder")
public class JltfispFinShareholder {
	
	
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	
	/**
	 * 关联股权融资申请表id
	 */
	private Integer financingId;
	
	/**
	 * 股东姓名
	 */
	private String name;
	
	/**
	 * 法人代表(或证件号)
	 */
	private String number;
	
	/**
	 * 所持有比例
	 */
	private Double ratio;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@Column(name = "financing_id")
	public Integer getFinancingId() {
		return financingId;
	}

	public void setFinancingId(Integer financingId) {
		this.financingId = financingId;
	}

	@Column(name = "name")
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "number")
	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	@Column(name = "ratio")
	public Double getRatio() {
		return ratio;
	}

	public void setRatio(Double ratio) {
		this.ratio = ratio;
	}

}
