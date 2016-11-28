/*******************************************************************************
 * Copyright (c) 2016.11.14 by LiuFa.
 * Copyright © 2016 Shenzhen GTA Education Tech Ltd. All rights reserved
 ******************************************************************************/

package com.jltfisp.web.cloud.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by LiuFa on 2016/11/14.
 * com.jltfisp.web.cloud.controller
 * ROOT
 */
@Controller
@RequestMapping("/anon/cloud")
public class CloudController {

    @RequestMapping("/videoDetail")
    public String videoDetail(){
        return "/website/cloud/videoDetail";
    }
}
