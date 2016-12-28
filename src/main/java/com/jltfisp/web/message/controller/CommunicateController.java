package com.jltfisp.web.message.controller;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.collections.map.HashedMap;
import org.apache.shiro.SecurityUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jltfisp.base.controller.BaseController;
import com.jltfisp.base.entity.PageInfo;
import com.jltfisp.base.service.IBaseService;
import com.jltfisp.login.entity.JltfispAdmin;
import com.jltfisp.login.entity.JltfispUser;
import com.jltfisp.login.service.LoginService;
import com.jltfisp.web.message.entity.Communicate;
import com.jltfisp.web.message.service.ICommunicateService;
import com.jltfisp.web.user.entity.Role;
import com.jltfisp.web.user.service.IRoleService;


/**
 * 数据访问--互动交流
 * @author freameworkGenerator
 *
 */
@Controller
@RequestMapping("/communicate")
public class CommunicateController extends BaseController<Communicate> {

    private static final Logger logger = LoggerFactory
            .getLogger(CommunicateController.class);

    @Autowired
    private ICommunicateService communicateService;
    @Autowired
    private IRoleService roleService;
    @Autowired
    private LoginService loginService;
    
    @Override
	public IBaseService<Communicate> getEntityService() {
		return communicateService;
	}

	@Override
	public String getFileBasePath() {
		return "website/usercenter/";
	}

	@Override
	public String getPageName() {
		return "Communicate";
	}

	@Override
	public void getMenuIndex(HttpServletRequest request) {
		// TODO Auto-generated method stub
		
	}
	
	@Override
	@RequestMapping(value = "/page")
	public String page(HttpServletRequest request, Communicate t) throws Exception {
		JltfispUser currentUser = loginService.getCurrentUser();
		t.setSendUser(currentUser.getId());
		PageInfo info  = preparePageinfo(request,t);
		info.setBy("time");
		String result = handlePage(request, info, t);
		Role role = new Role();
		role.setParentId(6);
		List<Role> roleList = roleService.selectBySample(role, null);
		
		List<String> columnList = roleService.getColumnList(7);
		request.setAttribute("columnList", columnList);
		request.setAttribute("roleList", roleList);
		return result;
	}
	
	@RequestMapping(value = "/expertPage")
	public String expertPage(HttpServletRequest request, Communicate t) throws Exception {
		JltfispUser currentUser = loginService.getCurrentUser();
		t.setToUser(currentUser.getId());
		
		Set<String> roles = loginService.findRoles(currentUser.getAccountNumber());
		for (String roleName : roles) {
			if(!roleName.equals("个人会员")){
				t.setAnsExpertName(roleName);
				break;
			}
		}
		
		PageInfo info  = preparePageinfo(request,t);
		info.setBy("time");
		String result = handlePage(request, info, t);
		return getFileBasePath()+"/listAnsCommunicate";
	}
	
	/**
	 * 保存咨询信息，并跳转到page
	 */
	@RequestMapping(value = "/saveToPage")
	public String saveToPage(HttpServletRequest request,Communicate t) throws Exception {
		JltfispUser currentUser = loginService.getCurrentUser();
		t.setSendUser(currentUser.getId());
		t.setContentType(0);
		t.setTime(new Date());
		return handleSaveToPage(request, t);
	}

	/**
	 * 查看详情
	 * @param request
	 * @param id
	 * @return
	 */
	@RequestMapping("/viewComm")
	public String viewCommunicate(HttpServletRequest request,Integer id) {
		
		Communicate communicate = communicateService.selectByPk(id);
		request.setAttribute("comm", communicate);
		return getFileBasePath()+"communicateDetail";
	}
  
	/**
	 * 专家答复
	 * @param request
	 * @param id
	 * @return
	 */
	@RequestMapping("/ansComm")
	public String ansComm(HttpServletRequest request,Integer id) {
		
		Communicate communicate = communicateService.selectByPk(id);
		request.setAttribute("comm", communicate);
		return getFileBasePath()+"ansCommunicate";
	}
	
	@RequestMapping("/editComm")
	@ResponseBody
	public Map<String, Object> editComm(HttpServletRequest request,Communicate communicate){
		JltfispUser currentUser = loginService.getCurrentUser();
		communicate.setToUser(currentUser.getId());
		communicate.setContentType(1);
		Map<String, Object> result = new HashMap<String, Object>();
		int i = communicateService.updateByPKSelective(communicate);
		String msg="";
		if(i > 0){
		      msg = "保存成功";
		  }else{
		      msg = "保存失败";
		  }
		result.put("msg", msg);
        return result;
		
	}
}
