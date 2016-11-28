/*******************************************************************************
 * Copyright (c) 2016.11.18 by LiuFa.
 * Copyright © 2016 Shenzhen GTA Education Tech Ltd. All rights reserved
 ******************************************************************************/

package com.jltfisp.sys.session.statistics.service;

import com.jltfisp.redis.RedisService;
import com.jltfisp.sys.session.statistics.dao.StatisticsMapper;
import com.jltfisp.sys.session.statistics.entity.JltfispStatistics;
import com.jltfisp.sys.session.statistics.pojo.JltfispStatisticsDay;
import com.jltfisp.sys.session.statistics.pojo.JltfispStatisticsTotal;
import org.apache.shiro.session.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;

/**
 * Created by LiuFa on 2016/11/18.
 * com.jltfisp.sys.session.statistics.service
 * ROOT
 */
@Service
@Transactional
public class StatisticsService {
    @Autowired
    private RedisService<String, JltfispStatistics> redisService;

    @Autowired
    private RedisService<String, JltfispStatisticsDay> redisService2;

    @Autowired
    private RedisService<String, JltfispStatisticsTotal> redisService3;

    @Autowired
    private RedisService<String, Integer> redisService4;

    @Autowired
    private StatisticsMapper statisticsMapper;

    @Async
    public void onStart(Session session) {
        JltfispStatistics statistics = redisService.getV("jltfisp_statistics");
        if (null == statistics) {
            statistics = new JltfispStatistics();
        }
        statistics.setUv(statistics.getUv() + 1);

        if(!statistics.getIpList().contains(session.getHost())){
            statistics.getIpList().add(session.getHost());
        }

        redisService.putKV("jltfisp_statistics", statistics);

        redisService4.putKV("visitorsCount",redisService4.getV("visitorsCount") == null ? 1 : redisService4.getV("visitorsCount") +1);
    }


    @Async
    public void onStop(Session session) {
        JltfispStatistics statistics = redisService.getV("jltfisp_statistics");
        statistics.setTotalTime(statistics.getTotalTime() + session.getLastAccessTime().getTime() - session
                .getStartTimestamp().getTime());
        redisService.putKV("jltfisp_statistics", statistics);
    }


    @Async
    public void onExpiration(Session session) {
        JltfispStatistics statistics = redisService.getV("jltfisp_statistics");
        statistics.setTotalTime(statistics.getTotalTime() + System.currentTimeMillis() - session
                .getStartTimestamp().getTime());
        redisService.putKV("jltfisp_statistics", statistics);
    }
    @Async
    public void statisticsPV() {
        JltfispStatistics statistics = redisService.getV("jltfisp_statistics");
        statistics.setPv(statistics.getPv() + 1);
        redisService.putKV("jltfisp_statistics", statistics);
    }


    public void save() {
        JltfispStatistics statistics = redisService.getV("jltfisp_statistics");
        statistics.setId(null);
        statistics.setIp(statistics.getIpList().size() -1);
        double hour = statistics.getTotalTime() / 1000f;
        statistics.setAverage(statistics.getUv() == 0 ? 1 : new Double(hour).intValue() / statistics.getUv());
        statisticsMapper.insertSelective(statistics);
        redisService.putKV("jltfisp_statistics", new JltfispStatistics());

        JltfispStatisticsDay statisticsDay = redisService2.getV("jltfisp_statistics_day");
        if (null == statisticsDay) {
            statisticsDay = new JltfispStatisticsDay();
        }

        statisticsDay.setPv(statisticsDay.getPv() + statistics.getPv());
        statisticsDay.setUv(statisticsDay.getUv() + statistics.getUv());
        statisticsDay.setIp(statisticsDay.getIp() + statistics.getIp());
        statisticsDay.setAverage(statisticsDay.getAverage() + statistics.getAverage());
        redisService2.putKV("jltfisp_statistics_day", statisticsDay);
    }

    public void statistic() {
        /*获取已存在的总数*/
        JltfispStatisticsTotal statisticsTotal = redisService3.getV("jltfisp_statistics_total");
        if (null == statisticsTotal) {
            statisticsTotal = new JltfispStatisticsTotal();
        }
        /*获得今天一天的统计数*/
        JltfispStatisticsDay statisticsDay = redisService2.getV("jltfisp_statistics_day");

        /*获得数据库每日平均记录值*/
        JltfispStatistics statistics1 = statisticsMapper.selectByPrimaryKey(1);

        /*获得数据库每日历史峰值记录值*/
        JltfispStatistics statistics2 = statisticsMapper.selectByPrimaryKey(2);

        /*保存总流量记录值*/
        statisticsTotal.setPv(statisticsTotal.getPv() + statisticsDay.getPv());
        statisticsTotal.setUv(statisticsTotal.getUv() + statisticsDay.getUv());
        statisticsTotal.setIp(statisticsTotal.getIp() + statisticsDay.getIp());
        statisticsTotal.setAverage(statisticsTotal.getAverage() + statisticsDay.getAverage());
        statisticsTotal.setDay(statisticsTotal.getDay() + 1);
        redisService3.putKV("jltfisp_statistics_total", statisticsTotal);

        averageDaily(statisticsTotal,statistics1);
        bubble(statisticsDay,statistics2);
        redisService2.putKV("jltfisp_statistics_day", new JltfispStatisticsDay());
    }

    /**
     * @author LiuFa
     * @param
     * @return
     * @description  更新每日平均记录
     */
    private void averageDaily(JltfispStatisticsTotal statisticsTotal, JltfispStatistics statistics1){
        statistics1.setPv(statisticsTotal.getPv()/statisticsTotal.getDay());
        statistics1.setUv(statisticsTotal.getUv()/statisticsTotal.getDay());
        statistics1.setIp(statisticsTotal.getIp()/statisticsTotal.getDay());
        statistics1.setAverage(statisticsTotal.getAverage()/statisticsTotal.getDay());
        statistics1.setTime(new Date());
        statisticsMapper.updateByPrimaryKeySelective(statistics1);

    }
    /**
     * @author LiuFa
     * @param
     * @return
     * @description  冒泡法更新历史峰值
     */
    private void bubble(JltfispStatisticsDay statisticsDay, JltfispStatistics statistics2) {
        statistics2.setPv(statisticsDay.getPv() > statistics2.getPv() ? statisticsDay.getPv() : statistics2.getPv());
        statistics2.setUv(statisticsDay.getUv() > statistics2.getUv() ? statisticsDay.getUv() : statistics2.getUv());
        statistics2.setIp(statisticsDay.getIp() > statistics2.getIp() ? statisticsDay.getIp() : statistics2.getIp());
        statistics2.setAverage(statisticsDay.getAverage() > statistics2.getAverage() ? statisticsDay.getAverage() :
                statistics2.getAverage());
        statistics2.setTime(new Date());
        statisticsMapper.updateByPrimaryKeySelective(statistics2);
    }

    public int visitorsCount() {
        return redisService4.getV("visitorsCount");
    }
}
