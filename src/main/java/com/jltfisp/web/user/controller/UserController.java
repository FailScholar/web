/*******************************************************************************
 * Copyright (c) 2016.11.10 by LiuFa.
 * Copyright © 2016 Shenzhen GTA Education Tech Ltd. All rights reserved
 ******************************************************************************/

package com.jltfisp.web.user.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.jltfisp.login.entity.JltfispUser;
import com.jltfisp.login.service.LoginService;
import com.jltfisp.shiro.AuthorizingRealm;
import com.jltfisp.web.user.service.UserService;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.util.ByteSource;
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
    @Autowired
	private AuthorizingRealm authorizingRealm;
    
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
    	//清除缓存
        authorizingRealm.clearUserCache(user1.getAccountNumber());
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
    @RequestMapping("/toResetPass")
    public String toResetPass(HttpServletRequest request){
    	JltfispUser currentUser = loginService.getCurrentUser();
    	request.setAttribute("currentUser", currentUser);
    	return "/website/usercenter/editPass";
    }
    @RequestMapping("/resetPassword")
    @ResponseBody
    public int resetPassword(JltfispUser user){
    	
    	if(user.getPassword() != null && !"".equals(user.getPassword())){
            //重置密码
    		user.setPassword(new SimpleHash("md5",user.getPassword(), ByteSource.Util.bytes("gta"),2).toHex());
        }
    	int i = userService.updateByPKSelective(user);
    	userService.updateUserByAccountNumber("", user.getAccountNumber());
    	//清除缓存
        authorizingRealm.clearUserCache(loginService.getCurrentUser().getAccountNumber());
    	return i;
    }
}
