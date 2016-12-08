package com.jltfisp.web.loan.entity;

import java.util.Date;

import com.jltfisp.base.entity.BaseEntity;
/**
 * 
 * jltfisp_business_applay表
 *
 */
public class BusinessApplayAudit extends BaseEntity{
	private Integer id; // 
	private Integer userId; // 申请该业务的会员id
	private Date submitDate; // 提交申请时间
	private Integer state; // 业务申请状态（0：申请中；1：申请通过；2：申请不通过）
	private String type; // 1：保费补贴申请  2：股权融资申请  3：合作机构申请 4：服务团队申请  5：贷款申请（科技履约贷款申请、科技小巨人贷款申请、高新技术贷款申请、科技微贷通贷款申请）
	private String auditDesc; // 审核意见
	private Double loanValue;//贷款金额
	private String parentType;//业务申请大类
	
	//以下用于查询
	private String companyId;//企业id
	private String companyName;//企业名称
	private String userName;//用户名
	private String typeName;//申请类型名称
	private String tecName;//所属技术领域
	private Integer applyId;//申请id
	

	public BusinessApplayAudit() {
		super();
	}

	/**
     * 获取属性
     *
     * @return id
     */
	public Integer getId() {
		return id;
	}
	
	/**
	 * 设置属性
	 *
	 * @param id
	 */
	public void setId(Integer id) {
		this.id = id;
		
	}
	
	/**
     * 获取申请该业务的会员id属性
     *
     * @return userId
     */
	public Integer getUserId() {
		return userId;
	}
	
	/**
	 * 设置申请该业务的会员id属性
	 *
	 * @param userId
	 */
	public void setUserId(Integer userId) {
		this.userId = userId;
		
	}
	
	/**
     * 获取提交申请时间属性
     *
     * @return submitDate
     */
	public java.util.Date getSubmitDate() {
		return submitDate;
	}
	
	/**
	 * 设置提交申请时间属性
	 *
	 * @param submitDate
	 */
	public void setSubmitDate(java.util.Date submitDate) {
		this.submitDate = submitDate;
		
	}
	
	/**
     * 获取业务申请状态（0：申请中；1：申请通过；2：申请不通过）属性
     *
     * @return state
     */
	public Integer getState() {
		return state;
	}
	
	/**
	 * 设置业务申请状态（0：申请中；1：申请通过；2：申请不通过）属性
	 *
	 * @param state
	 */
	public void setState(Integer state) {
		this.state = state;
		
	}
	
	/**
     * 获取1：保费补贴申请  2：股权融资申请  3：合作机构申请 4：服务团队申请  5：贷款申请（科技履约贷款申请、科技小巨人贷款申请、高新技术贷款申请、科技微贷通贷款申请）属性
     *
     * @return type
     */
	public String getType() {
		return type;
	}
	
	/**
	 * 设置1：保费补贴申请  2：股权融资申请  3：合作机构申请 4：服务团队申请  5：贷款申请（科技履约贷款申请、科技小巨人贷款申请、高新技术贷款申请、科技微贷通贷款申请）属性
	 *
	 * @param type
	 */
	public void setType(String type) {
		this.type = type == null ? null : type.trim();
		
	}
	
	/**
     * 获取审核意见属性
     *
     * @return auditDesc
     */
	public String getAuditDesc() {
		return auditDesc;
	}
	
	/**
	 * 设置审核意见属性
	 *
	 * @param auditDesc
	 */
	public void setAuditDesc(String auditDesc) {
		this.auditDesc = auditDesc == null ? null : auditDesc.trim();
		
	}

	
	public String getCompanyId() {
		return companyId;
	}
	public void setCompanyId(String companyId) {
		this.companyId = companyId;
	}
	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getTypeName() {
		return typeName;
	}

	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}

	public String getTecName() {
		return tecName;
	}

	public void setTecName(String tecName) {
		this.tecName = tecName;
	}

	public Integer getApplyId() {
		return applyId;
	}

	public void setApplyId(Integer applyId) {
		this.applyId = applyId;
	}
	public Double getLoanValue() {
		return loanValue;
	}
	public void setLoanValue(Double loanValue) {
		this.loanValue = loanValue;
	}
	
	public String getParentType() {
		return parentType;
	}
	public void setParentType(String parentType) {
		this.parentType = parentType;
	}
	
	
}