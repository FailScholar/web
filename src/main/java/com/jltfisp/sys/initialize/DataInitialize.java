/*******************************************************************************
 * Copyright (c) 2016 by LiuFa. All rights reserved
 ******************************************************************************/

package com.jltfisp.sys.initialize;

import com.jltfisp.index.service.IndexService;
import com.jltfisp.login.service.LoginService;
import com.jltfisp.lucene.service.LuceneService;
import com.jltfisp.redis.RedisService;
import com.jltfisp.web.user.service.UserService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationListener;
import org.springframework.context.event.ContextRefreshedEvent;
import org.springframework.stereotype.Component;

import java.io.Serializable;
import java.util.Set;

/**
 * Created by LiuFa on 2016/9/5.
 * cn.lfdevelopment.www.sys.ApplicationInitialize
 * DevelopmentApp
 * 数据初始化
 */
@Component
public class DataInitialize implements ApplicationListener<ContextRefreshedEvent> {
    private static Logger _logger = Logger.getLogger(DataInitialize.class);

    @Autowired
    private RedisService<Serializable, Object> redisService;
    @Autowired
    private LoginService loginService;

    @Autowired
    private UserService userService;
    @Autowired
    private IndexService indexService;
    @Autowired
    private LuceneService luceneService;
    @Override
    public void onApplicationEvent(ContextRefreshedEvent contextRefreshedEvent) {
        //root application context
        if (contextRefreshedEvent.getApplicationContext().getParent() == null) {
            try {
                indexService.synchronizedFlush();
                luceneService.synchronizedBuildIndex();
                loginService.synchronizedCacheUserRole();
                loginService.synchronizedCacheRolePermissions();
                cacheEmailAndName();
                cacheVisitorPerm();
            } catch (Exception e) {
                e.printStackTrace();
                _logger.error("初始化应用数据失败.....",e);
            }
        }
    }


    /**
     * @author LiuFa
     * @description  缓存用户数据
     * 为了注册时实时验证邮箱和公司名称是否已经存在
     */
    private void cacheEmailAndName(){
        loginService.refreshUserCache();
    }

    /**
     * @author LiuFa
     * @description  缓存游客权限
     */
    private void cacheVisitorPerm(){
        Set<String> visitorPermSet = userService.getVisitorPermSet();
        redisService.putKV("visitorPermSet",visitorPermSet);
    }
}
