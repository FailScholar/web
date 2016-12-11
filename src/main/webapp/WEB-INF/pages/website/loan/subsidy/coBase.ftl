 <div class="proList nli" style="padding-top:0;">
     <!--填写企业基本信息-->
     <div class="nlistCont">
       <p class="ntit">企业基本信息</p>
          <form id="coBase">
          <table width="100%" class="tab3">
              <tr>
                  <th><b class="red">*</b>企业名称</th>
                  <td colspan="3"><input id="company"   name="company"  type="text" class="txt" readonly="readonly" value="${companyName}" /></td>
              </tr>
              <tr>
                  <th><b class="red">*</b>组织机构代码</th>
                  <td><input id="socialCreditCode" name="socialCreditCode" type="text" value="${jlfispPsBaseDto.socialCreditCode}" class="txt validate[required,custom[onlyLetterNumber],minSize[9],maxSize[20]]" placeholder="请输入组织机构代码" /></td>
                  <th><b class="red">*</b>贷款账号</th>
                  <td><input id="cardNo" name="cardNo" type="text" value="${jlfispPsBaseDto.cardNo }" class="txt validate[required,custom[onlyNumberSp],minSize[10],maxSize[20]]" placeholder="请输入贷款账号" /></td>
              </tr>
              <tr>
                  <th><b class="red">*</b>企业三排章</th>
                  <td colspan="3"><input id="basicAccountBank" name="basicAccountBank" value="${jlfispPsBaseDto.basicAccountBank }" type="text" class="txt validate[required,custom[onlyNumberSp],minSize[1],maxSize[1000]]" placeholder="基本户开户行" />
	                  <input id="basicAccountName" name="basicAccountName" type="text"  value="${jlfispPsBaseDto.basicAccountName }" class="txt validate[required,custom[onlyNumberSp],minSize[1],maxSize[1000]]" placeholder="基本户户名" />
	                  <input id="basicAccountCard" name="basicAccountCard" type="text" value="${jlfispPsBaseDto.basicAccountCard }"  class="txt validate[required,custom[onlyNumberSp],minSize[1],maxSize[1000]]" placeholder="基本账户卡号" />
	              </td>
              </tr>
              <tr>
                  <th><b class="red">*</b>贷款银行</th>
                  <td><input id="loanBankName" name="loanBankName" value="${jlfispPsBaseDto.loanBankName }" type="text" class="txt validate[required,minSize[1],maxSize[1000]]" placeholder="请输入贷款银行" /></td>
                  <th><b class="red">*</b>注册资金</th>
                  <td><input id="registeredCapital" name="registeredCapital" value="${jlfispPsBaseDto.registeredCapital }"   type="text" class="txt validate[required,custom[onlyNumberSp],minSize[1],maxSize[10]]" placeholder="注册资金" />万元</td>
              </tr>
              <tr>
                  <th><b class="red">*</b>注册地址</th>
                  <td colspan="3">
                      <input id="registeredAddress" name="registeredAddress" value="${jlfispPsBaseDto.registeredAddress }"  type="text validate[required,minSize[2],maxSize[1000]]" placeholder="请输入注册地地址"  class="txt" />
                  </td>
              </tr>
              <tr>
                  <th><b class="red">*</b>经营地址</th>
                  <td colspan="3">
                      <select id="officeProv" name="officeProv" value="${jlfispPsBaseDto.officeProv }">
                                        	
                      </select>
                      <select id="officeCity" name="officeCity" value="${jlfispPsBaseDto.officeCity }">
                      	
                      </select>
                      <select id="officeArea" name="officeArea" value="${jlfispPsBaseDto.officeArea }" >
                      	
                      </select>
                      <input id="officeAddress" name="officeAddress" type="text" value="${jlfispPsBaseDto.officeAddress }" class="txt validate[required,minSize[2],maxSize[1000]]" placeholder="请输入详细地址" />
                  </td>
              </tr>
              <tr>
                  <th><b class="red">*</b>联系人</th>
                  <td><input id="linkMan" name="linkMan" type="text" value="${jlfispPsBaseDto.linkMan }" class="txt validate[required,custom[chineseAndChar],minSize[2],maxSize[20]]" placeholder="请输入联系人" /></td>
                  <th><b class="red">*</b>Email</th>
                  <td><input id="email" name="email" type="text" class="txt validate[mixSize[2],maxSize[50],custom[email]]" value="${jlfispPsBaseDto.email }" placeholder="请输入邮箱" /></td>
              </tr>
              <tr>
                  <th><b class="red">*</b>联系电话</th>
                  <td><input id="zoneDescription" name="zoneDescription" type="text" value="${jlfispPsBaseDto.zoneDescription }" class="txt validate[required,custom[onlyNumberSp],minSize[3],maxSize[4]]" style="width:56px;" placeholder="区号" />-<input id="phoneOrFax" name="phoneOrFax"  value="${jlfispPsBaseDto.phoneOrFax}" type="text" class="txt validate[required,custom[onlyNumberSp],minSize[7],maxSize[10]]" style="width:120px;" placeholder="请输入联系电话" /></td>
                  <th><b class="red">*</b>手机号</th>
                  <td><input id="mobilephone" name="mobilephone"  type="text" value="${jlfispPsBaseDto.mobilephone }" class="txt validate[required,custom[phone]]" placeholder="请输入手机号" /></td>
              </tr>
          </table>
          <!-- 保费申请信息 -->
          <p class="ntit">申请保费补贴信息<a href="javascript:;" class="fr add">添加</a></p>
          <#if jlfispPsBaseDto.jltfispPsInfoList?? && (jlfispPsBaseDto.jltfispPsInfoList?size > 0) >
            <#list jlfispPsBaseDto.jltfispPsInfoList as jltfispPsInfoList>
               <#if jltfispPsInfoList_index gte 1 >
                  <table width="100%" class="tab3 module">
               <tr> <td colspan='4'><a href='javascript:;' class='fr delete'>删除</a></td></tr>
               <tr>
                  <th style="width:8%">借款合同编号</th>
                  <td colspan="3"><input  name="jltfispPsInfoList[${jltfispPsInfoList_index}].contractNumber" value="${jltfispPsInfoList.contractNumber}"  type="text" class="txt validate[minSize[1],maxSize[1000]] hetongbianhao" placeholder="请输入合同编号" /></td>
               </tr>
               <tr>
                  <th><b class="red">*</b><b>保单号</b></th>
                  <td><input name="jltfispPsInfoList[${jltfispPsInfoList_index}].policyNumber" value="${jltfispPsInfoList.policyNumber}" type="text" class="txt validate[required,minSize[1],maxSize[1000]] baodanhao" placeholder="请输入保单号" /></td>
                  <th><b class="red">*</b><b>担保金额</b></th>
                  <td><input name="jltfispPsInfoList[${jltfispPsInfoList_index}].premiumMoney" value="${jltfispPsInfoList.premiumMoney}" type="text" class="txt validate[required,custom[onlyNumberSp],minSize[1],maxSize[10]] danbaojiner" placeholder="请输入担保金额" />万元</td>
               </tr>
               <tr>
                  <th><b class="red">*</b><b>贷款银行</b></th>
                  <td>
                      <input name="jltfispPsInfoList[${jltfispPsInfoList_index}].loanBank" value="${jltfispPsInfoList.loanBank}" type="text" class="txt daikuanyinhang validate[required,minSize[1],maxSize[1000]]" placeholder="请输入贷款银行" />
                  </td>
                  <th><b class="red">*</b><b>保险/担保公司</b></th>
                  <td>
                      <input  name="jltfispPsInfoList[${jltfispPsInfoList_index}].insuranceCompany"  value="${jltfispPsInfoList.insuranceCompany}" type="text" class="txt baoxiangongsi validate[required,minSize[1],maxSize[1000]]" placeholder="请输入保险/担保公司" />
                  </td>
               </tr>
               <tr>
                  <th>实际支付保额金额</th>
                   <td colspan="3"><input name="jltfispPsInfoList[${jltfispPsInfoList_index}].loanMoney" value="${jltfispPsInfoList.loanMoney}" type="text" class="txt shijizhifujine validate[custom[onlyNumberSp],minSize[1],maxSize[10]]" placeholder="实际支付保额金额" />元</td>
               </tr>
               <tr>
                  <th>实际还款日</th>
                  <td><input name="jltfispPsInfoList[${jltfispPsInfoList_index}].repaymentDate" value="${jltfispPsInfoList.repaymentDate}" type="text" class="txt shijihuankuanri" placeholder="请输入实际还款日" onClick="WdatePicker()" readonly="readonly" /></td>
                  <th>实际支付本息(本金+利息)</th>
                  <td><input name="jltfispPsInfoList[${jltfispPsInfoList_index}].principalInterest"  value="${jltfispPsInfoList.principalInterest}" type="text" class="txt shijizhifubenxi validate[custom[onlyNumberSp], minSize[1],maxSize[10]]" placeholder="实际支付本息(本金+利息)" />元</td>
               </tr>
               <tr>
                  <th>实际放贷日</th>
                  <td><input name="jltfispPsInfoList[${jltfispPsInfoList_index}].lendDate" type="text" value="${jltfispPsInfoList.lendDate}" class="txt  shijifangdairi" placeholder="请输入实际放贷日" onClick="WdatePicker()" readonly="readonly" /></td>
                  <th>贷款期限</th>
                  <td><input name="jltfispPsInfoList[${jltfispPsInfoList_index}].loanTerm" type="text" value="${jltfispPsInfoList.loanTerm}" class="txt daikuanqixian validate[custom[onlyNumberSp],minSize[1],maxSize[10]]" placeholder="请输入贷款期限" /></td>
               </tr>
            </table>
                 <#else>
                   <table width="100%" class="tab3 module">
               <tr>
                  <th style="width:8%">借款合同编号</th>
                  <td colspan="3"><input  name="jltfispPsInfoList[${jltfispPsInfoList_index}].contractNumber" value="${jltfispPsInfoList.contractNumber}"  type="text" class="txt validate[minSize[1],maxSize[1000]]" placeholder="请输入合同编号" /></td>
               </tr>
               <tr>
                  <th><b class="red">*</b><b>保单号</b></th>
                  <td><input name="jltfispPsInfoList[${jltfispPsInfoList_index}].policyNumber" value="${jltfispPsInfoList.policyNumber}" type="text" class="txt validate[required,minSize[1],maxSize[1000]]" placeholder="请输入保单号" /></td>
                  <th><b class="red">*</b><b>担保金额</b></th>
                  <td><input name="jltfispPsInfoList[${jltfispPsInfoList_index}].premiumMoney" value="${jltfispPsInfoList.premiumMoney}" type="text" class="txt validate[required,minSize[1],maxSize[10],custom[onlyNumberSp]]" placeholder="请输入担保金额" />万元</td>
               </tr>
               <tr>
                  <th><b class="red">*</b><b>贷款银行</b></th>
                  <td>
                      <input name="jltfispPsInfoList[${jltfispPsInfoList_index}].loanBank" value="${jltfispPsInfoList.loanBank}" type="text" class="txt validate[required,minSize[1],maxSize[1000]]" placeholder="请输入贷款银行" />
                  </td>
                  <th><b class="red">*</b><b>保险/担保公司</b></th>
                  <td>
                      <input  name="jltfispPsInfoList[${jltfispPsInfoList_index}].insuranceCompany"  value="${jltfispPsInfoList.insuranceCompany}" type="text" class="txt validate[required,minSize[1],maxSize[1000]]" placeholder="请输入保险/担保公司" />
                  </td>
               </tr>
               <tr>
                  <th>实际支付保额金额</th>
                   <td colspan="3"><input name="jltfispPsInfoList[${jltfispPsInfoList_index}].loanMoney" value="${jltfispPsInfoList.loanMoney}" type="text" class="txt validate[custom[onlyNumberSp],minSize[1],maxSize[10]]" placeholder="请输入实际支付保额金额" />元</td>
               </tr>
               <tr>
                  <th>实际还款日</th>
                  <td><input name="jltfispPsInfoList[${jltfispPsInfoList_index}].repaymentDate" value="${jltfispPsInfoList.repaymentDate}" type="text" class="txt" placeholder="请输入实际还款日" onClick="WdatePicker()" readonly="readonly" /></td>
                  <th>实际支付本息(本金+利息)</th>
                  <td><input name="jltfispPsInfoList[${jltfispPsInfoList_index}].principalInterest"  value="${jltfispPsInfoList.principalInterest}" type="text" class="txt validate[custom[onlyNumberSp], minSize[1],maxSize[10]]" placeholder="请输入实际支付本息(本金+利息)" />元</td>
               </tr>
               <tr>
                  <th>实际放贷日</th>
                  <td><input name="jltfispPsInfoList[${jltfispPsInfoList_index}].lendDate" type="text" value="${jltfispPsInfoList.lendDate}" class="txt" placeholder="请输入实际放贷日" onClick="WdatePicker()" readonly="readonly" /></td>
                  <th>贷款期限</th>
                  <td><input name="jltfispPsInfoList[${jltfispPsInfoList_index}].loanTerm" type="text" value="${jltfispPsInfoList.loanTerm}" class="txt validate[custom[onlyNumberSp],minSize[1],maxSize[10]]" placeholder="请输入贷款期限" /></td>
               </tr>
            </table>
               </#if>
           </#list> 
          <#else>
          <table width="100%" class="tab3 module">
              <!-- <tr>
                  <td colspan="4"><a href="javascript:;" class="fr delete">删除</a></td>
              </tr> -->
              <tr>
                  <th style="width:8%">借款合同编号</th>
                  <td colspan="3"><input  name="jltfispPsInfoList[0].contractNumber"  type="text" class="txt validate[minSize[1],maxSize[1000]]" placeholder="请输入合同编号" /></td>
              </tr>
              <tr>
                  <th><b class="red">*</b><b>保单号</b></th>
                  <td><input name="jltfispPsInfoList[0].policyNumber" type="text" class="txt validate[required,minSize[1],maxSize[1000]]" placeholder="请输入保单号" /></td>
                  <th><b class="red">*</b><b>担保金额</b></th>
                  <td><input name="jltfispPsInfoList[0].premiumMoney" type="text" class="txt validate[required,minSize[1],maxSize[10],custom[onlyNumberSp]]" placeholder="请输入担保金额" />万元</td>
              </tr>
              <tr>
                  <th><b class="red">*</b><b>贷款银行</b></th>
                  <td>
                      <input name="jltfispPsInfoList[0].loanBank" type="text" class="txt validate[required,minSize[1],maxSize[1000]]" placeholder="请输入贷款银行" />
                  </td>
                  <th><b class="red">*</b><b>保险/担保公司</b></th>
                  <td>
                      <input  name="jltfispPsInfoList[0].insuranceCompany" type="text" class="txt validate[required,minSize[1],maxSize[1000]]" placeholder="请输入保险/担保公司" />
                  </td>
              </tr>
              <tr>
                  <th>实际支付保额金额</th>
                   <td colspan="3"><input name="jltfispPsInfoList[0].loanMoney" type="text" class="txt validate[custom[onlyNumberSp],minSize[1],maxSize[10]]" placeholder="请输入实际支付保额金额" />元</td>
              </tr>
              <tr>
                  <th>实际还款日</th>
                  <td><input name="jltfispPsInfoList[0].repaymentDate" type="text" class="txt" placeholder="请输入实际还款日" onClick="WdatePicker()" readonly="readonly" /></td>
                  <th>实际支付本息(本金+利息)</th>
                  <td><input name="jltfispPsInfoList[0].principalInterest" type="text" class="txt validate[custom[onlyNumberSp], minSize[1],maxSize[10]]" placeholder="请输入实际支付本息(本金+利息)" />元</td>
              </tr>
              <tr>
                  <th>实际放贷日</th>
                  <td><input name="jltfispPsInfoList[0].lendDate" type="text" class="txt " placeholder="请输入实际放贷日" onClick="WdatePicker()" readonly="readonly" /></td>
                  <th>贷款期限</th>
                  <td><input name="jltfispPsInfoList[0].loanTerm" type="text" class="txt validate[custom[onlyNumberSp],minSize[1],maxSize[10]]" placeholder="请输入贷款期限" /></td>
              </tr>
            </table>
          </#if>
         </form>
          <div class="logbtn" style="margin-top:30px;">
              <input type="button" class="can" value="取消" />
              <input type="button" class="nor" value="下一步" />
          </div>
      </div>
  </div>