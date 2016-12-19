                         <!--贷款申请表-->
                          <div class="nlistCont" style="display:none;">
                        <p class="ntit" style="text-align:center;">本次申请贷款情况</p>
                              <table width="100%" class="tab3 tab4">
                                  <tr>
                                      <th>${loanformManage.label1}</th>
                                      <td >${coAll.jltfispCoFillInApply.applyAmount}</td>
                                      <th>${loanformManage.label2}</th>
                                      <td colspan=2>
                                     <#if coAll.jltfispCoFillInApply.payCycle ==1>
                                     6个月
                                    <#elseif coAll.jltfispCoFillInApply.payCycle ==2>
                                    12个月
                                    </#if>
                                    </td>
                                  </tr>
                                  <tr>
                                      <th>${loanformManage.label3}</th>
                                      <td colspan=5>${coAll.jltfispCoFillInApply.useDesc}</td>
                                  </tr>
                                  <tr>
                                      <th>${loanformManage.label4}</th>
                                      <td >
                                      <#if coAll.jltfispCoFillInApply.historyState ==1>
                                                                                                                    是
                                      <#else>
                                                                                                                    否
                                      </#if>                                                                              
                                      </td>
                                      <th>${loanformManage.label6}</th>
                                      <td colspan=2><#if (coAll.jltfispCoFillInApply.historyEndtime?exists)>${coAll.jltfispCoFillInApply.historyEndtime?date}</#if></td>
                                  </tr> 
                                  <tr>
                                      <th>${loanformManage.label9}</th>
                                      <td >
                                      ${coAll.jltfispCoFillInApply.bankid}                                                                          
                                      </td>
                                      <th>${loanformManage.label11}</th>
                                      <td colspan=2>
                                      ${coAll.jltfispCoFillInApply.riskid}
                                      </td>
                                  </tr>
                                  <tr>
                                      <th>${loanformManage.label13}</th>
                                      <td >${coAll.jltfispCoFillInApply.loanOffice}</td>
                                      <th>${loanformManage.label14}</th>
                                      <td colspan=2>${coAll.jltfispCoFillInApply.loanOfficeMobile}</td>
                                  </tr>
                                  <tr>
                                     <th>${loanformManage.label15}</th>
                                      <td >
                                      <#if coAll.jltfispCoFillInApply.isFinance ==1>
                                      是
                                      <#else>
                                      否
              </#if>                        
                                      </td>
                                      <th>${loanformManage.label16}</th>
                                      <td colspan=2>
                                      <#if coAll.jltfispCoFillInApply.isListingPlan ==1>
                                      是
                              <#else>
                                      否
              </#if> 
                                      </td>
                                  </tr>
                                  <tr>
                                      <th>${loanformManage.label17}</th>
                                      <td >${coAll.jltfispCoFillInApply.finaneAmount}</td>
                                      <th>${loanformManage.label10}</th>
                                      <td colspan=2>
                                      ${coAll.jltfispCoFillInApply.riskid}
                                      </td>
                                  </tr>
                                  <tr>
                                      <th>${loanformManage.label18}</th>
                                      <td colspan=5>${coAll.jltfispCoFillInApply.finaneAmount}</td>
                                  </tr>
                                  <tr>
                                      <th>推荐意见</th>
                                      <td colspan=5 style="text-align:right">推荐单位（盖章）<br>经办人<br>日期</td>
                                  </tr>
                              </table>
                          </div>