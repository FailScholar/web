package com.jltfisp.web.institution.controller;

import com.alibaba.fastjson.JSON;
import com.jltfisp.Constants;
import com.jltfisp.FileManager;
import com.jltfisp.login.entity.JltfispUser;
import com.jltfisp.login.service.LoginService;
import com.jltfisp.redis.RedisService;
import com.jltfisp.util.FileUpDownUtils;
import com.jltfisp.util.UploadFile;
import com.jltfisp.web.column.entity.JltfispColumn;
import com.jltfisp.web.column.service.ColumnService;
import com.jltfisp.web.institution.entity.InstitutManage;
import com.jltfisp.web.institution.entity.JltfispInstitution;
import com.jltfisp.web.institution.service.IInstitutManageService;
import com.jltfisp.web.institution.service.InstitutionService;
import com.jltfisp.web.loan.entity.BusinessApplayAudit;
import com.jltfisp.web.loan.service.IBusinessApplayAuditService;
import com.jltfisp.web.pager.entity.PagerModel;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class InstitutionController {
	
	   @Autowired
    private InstitutionService institutionService;
	   
	   @Autowired
	   private IInstitutManageService institutManageService;
	   
	   @Autowired
	   private IBusinessApplayAuditService businessApplayAuditService;
	   
	   @Autowired
	   private ColumnService columnServiceImpl;
	   
	   @Autowired
	   private LoginService loginService;

    @Autowired
    private RedisService<Serializable, String> redisService;
        
    @Autowired
    private FileManager fileManager;

	 /**
	  * 
	  * @description 获取合作机构栏目下二级菜单的list集合
	  * @author chenyun
	  * @date 2016年11月29日 下午1:24:08 
	  * @param @param request
	  * @param @return
	  * @return String
	  */
    @RequestMapping("/perm/institution")
    public String institution(HttpServletRequest request,Integer columnId){
    	List<JltfispColumn> columnList=new ArrayList<JltfispColumn>();
    	List<JltfispColumn> foreFiveList = new ArrayList<JltfispColumn>();
    	List<JltfispColumn> afterFiveList = new ArrayList<JltfispColumn>();
    	Integer parentColumn=6;
    	columnList=this.institutionService.getJltfispColumnList(parentColumn);
    	/*合作机构前面5个正常展示，超过5个select下拉展示*/
    	if(columnList.size()>5){
    		for(int i=0;i<columnList.size();i++){
    			if(i<5){
    				foreFiveList.add(columnList.get(i));
    			}
    			else
    				afterFiveList.add(columnList.get(i));
    		}
    	}
    	request.setAttribute("columnId", columnId);
    	request.setAttribute("columnList", columnList);
    	request.setAttribute("foreFiveList", foreFiveList);
    	request.setAttribute("afterFiveList", afterFiveList);
        return "/website/institution/institution";
    }
    
    /**
     * 
     * @description 通过二级菜单的columnNo获取二级菜单下的信息集合
     * @author chenyun
     * @date 2016年11月29日 下午1:27:37 
     * @param @param columnNo
     * @param @return
     * @return ModelAndView
     */
    @RequestMapping("/perm/institution/{columnId}")
    public ModelAndView getInstitutionList(@PathVariable Integer columnId,HttpServletRequest request) {
    	    int rows=Integer.parseInt(request.getParameter("pager.offset"));
    	    ModelAndView mv=new ModelAndView("/website/institution/institutionList");
    	    List<JltfispInstitution> datas = this.institutionService.getInstitutionList(columnId,rows);
    	    int total=this.institutionService.getInstitutionPageCount(columnId);
    	    PagerModel pm = new PagerModel();
    	    pm.setDatas(datas);
    	    pm.setTotal(total);
    	    mv.addObject("columnId",columnId);
    	    mv.addObject("url","anon/institution");
    	    mv.addObject("pm",pm);
    	    return mv;
    }
    
    @RequestMapping("/anon/getInstitutionDetail")
    public String getInstitutionDetail(HttpServletRequest request,Integer id){
    	JltfispInstitution jltfispInstitutionDetail=this.institutionService.getInstitutionDetail(id);
    	request.setAttribute("jltfispInstitutionDetail", jltfispInstitutionDetail);
        return "/website/institution/institutionDetail";
    }
    
    /**
     * 检查是否有权限或是否已填写过申请合作机构
     * @param request
     * @param columnId
     * @return
     * @author yingying.wang1 2016年12月5日 下午4:33:57
     */
    @RequestMapping("/institution/checkApply")
    @ResponseBody
    public String checkApply(HttpServletRequest request){
        String msg = "";
        //获取当前用户登录信息
        JltfispUser user=loginService.getCurrentUser();
        
        if(user.getType() != null && user.getType() == 1){
            //个人用户
            msg="对不起，您不是企业会员不能申请成为合作机构！";
            return msg;
        }
        
        BusinessApplayAudit businessApplayAudit = businessApplayAuditService.checkApply(user.getId(),Constants.INSTITUTION_APPLY);
        if(businessApplayAudit != null){
            JltfispColumn column = columnServiceImpl.getColumnContext(Integer.parseInt(businessApplayAudit.getType()));
            if(column != null){
                msg="您已申请成为" + column.getColumnName();
            }
        }
        return msg;
    }
    
    /**
     * 申请须知页面
     * @param request
     * @param columnId
     * @return
     * @author yingying.wang1 2016年12月3日 下午5:03:05
     */
    @RequestMapping("/anon/institutionGuide")
    public String institutionGuide(HttpServletRequest request, Integer columnId) {
        InstitutManage institutManage = null;
        if(redisService.getV("InstitutManage"+columnId) != null){
            institutManage = JSON.toJavaObject((JSON) JSON.parse(redisService.getV("InstitutManage"+columnId)),
                    InstitutManage.class);
        }else{
            institutManage = institutManageService.selectByColumnId(columnId);
            if(institutManage == null){
                institutManage = institutManageService.selectTemplate();
            }
        }
        request.setAttribute("columnId", columnId);
        request.setAttribute("institutManage", institutManage);
        return "/website/institution/institutionGuide";
    }
    
    /**
     * 申请成为合作机构页面
     * @param request
     * @param columnId
     * @return
     * @author yingying.wang1 2016年12月5日 下午2:10:04
     */
    @RequestMapping("/anon/institutionApply")
    public String institutionApply(HttpServletRequest request,Integer columnId) {
        InstitutManage institutManage = null;
        if(redisService.getV("InstitutManage"+columnId) != null){
            institutManage = JSON.toJavaObject((JSON) JSON.parse(redisService.getV("InstitutManage"+columnId)),
                    InstitutManage.class);
        }else{
            institutManage = institutManageService.selectByColumnId(columnId);
            if(institutManage == null){
                institutManage = institutManageService.selectTemplate();
            }
        }
        //获取当前用户登录信息
        JltfispUser user=loginService.getCurrentUser();
        JltfispInstitution institution = institutionService.getInstitutionByUserIdAndColumnId(user.getId(), columnId); 
        
        request.setAttribute("columnId", columnId);
        request.setAttribute("institutManage", institutManage);
        request.setAttribute("institution", institution);
        return "/website/institution/institutionApply";
    }
    
    /**
     * 合作机构--保存公司logo
     * @param request
     * @return
     * @throws IOException
     * @author yingying.wang1 2016年12月3日 上午10:59:38
     */
    @RequestMapping("/anon/institution/savePhoto")
    @ResponseBody
    public String imageUpload(HttpServletRequest request) {
        Map<String, Object> map = new HashMap<String, Object>();
        String fileName = "";
        try {
         UploadFile uploadFile = FileUpDownUtils.getUploadFile(request, "upFile");
         fileName = uploadFile.getFileName();
         if (StringUtils.isNotBlank(fileName) && uploadFile.getFileSize() <= 327680) {
          byte[] fileData = FileUpDownUtils.getFileContent(uploadFile.getFile());
          String filePath = fileManager.saveImageFile(fileData, uploadFile.getFileName());

          fileName = filePath.trim();
          map.put("fileName", fileName);
          map.put("msg", "success");
         } else {
           map.put("msg", "请上传大小在320k以内的图片!");
         }
        } catch (Exception e) {
         map.put("msg", e.toString());
        }
        return JSON.toJSONString(map);
    }
    
    /**
     * 保存合作机构申请数据
     * @param institution
     * @return
     * @author yingying.wang1 2016年12月3日 上午11:20:59
     */
    @RequestMapping("/anon/saveInstitution")
    @ResponseBody
    public String saveInstitution(JltfispInstitution institution){
        String msg = "";
        int row = 0;
        Date nowDate = new Date();
        BusinessApplayAudit businessApplayAudit = new BusinessApplayAudit();
        //获取当前用户登录信息
        JltfispUser user=loginService.getCurrentUser();
        
        institution.setCreateTime(nowDate);
        institution.setUserId(user.getId());
        
        businessApplayAudit.setUserId(user.getId());
        businessApplayAudit.setSubmitDate(nowDate);
        businessApplayAudit.setState(0);
        businessApplayAudit.setType(institution.getColumnId().toString());
        businessApplayAudit.setParentType(Constants.INSTITUTION_APPLY);
        //业务审核表中 新增 该会员的合作机构申请
        row = businessApplayAuditService.insertRecord(businessApplayAudit);
        
        if(institution.getId() != null){
            //修改
            row = institutionService.updateByPKSelective(institution);
        }else{
            //保存合作机构申请信息
            row = institutionService.saveInstitution(institution);
        }
        if(row == 0){
            msg = "保存失败";
        }else{
            msg = "保存成功";
        }
        return msg;
    }
    
    /**
     * 注册成功提示页
     * @return
     * @author yingying.wang1 2016年12月3日 下午3:01:11
     */
    @RequestMapping("/anon/registerSuccess")
    public String registerSuccess(){
        return "/website/institution/registerSuccess";
    }
}
