package com.jltfisp.web.policy.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jltfisp.web.column.entity.JltfispColumn;
import com.jltfisp.web.column.service.ColumnService;
import com.jltfisp.web.expert.entity.JltfispExpert;
import com.jltfisp.web.news.entity.DictColumnDto;
import com.jltfisp.web.news.entity.NewsInformation;
import com.jltfisp.web.news.service.IDictColumnService;
import com.jltfisp.web.pager.entity.PagerModel;
import com.jltfisp.web.policy.entity.JltfispPolicy;
import com.jltfisp.web.policy.service.PolicyService;
/**
 * 政策中心控制类
 * @author cuihong.ge
 *
 */
@Controller
//@RequestMapping("/perm")
public class PolicyController {
	 @Autowired
	 private ColumnService columnService; 
	 @Autowired
	 private PolicyService policyService;
	 @Autowired
	private IDictColumnService deictColumnService;
	/**
	 * 政策中心
	 * @return
	 */
	@RequestMapping("/perm/policy")
    public String policy(HttpServletRequest request,Integer columnId){
    	//根据父栏目columnId查询子栏目信息
    	List<JltfispColumn> columnList=columnService.getColumnList(4);
        request.setAttribute("columnList", columnList);
        int total=0;
        List<JltfispPolicy> datas=null;
        if(columnId !=null){
       	 request.setAttribute("columnId", columnId);
       	 //获取当前页的数据，且显示12条
            datas= datas=policyService.getPolicyPageList(0, 8,columnId);
          //获取当前子栏目下所有的数据总数
            total =policyService.getPolicyPageCount(columnId);
       }else if(columnList !=null && columnList.size()>0){
       	    request.setAttribute("columnId", columnList.get(0).getId());
       	   //获取当前页的数据，且显示12条
            datas= datas=policyService.getPolicyPageList(0, 8,columnList.get(0).getId());
           //获取当前子栏目下所有的数据总数
            total =policyService.getPolicyPageCount(columnList.get(0).getId());
       }
        PagerModel pm = new PagerModel();
        pm.setDatas(datas);
        pm.setTotal(total);
        request.setAttribute("pm", pm);
        request.setAttribute("url", "perm/policy");
        return "/website/policy/policy";
    }
	
	 /**
     * 点击政策中心下面的其他二级栏目
     * @param request
     * @return
     */
    @RequestMapping("/perm/policy/{columnId}")
    public String changeExpert(@PathVariable Integer columnId,HttpServletRequest request){
     int rows=Integer.parseInt(request.getParameter("pager.offset"));
     //获取当前子栏目下所有的数据总数
     int total =policyService.getPolicyPageCount(columnId);
     //获取当前页的数据，且显示12条
     List<JltfispPolicy>  datas=policyService.getPolicyPageList(rows, 8,columnId);
     PagerModel pm = new PagerModel();
     pm.setDatas(datas);
     pm.setTotal(total);
     request.setAttribute("pm", pm);
     request.setAttribute("url", "perm/policy");
     return "/website/policy/policyContent";
    }
     
	/**
     * 政策资源详情
     * @param request
     * @return
     * @author 
     */
    @RequestMapping("/anon/policyDetail")
    public String detail(HttpServletRequest request){
        String policyId = request.getParameter("policyId");
       //每浏览一次新闻浏览量会改变
      	this.policyService.addPolicyInfoPv(Integer.valueOf(policyId));
        //获取政策信息
        JltfispPolicy ltfispPolicy=policyService.getPolicyContext(Integer.parseInt(policyId));
        //获取二级栏目信息
        JltfispColumn jltfispColumn=columnService.getColumnContext(ltfispPolicy.getColumnId());
        if(jltfispColumn !=null){
			DictColumnDto dictColumn=this.deictColumnService.SelectDictColumnDtoById(jltfispColumn.getParentColumn());
			request.setAttribute("dictColumn", dictColumn);
		}
        request.setAttribute("jltfispColumn", jltfispColumn);
        request.setAttribute("ltfispPolicy", ltfispPolicy);
        return "/website/policy/policyDetail";
    }
	
}
