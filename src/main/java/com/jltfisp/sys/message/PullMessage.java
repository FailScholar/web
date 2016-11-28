/*******************************************************************************
 * Copyright (c) 2016.11.28 by LiuFa.
 * Copyright © 2016 Shenzhen GTA Education Tech Ltd. All rights reserved
 ******************************************************************************/

package com.jltfisp.sys.message;

import com.jltfisp.redis.ConsumerInterface;
import org.springframework.stereotype.Service;

/**
 * Created by LiuFa on 2016/11/28.
 * com.jltfisp.sys.message
 * ROOT
 */
@Service
public class PullMessage implements ConsumerInterface{
    @Override
    public void receiveMessage(Object message) {
        System.out.println(message.toString());
    }
}
