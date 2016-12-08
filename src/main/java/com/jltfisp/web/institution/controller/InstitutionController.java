package com.jltfisp.web.institution.controller;

import com.alibaba.fastjson.JSON;
import com.github.pagehelper.PageInfo;
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

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

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

	 /**
	  * 
	  * @description 获取合作机构栏目下二级菜单的list集合
	  * @author chenyun
	  * @date 2016年11月29日 下午1:24:08 
	  * @param @param request
	  * @param @return
	  * @return String
	  */
    @RequestMapping("/anon/institution")
    public String institution(HttpServletRequest request){
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
    	/**首次进入合作机构，展示第一个的分页**/
//    	String offset=request.getParameter("pager.offset");
//    	int rows;
//    	if(offset !=null){
//    		rows=Integer.parseInt(request.getParameter("pager.offset"));
//    	}else{
//    		rows=0;
//    	}
//        int total =institutionService.getInstitutionPageCount(columnList.get(0).getId());
//        List<JltfispInstitution> datas=institutionService.getInstitutionPageList(rows, 5,columnList.get(0).getId());
//        PagerModel pm = new PagerModel();
//        pm.setDatas(datas);
//        pm.setTotal(total);
//        request.setAttribute("pm", pm);
//        request.setAttribute("url", "anon/institution");
    	
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
    @RequestMapping("/anon/getInstitutionList")
    public ModelAndView getInstitutionList(Integer columnId, Integer page) {
    	    ModelAndView mv=new ModelAndView("/website/institution/institutionList");
    	    List<JltfispInstitution> institutionList = this.institutionService.getInstitutionList(columnId,page);
    	    PageInfo pageInfo = new PageInfo<>(institutionList);
    	    mv.addObject("pageInfo",pageInfo);
    	    mv.addObject("institutionList", institutionList);
    	    return mv;
    }
    
    @RequestMapping("/anon/getInstitutionDetail")
    public String getInstitutionDetail(HttpServletRequest request,Integer id){
    	
    	JltfispInstitution jltfispInstitutionDetail=this.institutionService.getInstitutionDetail(id);
    	request.setAttribute("jltfispInstitutionDetail", jltfispInstitutionDetail);
        return "/website/institution/institutionDetail";
    }
    
    /**
     * 检查是否填写过申请合作机构
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
        BusinessApplayAudit businessApplayAudit = businessApplayAuditService.checkApply(user.getId(),"7");
        if(businessApplayAudit != null){
            JltfispInstitution institution = institutionService.getInstitutionByUserId(user.getId());
            if(institution != null){
                JltfispColumn column = columnServiceImpl.getColumnContext(institution.getColumnId());
                if(column != null){
                    msg="您已申请成为" + column.getColumnName();
                }
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
        if(redisService.getV(columnId) != null){
            institutManage = JSON.toJavaObject((JSON) JSON.parse(redisService.getV(columnId)),
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
        if(redisService.getV(columnId) != null){
            institutManage = JSON.toJavaObject((JSON) JSON.parse(redisService.getV(columnId)),
                    InstitutManage.class);
        }else{
            institutManage = institutManageService.selectByColumnId(columnId);
            if(institutManage == null){
                institutManage = institutManageService.selectTemplate();
            }
        }
        //获取当前用户登录信息
        JltfispUser user=loginService.getCurrentUser();
        JltfispInstitution institution = institutionService.getInstitutionByUserId(user.getId()); 
        
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
    public String savePhoto(HttpServletRequest request) throws IOException {
     UploadFile uploadFile = FileUpDownUtils.getUploadFile2(request, "upFile");
     String path=uploadFile.getFile().getName();
        return path;
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
        if(institution.getId() != null){
            //修改
            row = institutionService.updateByPKSelective(institution);
            
            businessApplayAudit = businessApplayAuditService.getBusinessApplayAudit(user.getId(), "7", 2);
            businessApplayAudit.setState(0);
            businessApplayAudit.setSubmitDate(nowDate);
            businessApplayAudit.setAuditDesc("");
            row = businessApplayAuditService.updateByPK(businessApplayAudit);
            
        }else{
            businessApplayAudit.setUserId(user.getId());
            businessApplayAudit.setSubmitDate(nowDate);
            businessApplayAudit.setState(0);
            businessApplayAudit.setType("7");
            //业务审核表中 新增 该会员的合作机构申请
            row = businessApplayAuditService.insertRecord(businessApplayAudit);
            
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
