package com.jltfisp.sys.session;

import com.jltfisp.shiro.SessionInterface;
import com.jltfisp.sys.session.statistics.service.StatisticsService;
import org.apache.shiro.session.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by LiuFa on 2016/11/12.
 * com.jltfisp.sys.session
 * greatapp
 */
@Service
public class WebSession implements SessionInterface{
    @Autowired
    private StatisticsService statisticsService;

    @Override
    public void onStart(Session session) {
        statisticsService.onStart(session);
    }

    @Override
    public void onStop(Session session) {
        statisticsService.onStop(session);
    }

    @Override
    public void onExpiration(Session session) {
        statisticsService.onExpiration(session);
    }
}
