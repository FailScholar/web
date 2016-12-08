/*******************************************************************************
 * Copyright (c) 2016.11.9 by LiuFa.
 * Copyright © 2016 Shenzhen GTA Education Tech Ltd. All rights reserved
 ******************************************************************************/

package com.jltfisp.web.anon;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON;
import com.jltfisp.lucene.pojo.Pojo;
import com.jltfisp.lucene.service.LuceneService;
import com.jltfisp.email.EmailService;
import com.jltfisp.login.entity.JltfispUser;
import com.jltfisp.sys.session.statistics.service.StatisticsService;
import com.jltfisp.util.captcha.Randoms;
import com.jltfisp.web.user.service.UserService;

import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by LiuFa on 2016/11/9.
 * com.jltfisp.web.anon
 * ROOT
 * 系统匿名访问Controller
 */
@Controller
@RequestMapping("/anon")
public class AnonController {

    @Autowired
    private StatisticsService statisticsService;
    @Autowired
    private EmailService emailService;
    @Autowired
    private UserService userService;
    @Autowired
    private LuceneService luceneService;
    /**
     * 贷款服务栏目主页面
     * @return
     */
    @RequestMapping("/loan")
    public String loan(){
        return "/website/loan/loan";
    }


    /**
     * 资本市场栏目主页面
     * @return
     */
    @RequestMapping("/market")
    public String market(){
        return "/website/market/market";
    }


    /**
     * 云课堂栏目主页面
     * @return
     */
    @RequestMapping("/cloud")
    public String cloud(){
        return "/website/cloud/cloud";
    }

    /**
     * @author LiuFa
     * @return boolean
     * @description 统计首页点击量
     */
    @RequestMapping("/statisticsPV")
    @ResponseBody
    public boolean statisticsPV(){
        statisticsService.statisticsPV();
        return true;
    }

    /**
     * @author LiuFa
     * @return boolean
     * @description 获取访客数
     */
    @RequestMapping("/visitorsCount")
    @ResponseBody
    public String visitorsCount(Model model){
        model.addAttribute("count",statisticsService.visitorsCount());
        return JSON.toJSONString(model);
    }


    /**
     * @author LiuFa
     * @param to, model
     * @return java.lang.String
     * @description 关于我们
     */
    @RequestMapping("/about")
    public String about(int to, Model model){
        model.addAttribute("to",to);
        return "/website/about/about";
    }

    /**
     * @author LiuFa
     * @description  跳转到未授权页面
     */
    @RequestMapping("/noPermissions")
    public String noPermissions(){
        return "/website/sys/noPermissions";
    }

    /**
     * @author LiuFa
     * @description 跳转到系统错误页面
     */
    @RequestMapping("/error")
    public String error(){
        return "/website/sys/error";
    }


    /**
     * @author LiuFa
     * @description 跳转到404ＮＯＴＦＯＵＮＤ页面
     */
    @RequestMapping("/notFound")
    public String notFound(){
        return "/website/sys/notFound";
    }

    @RequestMapping("/toResetPage")
    public String toResetPage() {
        return "/website/usercenter/reset";
    }

    /**
     * 发送邮箱验证码
     * @param request
     * @param accountNumber
     * @return
     */
    @ResponseBody
    @RequestMapping("/sendEamil")
    public int sendEmail(String accountNumber){
    	String emailCaptcha = Randoms.random(5);
    	emailService.sendText(accountNumber, "欢迎使用吉林科技金融服务平台", "您的验证码为：" + emailCaptcha);
    	int i = userService.updateUserByAccountNumber(emailCaptcha, accountNumber);
    	return i;
    }

    /**
     * 把邮箱验证码置空
     * @param accountNumber
     * @return
     */
    @ResponseBody
    @RequestMapping("/resetEmailCaptcha")
    public int resetEmailCaptcha(String accountNumber){
    	int i = userService.updateUserByAccountNumber("", accountNumber);
    	return i;
    }

    /**
     * 检查账号是否存在
     * @param fieldId
     * @param fieldValue
     * @param request
     * @param response
     */
    @RequestMapping("/checkAccountNumber")
    public void checkAccountNumber(String fieldId,
            String fieldValue, HttpServletRequest request,
            HttpServletResponse response) {
        Boolean flag = false;

        List<JltfispUser> list = userService.selectUserByAccountNumber(fieldValue);
        if(list != null && list.size() != 0){
            flag = true;
        }
        try {
            response.setContentType("text/plain;charset=utf-8");
            response.getWriter().write("[\"" + fieldId + "\","+ flag + "]");
            response.getWriter().flush();
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
    /**
     * 校验邮箱验证码是否正确
     * @param user
     * @return
     */
    @RequestMapping("/checkEmailInfo")
    @ResponseBody
    public int checkEmailInfo(JltfispUser user){
    	List<JltfispUser> userList = userService.selectUserByAccountNumber(user.getAccountNumber());
    	if(!user.getEmailCaptcha().equals(userList.get(0).getEmailCaptcha())) {
    		return 0;
    	}
    	return 1;
    }

    /**
     * 密码重置
     * @param user
     * @return
     */
    @RequestMapping("/resetPassword")
    @ResponseBody
    public int resetPassword(JltfispUser user){

    	if(user.getPassword() != null && !"".equals(user.getPassword())){
            //重置密码
    		user.setPassword(new SimpleHash("md5",user.getPassword(), ByteSource.Util.bytes("gta"),2).toHex());
        }
    	int i = userService.updatePasswordByAccountNumber(user.getPassword(),user.getAccountNumber());
    	userService.updateUserByAccountNumber("", user.getAccountNumber());
    	return i;
    }

    /**
     * 检查密码是否正确
     * @param id
     * @param fieldId
     * @param fieldValue
     * @param request
     * @param response
     */
    @RequestMapping("/checkOldPassword")
    public void checkOldPassword(Integer id, String fieldId,
            String fieldValue, HttpServletRequest request,
            HttpServletResponse response) {
        Boolean flag = false;
        JltfispUser user = userService.selectByPk(id);
        String password = new SimpleHash("md5",fieldValue, ByteSource.Util.bytes("gta"),2).toHex();
        if(password.equals(user.getPassword())){
            flag = true;
        }

        try {
            response.setContentType("text/plain;charset=utf-8");
            response.getWriter().write("[\"" + fieldId + "\","+ flag + "]");
            response.getWriter().flush();
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

    }

    @RequestMapping("/search")
    public String search(String keyWords, Model model){
        List<Pojo> list = luceneService.search(keyWords);
        model.addAttribute("keyWords",keyWords);
        model.addAttribute("pojoList",list);
        return "/website/sys/search";
    }

    @RequestMapping("/pojo/detail")
    public String PojoDetail(String tableName, int id, String keyWords, Model model){
        List<Pojo> list = luceneService.search(keyWords);
        Pojo pj = new Pojo();
        for (Pojo pojo : list) {
            if(pojo.getTableName().equals(tableName) && pojo.getId() == id){
                pojo.setTitle(pojo.getTitle().replace("color='red'",""));
                pj = pojo;
                break;
            }
        }
        model.addAttribute("pojo",pj);
        return "/website/sys/PojoDetail";
    }
}
