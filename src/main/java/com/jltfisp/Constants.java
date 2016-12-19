package com.jltfisp;

public interface Constants {

	
	 public static final String FILE_HOME = "upload";//文件主目录
	 //public static final String	basePath="D:\\files\\jltfisp_cms";
	 //对应上传的绝对路径或者远程路径
	 public static final String	basePath="\\\\10.10.21.24\\images";
	 public static final String	imageFile="image";
	 public static final String TEMP_DIR = System.getProperty("java.io.tmpdir");
	
    /**
	 * 贷款业务申请类型信息
	 */
	public static final String LOAN_TYPE_KJWDT = "1";//科技微贷通贷款申请
	public static final String LOAN_TYPE_KJLY = "2";//科技履约贷款申请
	public static final String LOAN_TYPE_KJXJR = "3";//科技小巨人贷款申请
	public static final String LOAN_TYPE_GXJS = "4";//高新技术贷款申请
	public static final String LOAN_TYPE_BFBT = "5";//保费补贴申请
	public static final String LOAN_TYPE_GQRZ = "6";//股权融资申请
	
	/**
	 * 业务申请大类
	 */
	public static final String LOAN_BUSINESS= "1";//贷款业务
	public static final String INSTITUTION_APPLY = "2";//机构申请
	public static final String EXPERT_APPLY = "3";//专家申请
    
	
	/**
	 * 业务审核状态
	 */
	public static final String AUDIT_AUDITING= "0";//申请中
	public static final String AUDIT_PASS = "1";//申请通过
	public static final String AUDIT_REFUSE = "2";//申请不通过
	public static final String AUDIT_NOT_SUBMIT = "3";//未提交
	
	/**
	 * 新增业务申请表类型
	 */
	public static final String FORM_TYPE_LOAN= "1";//贷款业务
	public static final String FORM_TYPE_SUBSIDY = "2";//保费补贴
	public static final String FORM_TYPE_FINANCE = "3";//股权融资
}
