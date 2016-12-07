/*******************************************************************************
 * Copyright (c) 2016.11.10 by LiuFa.
 * Copyright © 2016 Shenzhen GTA Education Tech Ltd. All rights reserved
 ******************************************************************************/

package com.jltfisp.web.user.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.jltfisp.login.entity.JltfispAdmin;
import com.jltfisp.login.entity.JltfispUser;
import com.jltfisp.login.service.LoginService;
import com.jltfisp.web.column.entity.JltfispColumn;
import com.jltfisp.web.user.service.UserService;

import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by LiuFa on 2016/11/10.
 * com.jltfisp.web.user.controller
 * ROOT
 */
@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;
    @Autowired
    private LoginService loginService;

    @RequestMapping("/toResetPage")
    public String toResetPage() {
        return "/website/usercenter/reset";
    }

    @RequestMapping("/toApplyRecord")
    public String toApplyRecord() {
        return "/website/usercenter/applyRecord";
    }
    
    @RequestMapping("/userInfo")
    public String userInfo(HttpServletRequest request){
    	JltfispUser user = loginService.getCurrentUser();
    	request.setAttribute("user", user);
    	return "/website/usercenter/userInfo";
    }
    
    @RequestMapping("/updateUser")
    public String updateUser(JltfispUser user) {
    	userService.updateByPKSelective(user);
    	JltfispUser user1 = loginService.getCurrentUser();
    	SecurityUtils.getSubject().getSession().removeAttribute("user");
    	SecurityUtils.getSubject().getSession().setAttribute("user", user1);
    	return "redirect:../main";
    }
    
    
    
    @RequestMapping("/saveImg")
    @ResponseBody
    public String saveImg(HttpServletRequest request,JltfispUser user){
    	userService.updateByPKSelective(user);
		SecurityUtils.getSubject().getSession().removeAttribute("user");
		SecurityUtils.getSubject().getSession().setAttribute("user", loginService.getCurrentUser());
    	return "";
    }
}
