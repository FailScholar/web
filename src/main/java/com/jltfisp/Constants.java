package com.jltfisp;

public interface Constants {

	
	 public static final String FILE_HOME = "upload";//文件主目录
	 public static final String	basePath="D:\\files\\jltfisp_cms";
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
	public static final String LOAN_BUSINESS= "1";//申请中
	public static final String INSTITUTION_APPLY = "2";//申请通过
	public static final String EXPERT_APPLY = "3";//申请不通过
    
}
