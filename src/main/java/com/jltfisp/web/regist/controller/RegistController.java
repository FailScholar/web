/*******************************************************************************
 * Copyright (c) 2016.11.7 by LiuFa.
 * Copyright © 2016 Shenzhen GTA Education Tech Ltd. All rights reserved
 ******************************************************************************/

package com.jltfisp.web.regist.controller;

import com.alibaba.fastjson.JSON;
import com.jltfisp.email.EmailService;
import com.jltfisp.login.entity.JltfispUser;
import com.jltfisp.login.service.LoginService;
import com.jltfisp.redis.RedisService;
import com.jltfisp.shiro.AuthorizingRealm;
import com.jltfisp.util.captcha.Randoms;
import com.jltfisp.web.regist.service.RegistService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Date;
import java.util.List;

/**
 * Created by LiuFa on 2016/11/7.
 * com.jltfisp.web.regist.controller
 * ROOT
 */
@Controller
@RequestMapping("/anon/regist")
public class RegistController {

    @Autowired
    private RegistService registService;

    @Autowired
    private RedisService<String,List<JltfispUser>> redisService;

    @Autowired
    private EmailService emailService;

    @Autowired
    private LoginService loginService;

    @Autowired
    private AuthorizingRealm authorizingRealm;

    private final static String subject = "欢迎注册吉林省信息科技金融平台";
    private final static String contentPrefix = "您的注册验证码为:";
    private final static String contentSuffix = ",打死都不要告诉别人哦!";


    @RequestMapping("/toRegistPage")
    public String toRegistPage(){
        return "/website/regist";
    }

    /**
     * @author LiuFa
     * @param email, model
     * @return java.lang.String
     * 验证邮箱是否已经注册
     */
    @RequestMapping("/validEmail")
    @ResponseBody
    public String validEmail(String email,Model model){
        List<JltfispUser> list = redisService.getV("allUser");
        model.addAttribute("success",false);
        for (JltfispUser jltfispUser : list) {
            if(email.equals(jltfispUser.getAccountNumber())){
                model.addAttribute("success",true);
                break;
            }
        }
        return JSON.toJSONString(model);
    }


    /**
     * @author LiuFa
     * @param comName, model
     * @return java.lang.String
     * @description  验证公司名是否存在重复
     */
    @RequestMapping("/validComName")
    @ResponseBody
    public String validComName(String comName,Model model){
        List<JltfispUser> list = redisService.getV("allUser");
        model.addAttribute("success",false);
        for (JltfispUser jltfispUser : list) {
            if(comName.equals(jltfispUser.getUsername())){
                model.addAttribute("success",true);
                break;
            }
        }
        return JSON.toJSONString(model);
    }

    /**
     * @author LiuFa
     * @param user, captcha, type, model
     * @return java.lang.String
     * @description 保存注册的基本信息 并发送验证码邮件
     */
    @RequestMapping("/registBaseInfo")
    @ResponseBody
    public String registBaseInfo(JltfispUser user, String captcha, int type, Model model){
        try {
            String exitCode = (String) SecurityUtils.getSubject().getSession().getAttribute("captcha");
            if (null == exitCode || !exitCode.equalsIgnoreCase(captcha)) {
                model.addAttribute("success", false);
                model.addAttribute("message", "验证码错误");
                return JSON.toJSONString(model);
            }
            String emailCaptcha = Randoms.random(5);
            user.setEmailCaptcha(emailCaptcha);
            user.setState(0);
            user.setType(type);
            user.setCaptchaTime(new Date());
            user.setIsDelete(0);
            user.setPassword(new SimpleHash("md5", user.getPassword(), ByteSource.Util.bytes("gta"), 2).toHex());
            registService.registBaseInfo(user);
            try {
                emailService.sendText(user.getAccountNumber(),subject,contentPrefix + emailCaptcha + contentSuffix);
            } catch (Exception e) {
                model.addAttribute("success", true);
                model.addAttribute("email", user.getAccountNumber());
                model.addAttribute("id", user.getId());
                return JSON.toJSONString(model);
            }
            model.addAttribute("success", true);
            model.addAttribute("email", user.getAccountNumber());
            model.addAttribute("id", user.getId());
        } catch (Exception e) {
            model.addAttribute("success", false);
            model.addAttribute("message", e.getMessage());
        }
        return JSON.toJSONString(model);
    }

    /**
     * @author LiuFa
     * @param user, model
     * @return java.lang.String
     * @description 激活账号,并更新缓存
     */

    @RequestMapping("/registCheckEmailInfo")
    @ResponseBody
    public String registCheckEmailInfo(JltfispUser user, Model model) {
        JltfispUser aUser = registService.getAUser(user.getId());
        if(!aUser.getEmailCaptcha().equalsIgnoreCase(user.getEmailCaptcha())){
            model.addAttribute("success", false);
            model.addAttribute("message", "验证码错误");
            return JSON.toJSONString(model);
        }
        if(new Date().getTime() - aUser.getCaptchaTime().getTime() > 60000*30){
            model.addAttribute("success", false);
            model.addAttribute("message", "验证码过期,请重新获取");
            return JSON.toJSONString(model);
        }
        List<JltfispUser> list = redisService.getV("allUser");
        for (JltfispUser jltfispUser : list) {
            if(aUser.getAccountNumber().equals(jltfispUser.getAccountNumber())){
                model.addAttribute("success", false);
                model.addAttribute("message", "该账号被成功注册过，激活失败");
                return JSON.toJSONString(model);
            }
        }
           
        user.setState(1);
        registService.updateUser(user);

        //添加相关角色
        registService.correlationRoles(aUser.getId(),aUser.getType() == 1 ? 4 : 5);
        //更新缓存
        loginService.flushUserCache();
        authorizingRealm.clearAllUserRolePermissionCache();
        model.addAttribute("success", true);
        return JSON.toJSONString(model);
    }

    @RequestMapping("/repeatSendEmail")
    @ResponseBody
    public String repeatSendEmail(int id, Model model){
        JltfispUser user = registService.getAUser(id);

        //重新生成验证码
        JltfispUser nUser = new JltfispUser();
        nUser.setId(user.getId());
        nUser.setCaptchaTime(new Date());
        nUser.setEmailCaptcha(Randoms.random(5));
        registService.updateUser(nUser);
        model.addAttribute("success", true);
        try {
            emailService.sendText(nUser.getAccountNumber(),subject,contentPrefix + nUser.getEmailCaptcha() + contentSuffix);
        } catch (Exception e) {
            return JSON.toJSONString(model);
        }
        return JSON.toJSONString(model);
    }
}
