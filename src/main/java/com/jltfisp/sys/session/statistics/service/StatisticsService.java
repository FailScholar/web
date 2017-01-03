/*******************************************************************************
 * Copyright (c) 2016.11.18 by LiuFa.
 * Copyright © 2016 Shenzhen GTA Education Tech Ltd. All rights reserved
 ******************************************************************************/

package com.jltfisp.sys.session.statistics.service;

import com.alibaba.fastjson.JSON;
import com.jltfisp.redis.RedisService;
import com.jltfisp.sys.session.statistics.entity.JltfispStatistics;
import org.apache.shiro.session.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by LiuFa on 2016/11/18.
 * com.jltfisp.sys.session.statistics.service
 * ROOT
 */
@Service
@Transactional
public class StatisticsService {
    @Autowired
    private RedisService<String, String> redisService;

    @Autowired
    private RedisService<String, Integer> IredisService;

    @Async
    public void onStart(Session session) {
        JltfispStatistics statistics = getJltfispStatistics();
        if (null == statistics) {
            statistics = new JltfispStatistics();
        }
        statistics.setUv(statistics.getUv() + 1);
        if (!statistics.getIpList().contains(session.getHost())) {
            statistics.getIpList().add(session.getHost());
        }
        redisService.putKV("jltfisp_statistics", JSON.toJSONString(statistics));
        IredisService.putKV("visitorsCount", IredisService.getV("visitorsCount") == null ? 1 : IredisService.getV
                ("visitorsCount") + 1);
    }

    @Async
    public void onStop(Session session) {
        storeStatistics(session);
    }

    @Async
    public void onExpiration(Session session) {
        storeStatistics(session);
    }

    @Async
    public void statisticsPV() {
        JltfispStatistics statistics = getJltfispStatistics();
        statistics.setPv(statistics.getPv() + 1);
        redisService.putKV("jltfisp_statistics", JSON.toJSONString(statistics));
    }

    public int visitorsCount() {
        return IredisService.getV("visitorsCount");
    }


    private <T> T toObject(String jsonText,Class<T> clazz){
        return JSON.toJavaObject((JSON) JSON.parse(jsonText),clazz);
    }

    private JltfispStatistics getJltfispStatistics() {
        return toObject(redisService.getV("jltfisp_statistics"),JltfispStatistics.class);
    }

    private void storeStatistics(Session session){
        JltfispStatistics statistics = getJltfispStatistics();
        statistics.setTotalTime(statistics.getTotalTime() + session.getLastAccessTime().getTime() - session
                .getStartTimestamp().getTime());
        redisService.putKV("jltfisp_statistics", JSON.toJSONString(statistics));
    }
}
