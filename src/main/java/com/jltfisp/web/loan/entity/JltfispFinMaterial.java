package com.jltfisp.web.loan.entity;

import javax.persistence.*;
/**
 * 
 * @description 股权融资申请材料表实体类
 * @author chenyun
 * @date 2016年12月2日 上午9:14:33
 */
@Table(name = "jltfisp_fin_material")
public class JltfispFinMaterial {
	
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	
	/**
	 * 关联股权融资申请信息id
	 */
	private Integer infoId;
	
	/**
	 * 大前年收入
	 */
	private Double incomeThreeLast;
	
	/**
	 * 前年收入
	 */
	private Double incomeBeforeLast;
	
	/**
	 * 去年收入
	 */
	private Double incomeLast;
	
	/**
	 * 大前年利润
	 */
	private Double profitThreeLast;
	
	/**
	 * 前年利润
	 */
	private Double profitBeforeLast;
	
	/**
	 * 去年利润
	 */
	private Double profitLast;
	
	/**
	 * 拟融资金额
	 */
	private Double capitals;
	
	/**
	 * 对投资机构的要求
	 */
	private String requireOrganization;
	
	/**
	 * 服务要求  1 网站上发布  2 项目洽谈会发布  3与投资机构个别洽谈
	 */
	private Integer requireService;
	
	/**
	 * 服务要求具体文本说明
	 */
	private String requireServiceText;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@Column(name = "info_id")
	public Integer getInfoId() {
		return infoId;
	}

	public void setInfoId(Integer infoId) {
		this.infoId = infoId;
	}

	@Column(name = "income_three_last")
	public Double getIncomeThreeLast() {
		return incomeThreeLast;
	}

	public void setIncomeThreeLast(Double incomeThreeLast) {
		this.incomeThreeLast = incomeThreeLast;
	}

	@Column(name = "income_before_last")
	public Double getIncomeBeforeLast() {
		return incomeBeforeLast;
	}

	public void setIncomeBeforeLast(Double incomeBeforeLast) {
		this.incomeBeforeLast = incomeBeforeLast;
	}

	@Column(name = "income_last")
	public Double getIncomeLast() {
		return incomeLast;
	}

	public void setIncomeLast(Double incomeLast) {
		this.incomeLast = incomeLast;
	}

	@Column(name = "profit_three_last")
	public Double getProfitThreeLast() {
		return profitThreeLast;
	}

	public void setProfitThreeLast(Double profitThreeLast) {
		this.profitThreeLast = profitThreeLast;
	}

	@Column(name = "profit_before_last")
	public Double getProfitBeforeLast() {
		return profitBeforeLast;
	}

	public void setProfitBeforeLast(Double profitBeforeLast) {
		this.profitBeforeLast = profitBeforeLast;
	}

	@Column(name = "profit_last")
	public Double getProfitLast() {
		return profitLast;
	}

	public void setProfitLast(Double profitLast) {
		this.profitLast = profitLast;
	}

	@Column(name = "capitals")
	public Double getCapitals() {
		return capitals;
	}

	public void setCapitals(Double capitals) {
		this.capitals = capitals;
	}

	@Column(name = "require_organization")
	public String getRequireOrganization() {
		return requireOrganization;
	}

	public void setRequireOrganization(String requireOrganization) {
		this.requireOrganization = requireOrganization;
	}

	@Column(name = "require_service")
	public Integer getRequireService() {
		return requireService;
	}

	public void setRequireService(Integer requireService) {
		this.requireService = requireService;
	}

	@Column(name = "require_service_text")
	public String getRequireServiceText() {
		return requireServiceText;
	}

	public void setRequireServiceText(String requireServiceText) {
		this.requireServiceText = requireServiceText;
	}
	
}
