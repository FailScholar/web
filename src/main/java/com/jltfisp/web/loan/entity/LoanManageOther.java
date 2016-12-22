package com.jltfisp.web.loan.entity;

import javax.persistence.Transient;

import com.jltfisp.base.entity.BaseEntity;

/**
 * 
 * jltfisp_loan_manage_other表
 *
 */
public class LoanManageOther extends BaseEntity{
		private java.lang.String formLabelJson; // 申请表标签定义json串
		private java.lang.Integer istemplate; // 是否模板
		private java.util.Date createtime; // 创建时间
		private java.lang.Integer type; // 关联的前端贷款业务类型
		private java.lang.String applyGuide; // 申请须知
		private java.lang.String loanGuide; // 贷款业务说明
		
		@Transient
  private java.lang.String loanName;// 贷款业务名称

  @Transient
  private java.lang.String loanCode;// 贷款业务code

	
		/**
	     * 获取申请表标签定义json串属性
	     *S
	     * @return formLabelJson
	     */
		public java.lang.String getFormLabelJson() {
			return formLabelJson;
		}
		
		/**
		 * 设置申请表标签定义json串属性
		 *
		 * @param formLabelJson
		 */
		public void setFormLabelJson(java.lang.String formLabelJson) {
			this.formLabelJson = formLabelJson == null ? null : formLabelJson.trim();
			
		}
		/**
	     * 获取是否模板属性
	     *
	     * @return istemplate
	     */
		public java.lang.Integer getIstemplate() {
			return istemplate;
		}
		
		/**
		 * 设置是否模板属性
		 *
		 * @param istemplate
		 */
		public void setIstemplate(java.lang.Integer istemplate) {
			this.istemplate = istemplate;
			
		}
		/**
	     * 获取创建时间属性
	     *
	     * @return createtime
	     */
		public java.util.Date getCreatetime() {
			return createtime;
		}
		
		/**
		 * 设置创建时间属性
		 *
		 * @param createtime
		 */
		public void setCreatetime(java.util.Date createtime) {
			this.createtime = createtime;
			
		}
		/**
	     * 获取关联的前端贷款业务类型属性
	     *
	     * @return type
	     */
		public java.lang.Integer getType() {
			return type;
		}
		
		/**
		 * 设置关联的前端贷款业务类型属性
		 *
		 * @param type
		 */
		public void setType(java.lang.Integer type) {
			this.type = type;
			
		}
		/**
	     * 获取申请须知属性
	     *
	     * @return applyGuide
	     */
		public java.lang.String getApplyGuide() {
			return applyGuide;
		}
		
		/**
		 * 设置申请须知属性
		 *
		 * @param applyGuide
		 */
		public void setApplyGuide(java.lang.String applyGuide) {
			this.applyGuide = applyGuide == null ? null : applyGuide.trim();
			
		}
		/**
	     * 获取贷款业务说明属性
	     *
	     * @return loanGuide
	     */
		public java.lang.String getLoanGuide() {
			return loanGuide;
		}
		
		/**
		 * 设置贷款业务说明属性
		 *
		 * @param loanGuide
		 */
		public void setLoanGuide(java.lang.String loanGuide) {
			this.loanGuide = loanGuide == null ? null : loanGuide.trim();
			
		}
  public java.lang.String getLoanName() {
      return loanName;
  }

  public void setLoanName(java.lang.String loanName) {
      this.loanName = loanName;
  }

  public java.lang.String getLoanCode() {
      return loanCode;
  }

  public void setLoanCode(java.lang.String loanCode) {
      this.loanCode = loanCode;
  }
}