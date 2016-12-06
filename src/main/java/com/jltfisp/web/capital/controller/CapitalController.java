package com.jltfisp.web.capital.controller;

import com.jltfisp.web.capital.entity.JltfispCapital;
import com.jltfisp.web.capital.service.CapitalService;
import com.jltfisp.web.column.entity.JltfispColumn;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;


@Controller
@RequestMapping("/anon")
public class CapitalController {
	
	@Autowired
    private CapitalService capitalService;
	
   /**
    * 
    * @description 获取专项资金下二级菜单的list集合
    * @author chenyun
    * @date 2016年11月28日 下午4:01:24 
    * @param @param request
    * @param @return
    * @return String
    */
    @RequestMapping("/capital")
    public String capital(HttpServletRequest request){
    	List<JltfispColumn> columnList=new ArrayList<JltfispColumn>();
    	Integer parentColumn=5;
    	columnList=this.capitalService.getJltfispColumnList(parentColumn);
    	request.setAttribute("columnList", columnList);
        return "/website/capital/capital";
    }
    
    /**
     * 
     * @description 通过二级菜单的columnNo获取二级菜单下的信息集合
     * @author chenyun
     * @date 2016年11月28日 下午3:52:13 
     * @param @param columnId 主菜单的
     * @param @return
     * @return ModelAndView
     */
    @RequestMapping("/getCapitalInfoList")
    public ModelAndView getCapitalInfoList(Integer columnNo){
    	List<JltfispCapital> captialList = new ArrayList<JltfispCapital>();
    	captialList=this.capitalService.getCapitalInfoList(columnNo);
    	ModelAndView mv=new ModelAndView("/website/capital/capitalInfoList");
    	mv.addObject("captialList", captialList);
    	return mv;
    }
    
    /**
     * 
     * @description 打开一条专项资金的链接查看详细信息
     * @author chenyun
     * @date 2016年11月28日 下午4:02:11 
     * @param @param request
     * @param @param id
     * @param @return
     * @return String
     */
	@RequestMapping("/getCapitalDetail")
	public String getCapitalDetail(HttpServletRequest request,Integer id){
		/**浏览记录加一**/
		this.capitalService.updateCapitalPv(id);
		/**根据id查询具体的信息**/
		JltfispCapital capitalInfoDetail=this.capitalService.getCapitalDetail(id);		
		request.setAttribute("capitalInfoDetail", capitalInfoDetail);
		return "/website/capital/capitalInfoDetail";
	}

}
