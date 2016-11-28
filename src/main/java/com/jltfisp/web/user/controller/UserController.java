/*******************************************************************************
 * Copyright (c) 2016.11.10 by LiuFa.
 * Copyright © 2016 Shenzhen GTA Education Tech Ltd. All rights reserved
 ******************************************************************************/

package com.jltfisp.web.user.controller;

import com.jltfisp.web.user.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by LiuFa on 2016/11/10.
 * com.jltfisp.web.user.controller
 * ROOT
 */
@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping("/toResetPage")
    public String toResetPage() {
        return "/website/usercenter/reset";
    }

    @RequestMapping("/toApplyRecord")
    public String toApplyRecord() {
        return "/website/usercenter/applyRecord";
    }
}
