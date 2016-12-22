                         <!--贷款申请表-->
                          <div class="nlistCont" style="display:none;">
                        <p class="ntit" style="text-align:center;">本次申请贷款情况</p>
                              <table width="100%" class="tab3 tab4">
                                  <tr>
                                      <th><b class="red">*</b>${loanformManage.loanLabel1}</th>
                                      <td >${coAll.jltfispCoFillInApply.applyAmount}</td>
                                      <th><b class="red">*</b>${loanformManage.loanLabel2}</th>
                                      <td colspan=2>
                                     <#if coAll.jltfispCoFillInApply.payCycle ==1>
                                     6个月
                                    <#elseif coAll.jltfispCoFillInApply.payCycle ==2>
                                    12个月
                                    </#if>
                                    </td>
                                  </tr>
                                  <tr>
                                      <th><b class="red">*</b>${loanformManage.loanLabel3}</th>
                                      <td colspan=5>${coAll.jltfispCoFillInApply.useDesc}</td>
                                  </tr>
                                  <tr>
                                      <th>${loanformManage.loanLabel4}</th>
                                      <td >
                                      <#if coAll.jltfispCoFillInApply.historyState ==1>
                                                                                                                    是
                                      <#else>
                                                                                                                    否
                                      </#if>                                                                              
                                      </td>
                                      <th>${loanformManage.loanLabel6}</th>
                                      <td colspan=2><#if (coAll.jltfispCoFillInApply.historyEndtime?exists)>${coAll.jltfispCoFillInApply.historyEndtime?date}</#if></td>
                                  </tr> 
                                  <tr>
                                      <th>${loanformManage.loanLabel9}</th>
                                      <td >
                                      ${coAll.jltfispCoFillInApply.bankid}                                                                          
                                      </td>
                                      <th>${loanformManage.loanLabel11}</th>
                                      <td colspan=2>
                                      ${coAll.jltfispCoFillInApply.riskid}
                                      </td>
                                  </tr>
                                  <tr>
                                      <th>${loanformManage.loanLabel13}</th>
                                      <td >${coAll.jltfispCoFillInApply.loanOffice}</td>
                                      <th>${loanformManage.loanLabel14}</th>
                                      <td colspan=2>${coAll.jltfispCoFillInApply.loanOfficeMobile}</td>
                                  </tr>
                                  <tr>
                                     <th>${loanformManage.loanLabel15}</th>
                                      <td >
                                      <#if coAll.jltfispCoFillInApply.isFinance ==1>
                                      是
                                      <#else>
                                      否
              </#if>                        
                                      </td>
                                      <th>${loanformManage.loanLabel16}</th>
                                      <td colspan=2>
                                      <#if coAll.jltfispCoFillInApply.isListingPlan ==1>
                                      是
                              <#else>
                                      否
              </#if> 
                                      </td>
                                  </tr>
                                  <tr>
                                      <th>${loanformManage.loanLabel17}</th>
                                      <td >${coAll.jltfispCoFillInApply.finaneAmount}</td>
                                      <th>${loanformManage.loanLabel10}</th>
                                      <td colspan=2>
                                      ${coAll.jltfispCoFillInApply.riskid}
                                      </td>
                                  </tr>
                                  <tr>
                                      <th>${loanformManage.loanLabel18}</th>
                                      <td colspan=5>${coAll.jltfispCoFillInApply.finaneRequire}</td>
                                  </tr>
                                  <tr>
                                      <th>推荐意见</th>
                                      <td colspan=5 style="text-align:right">推荐单位（盖章）:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      <br>经办人:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      <br>日期:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                  </tr>
                              </table>
                          </div>