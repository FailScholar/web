package com.jltfisp.web.cloud.controller;

import com.jltfisp.base.controller.BaseController;
import com.jltfisp.base.entity.PageInfo;
import com.jltfisp.base.service.IBaseService;
import com.jltfisp.web.cloud.entity.Cloud;
import com.jltfisp.web.cloud.service.ICloudService;
import com.jltfisp.web.column.entity.JltfispColumn;
import com.jltfisp.web.column.service.ColumnService;
import org.apache.shiro.util.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;


/**
 * 数据访问
 * @author freameworkGenerator
 *
 */
@Controller
public class CloudController extends BaseController<Cloud> {

    private static final Logger logger = LoggerFactory
            .getLogger(CloudController.class);

    @Autowired
    private ICloudService cloudService;
    @Autowired
    private ColumnService columnService;
    
    @Override
	public IBaseService<Cloud> getEntityService() {
		return cloudService;
	}

	@Override
	public String getFileBasePath() {
		return "/website/cloud/";
	}

	@Override
	public String getPageName() {
		return "";
	}

	@Override
	public void getMenuIndex(HttpServletRequest request) {
		// TODO Auto-generated method stub
		
	}
	@RequestMapping("/perm/cloud")
	public String index(HttpServletRequest request) throws Exception {
		
		 List<JltfispColumn> list = columnService.getColumnList(11);
		 request.setAttribute("colList",list);
		
		return getFileBasePath()+"cloud";
	}
	
	@RequestMapping("/perm/cloud/{columnId}")
	public String cloudListDetail(HttpServletRequest request, @PathVariable Integer columnId) throws Exception {
		Cloud cloud =new Cloud();
		cloud.setColumnId(columnId);
		PageInfo info  = preparePageinfo(request,cloud);
		handlePage(request, info, cloud);
		JltfispColumn columnOne = columnService.getColumnOne(11, 6);
		request.setAttribute("columnOne", columnOne);
		request.setAttribute("columnid", columnId);
		return getFileBasePath()+"cloudCol";
	}

	 @RequestMapping("/anon/cloud/detail")
	    public String videoDetail(int id,Integer columnid,String colName,HttpServletRequest request){
		 JltfispColumn columnOne = columnService.getColumnOne(11, 6);
		 Cloud cloudDetail = cloudService.selectByPk(id);
		 request.setAttribute("columnOne", columnOne);
		 request.setAttribute("cloudDetail", cloudDetail);
		 request.setAttribute("columnid", columnid);
		 request.setAttribute("colName", StringUtils.hasLength(colName) ? colName : "云课堂");
	        return "/website/cloud/videoDetail";
	    }
  
}
