/*******************************************************************************
 * Copyright (c) 2016.11.18 by LiuFa.
 * Copyright © 2016 Shenzhen GTA Education Tech Ltd. All rights reserved
 ******************************************************************************/

package com.jltfisp.sys.session.task;

import com.jltfisp.sys.session.statistics.service.StatisticsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

/**
 * Created by LiuFa on 2016/11/18.
 * com.jltfisp.sys.session.task
 * ROOT
 */
@Component
public class StatisticsTask {
    @Autowired
    private StatisticsService statisticsService;
    public StatisticsTask() {
    }

//    @Scheduled(cron="0 0 0,2,4,6,8,10,12,14,16,18,20,22 * * ?")
    @Scheduled(cron="0 0/5 * * * ?")
    public void save(){
        statisticsService.save();
    }

//    @Scheduled(cron = "0 1 0 * * ?")
        @Scheduled(cron="0 0/10 * * * ?")
    public void statistic(){
        statisticsService.statistic();
    }
}
