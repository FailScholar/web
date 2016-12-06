/*******************************************************************************
 * Copyright (c) 2016.12.2 by LiuFa.
 * Copyright © 2016 Shenzhen GTA Education Tech Ltd. All rights reserved
 ******************************************************************************/

package com.jltfisp.web.insurance.service;

import com.jltfisp.web.insurance.entity.JltfispInsurance;

import java.util.List;

/**
 * Created by LiuFa on 2016/12/2.
 * com.jltfisp.web.insurance.service
 * ROOT
 */
public interface InsuranceService {
    List<JltfispInsurance> getDetail(int columnId, int page);

    JltfispInsurance getDetailById(int id);
}
