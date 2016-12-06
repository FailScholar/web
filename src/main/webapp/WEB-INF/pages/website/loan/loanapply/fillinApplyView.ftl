                         <!--贷款申请表-->
                          <div class="nlistCont" style="display:none;">
                        <p class="ntit" style="text-align:center;">本次申请贷款情况</p>
                              <table width="100%" class="tab3 tab4">
                                  <tr>
                                      <th>申请贷款额度</th>
                                      <td >${coAll.jltfispCoFillInApply.applyAmount}</td>
                                      <th>贷款期限</th>
                                      <td colspan=2>
                                     <#if coAll.jltfispCoFillInApply.payCycle ==1>
                                     6个月
                                    <#elseif coAll.jltfispCoFillInApply.payCycle ==2>
                                    12个月
                                    </#if>
                                    </td>
                                  </tr>
                                  <tr>
                                      <th>贷款用途说明</th>
                                      <td colspan=5>${coAll.jltfispCoFillInApply.useDesc}</td>
                                  </tr>
                                  <tr>
                                      <th>是否首次贷款</th>
                                      <td >
                                      <#if coAll.jltfispCoFillInApply.historyState ==1>
                                                                                                                    是
                                      <#else>
                                                                                                                    否
                                      </#if>                                                                              
                                      </td>
                                      <th>上次履约贷款还款时间</th>
                                      <td colspan=2>${coAll.jltfispCoFillInApply.historyEndtime?date}</td>
                                  </tr>
                                  <tr>
                                      <th>选择科技贷款品种</th>
                                      <td colspan=5>0.00</td>
                                  </tr>
                                  <tr>
                                      <th>选择申请银行</th>
                                      <td >
                                      <#if coAll.jltfispCoFillInApply.bankid ==1>
                                                                                                                  中国建设银行 
                                      <#elseif coAll.jltfispCoFillInApply.bankid ==2>
                                                                                                                  中国工商银行
                                      </#if>                                                                          
                                      </td>
                                      <th>贷款支行</th>
                                      <td colspan=2>
                                      <#if coAll.jltfispCoFillInApply.riskid ==1>
                                                                                                                  平安银行
                                      </#if>
                                      </td>
                                  </tr>
                                  <tr>
                                      <th>银行信贷员姓名</th>
                                      <td >0.00</td>
                                      <th>信贷员手机号</th>
                                      <td colspan=2>${coAll.jltfispCoFillInApply.loanOffice}</td>
                                  </tr>
                                  <tr>
                                     <th>是否需要股权融资</th>
                                      <td >
                                      <#if coAll.jltfispCoFillInApply.isFinance ==1>
                                      是
                                      <#else>
                                      否
              </#if>                        
                                      </td>
                                      <th>是否有上市计划</th>
                                      <td colspan=2>
                                      <#if coAll.jltfispCoFillInApply.isListingPlan ==1>
                                      是
                              <#else>
                                      否
              </#if> 
                                      </td>
                                  </tr>
                                  <tr>
                                      <th>拟融资金额</th>
                                      <td >${coAll.jltfispCoFillInApply.finaneAmount}</td>
                                      <th>担保/保险公司</th>
                                      <td colspan=2>
                                      <#if coAll.jltfispCoFillInApply.riskid ==1>
                                      平安银行
                                      </#if>
                                      </td>
                                  </tr>
                                  <tr>
                                      <th>对投资机构要求</th>
                                      <td colspan=5>${coAll.jltfispCoFillInApply.finaneAmount}</td>
                                  </tr>
                                  <tr>
                                      <th>推荐意见</th>
                                      <td colspan=5 style="text-align:right">推荐单位（盖章）<br>经办人<br>日期</td>
                                  </tr>
                              </table>
                          </div>