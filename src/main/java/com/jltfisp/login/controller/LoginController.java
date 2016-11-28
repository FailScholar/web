/*******************************************************************************
 * Copyright (c) 2016.11.4 by LiuFa.
 * Copyright © 2016 Shenzhen GTA Education Tech Ltd. All rights reserved
 ******************************************************************************/

package com.jltfisp.login.controller;

import com.jltfisp.login.service.LoginService;
import com.jltfisp.shiro.AuthorizingRealm;
import com.jltfisp.shiro.CaptchaException;
import com.jltfisp.util.captcha.Captcha;
import com.jltfisp.util.captcha.SpecCaptcha;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by LiuFa on 2016/11/1.
 * com.jltfisp.login.controller
 * ROOT
 */
@Controller
public class LoginController {
    private final Logger _logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private LoginService loginService;
    @RequestMapping("/")
    public String home(){
        return "redirect:/index";
    }

    @RequestMapping("/index")
    public String index(){
        return "index";
    }
    /**
     * 登陆成功页面
     * @return
     */
    @Autowired
    private AuthorizingRealm authorizingRealm;
    @RequestMapping("/main")
    public String main(){
        return "/website/usercenter/index";
    }
    /**
     * 用户登陆
     * @param request
     * @param model
     * @return
     */
    @RequestMapping("/login")
    public String login(HttpServletRequest request, Model model) {
        Subject subject = SecurityUtils.getSubject();
        if (subject.isAuthenticated()) {
            //用户已经登录过了
            return "redirect:/main";
        }
        String exceptionClassName = (String) request.getAttribute("shiroLoginFailure");
        String error = null;
        if (UnknownAccountException.class.getName().equals(exceptionClassName)) {
            //注意：此处虽然是未找到该账号，但是仍然要提示用户‘用户名或密码错误’，这是为了确保安全性，防止用户根据提示信息进行暴力登录-@liufa
            error = "用户名或密码错误";
        } else if (IncorrectCredentialsException.class.getName().equals(exceptionClassName)) {
            //同理
            error = "用户名或密码错误";
        } else if (LockedAccountException.class.getName().equals(exceptionClassName)) {
            error = "您的账号尚未激活";
        } else if (CaptchaException.class.getName().equals(exceptionClassName)) {
            error = "验证码错误";
        } else if (exceptionClassName != null) {
            error = "您的账号存在异常,请联系管理员";
        }
        model.addAttribute("message", error);
        return "/website/login";
    }


    /**
     * @author LiuFa
     * @return void
     * @description  获取验证码（png版本，替换了原先闪瞎眼的gif版本）
     */
    @RequestMapping(value="/anon/getPngCode",method= RequestMethod.GET)
    public void getGifCode(HttpServletResponse response){
        try {
            response.setHeader("Pragma", "No-cache");
            response.setHeader("Cache-Control", "no-cache");
            response.setDateHeader("Expires", 0);
            response.setContentType("image/png");
            Captcha captcha = new SpecCaptcha(110,40,4);
            //输出
            ServletOutputStream out = response.getOutputStream();
            captcha.out(out);
            out.flush();
            //保存到session
            SecurityUtils.getSubject().getSession().setAttribute("captcha",captcha.text().toLowerCase());
            _logger.info(captcha.text().toLowerCase());
        } catch (Exception e) {
            _logger.error("获取验证码异常：%s",e.getMessage());
        }
    }
}
