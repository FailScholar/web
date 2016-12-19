package com.jltfisp.web.market.controller;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.util.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jltfisp.web.cloud.entity.Cloud;
import com.jltfisp.web.column.entity.JltfispColumn;
import com.jltfisp.web.column.service.ColumnService;
import com.jltfisp.web.market.entity.Market;
import com.jltfisp.web.market.service.IMarketService;
import com.jltfisp.web.pager.entity.PagerModel;


/**
 * 数据访问
 * @author freameworkGenerator
 *
 */
@Controller
public class MarketController {

    private static final Logger logger = LoggerFactory
            .getLogger(MarketController.class);

    @Autowired
    private IMarketService marketService;
    @Autowired
    private ColumnService columnService;
    

	@RequestMapping("/perm/market")
	public String index(HttpServletRequest request) throws Exception {
		
		 List<JltfispColumn> list = columnService.getColumnList(9);
		 request.setAttribute("colList",list);
		
		return "/website/market/market";
	}
	
	@RequestMapping("/perm/market/{columnId}")
	public String cloudListDetail(HttpServletRequest request, @PathVariable Integer columnId) throws Exception {
		int rows=Integer.parseInt(request.getParameter("pager.offset"));
		Cloud cloud =new Cloud();
		cloud.setColumnId(columnId);
		List<Market> list = marketService.getMarketList(columnId, rows);
		int total = marketService.getMarketCount(columnId);
		PagerModel pm = new PagerModel();
    	pm.setDatas(list);
		pm.setTotal(total);
		request.setAttribute("pm",pm);
		request.setAttribute("url","/perm/market");
		request.setAttribute("columnid", columnId);
		return "/website/market/marketCol";
	}
  
	@RequestMapping("/anon/market/detail")
    public String detail(int id,Integer columnid,String colName,HttpServletRequest request){
	 Market marketDetail = marketService.selectByPk(id);
	 request.setAttribute("marketDetail", marketDetail);
	 //更新浏览量
	 marketService.updateMarketPv(marketDetail.getId(), marketDetail.getPv()==null?1:marketDetail.getPv()+1);
	 request.setAttribute("columnid", columnid);
	 request.setAttribute("colName", StringUtils.hasLength(colName) ? colName : "资本市场");
        return "/website/market/marketDetail";
    }
}
