package com.jltfisp.web.policy.controller;

import com.jltfisp.web.column.entity.JltfispColumn;
import com.jltfisp.web.column.service.ColumnService;
import com.jltfisp.web.pager.entity.PagerModel;
import com.jltfisp.web.policy.entity.JltfispPolicy;
import com.jltfisp.web.policy.service.PolicyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
/**
 * 政策中心控制类
 * @author cuihong.ge
 *
 */
@Controller
@RequestMapping("/anon")
public class PolicyController {
	 @Autowired
	 private ColumnService columnService; 
	 @Autowired
	 private PolicyService policyService;
	/**
	 * 政策中心
	 * @return
	 */
	@RequestMapping("/policy")
    public String policy(HttpServletRequest request){
		//获取父栏目columnId
    	String columnId = request.getParameter("columnId");
    	String type = request.getParameter("type");
    	String isPage = request.getParameter("isPage");
    	
		String offset=request.getParameter("pager.offset");
    	int rows;
    	if(offset !=null){
    	rows=Integer.parseInt(request.getParameter("pager.offset"));
    	}else{
    	rows=0;
    	}
    	int total=0;
    	List<JltfispColumn> columnList;
    	List<JltfispPolicy> datas;
    	if(type=="" || type==null){
	        columnList=columnService.getColumnList(4);
	        request.setAttribute("columnList", columnList);
	        request.setAttribute("columnId", columnList.get(0).getId());
	        total =policyService.getPolicyPageCount(columnList.get(0).getId());
	        datas=policyService.getPolicyPageList(rows, 10,columnList.get(0).getId());
    	}else{
    		//根据子栏目columnId查询子栏目信息
        	JltfispColumn ChirldColumn=columnService.getColumnContext(Integer.parseInt(columnId));
        	//根据父栏目columnId查询子栏目信息
        	columnList=columnService.getColumnList(ChirldColumn.getParentColumn());
            request.setAttribute("columnList", columnList);
            request.setAttribute("columnId", columnId);
            //获取当前子栏目下所有的数据总数
            total =policyService.getPolicyPageCount(Integer.parseInt(columnId));
            //获取当前页的数据，且显示10条
            datas=policyService.getPolicyPageList(rows, 10,Integer.parseInt(columnId));
    	}
        PagerModel pm = new PagerModel();
        pm.setDatas(datas);
        pm.setTotal(total);
        request.setAttribute("pm", pm);
        request.setAttribute("url", "anon/policy");
        if(type=="" || type==null){
            return "/website/policy/policy";
        }else{
            if(isPage == null){
           	   return "/website/policy/policyContent";
            }else{
           	   return "/website/policy/policy";
            }
        }
    }
	  /**
     * 政策资源详情
     * @param request
     * @return
     * @author 
     */
    @RequestMapping("/policyDetail")
    public String detail(HttpServletRequest request){
        String policyId = request.getParameter("policyId");
       //每浏览一次新闻浏览量会改变
      	this.policyService.addPolicyInfoPv(Integer.valueOf(policyId));
        //获取政策信息
        JltfispPolicy ltfispPolicy=policyService.getPolicyContext(Integer.parseInt(policyId));
        //获取二级栏目信息
        JltfispColumn jltfispColumn=columnService.getColumnContext(ltfispPolicy.getColumnId());
        //获取父栏目信息
        JltfispColumn parentJltfispColumn=columnService.getColumnContext(jltfispColumn.getParentColumn());
        request.setAttribute("jltfispColumn", jltfispColumn);
        request.setAttribute("parentJltfispColumn", parentJltfispColumn);
        request.setAttribute("ltfispPolicy", ltfispPolicy);
        return "/website/policy/policyDetail";
    }
	
}
