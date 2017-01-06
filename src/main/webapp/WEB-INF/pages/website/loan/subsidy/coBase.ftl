 <div class="proList nli" style="padding-top:0;">
     <!--填写企业基本信息-->
     <div class="nlistCont">
       <p class="ntit">企业基本信息</p>
          <form id="coBase">
          <table width="100%" class="tab3">
              <tr>
                  <th><b class="red">*</b>${loanformManage.baseCompany}</th>
                  <td colspan="3"><input id="company"   name="company"  type="text" class="txt" readonly="readonly" value="${companyName}" /></td>
              </tr>
              <tr>
                  <th><b class="red">*</b>${loanformManage.baseSocialcreditcode}</th>
                  <td><input id="socialCreditCode" name="socialCreditCode" type="text" value="${socialCode}" readonly="readonly" class="txt validate[required]" placeholder="请输入" /></td>
                  <th><b class="red">*</b>${loanformManage.baseCardno}</th>
                  <td><input id="cardNo" name="cardNo" type="text" value="${jlfispPsBaseDto.cardNo }" class="txt validate[required,custom[onlyNumberSp],minSize[10],maxSize[20]]" placeholder="请输入" /></td>
              </tr>
              <tr>
                  <th><b class="red">*</b>${loanformManage.infoEnterpriseaccoung}</th>
                  <td colspan="3"><input id="basicAccountBank" name="basicAccountBank" value="${jlfispPsBaseDto.basicAccountBank }" type="text" class="txt validate[required,minSize[1],maxSize[500]]" placeholder="请输入" />
	                  <input id="basicAccountName" name="basicAccountName" type="text"  value="${jlfispPsBaseDto.basicAccountName }" class="txt validate[required,minSize[1],maxSize[500]]" placeholder="请输入" />
	                  <input id="basicAccountCard" name="basicAccountCard" type="text" value="${jlfispPsBaseDto.basicAccountCard }"  class="txt validate[required,custom[onlyNumberSp],minSize[1],maxSize[500]]" placeholder="请输入" />
	              </td>
              </tr>
              <tr>
                  <th><b class="red">*</b>${loanformManage.baseAccountbank}</th>
                  <td><input id="loanBankName" name="loanBankName" value="${jlfispPsBaseDto.loanBankName }" type="text" class="txt validate[required,minSize[1],maxSize[20]]" placeholder="请输入" /></td>
                  <th><b class="red">*</b>${loanformManage.baseRegisteredcapital}</th>
                  <td><input id="registeredCapital" name="registeredCapital" value="${capilMoney}"   type="text" class="txt validate[required,custom[number4],minSize[1],maxSize[10]]" placeholder="请输入" />万元</td>
              </tr>
              <tr>
                  <th><b class="red">*</b>${loanformManage.baseRegisteredaddress}</th>
                  <td colspan="3">
                      <input id="registeredAddress" name="registeredAddress" value="${jlfispPsBaseDto.registeredAddress }"  type="text" placeholder="请输入"  class="txt validate[required,minSize[2],maxSize[50]]"/>
                  </td>
              </tr>
              <tr>
                  <th><b class="red">*</b>${loanformManage.baseOfficeaddress}</th>
                  <td colspan="3">
                      <select id="officeProv" name="officeProv" value="${jlfispPsBaseDto.officeProv }">
                                        	
                      </select>
                      <select id="officeCity" name="officeCity" value="${jlfispPsBaseDto.officeCity }">
                      	
                      </select>
                      <select id="officeArea" name="officeArea" value="${jlfispPsBaseDto.officeArea }" >
                      	
                      </select>
                      <input id="officeAddress" name="officeAddress" type="text" value="${jlfispPsBaseDto.officeAddress }" class="txt validate[required,minSize[2],maxSize[50]]" style="width:485px;" placeholder="请输入" />
                  </td>
              </tr>
              <tr>
                  <th><b class="red">*</b>${loanformManage.baseLinkman}</th>
                  <td><input id="linkMan" name="linkMan" type="text" value="${jlfispPsBaseDto.linkMan }" class="txt validate[required,custom[chineseAndChar],minSize[2],maxSize[20]]" placeholder="请输入" /></td>
                  <th><b class="red">*</b>${loanformManage.baseLinkemail}</th>
                  <td><input id="email" name="email" type="text" class="txt validate[mixSize[2],maxSize[50],custom[email]]" value="${jlfispPsBaseDto.email }" placeholder="请输入" /></td>
              </tr>
              <tr>
                  <th><b class="red">*</b>${loanformManage.basePhoneorfax}</th>
                  <td><input id="zoneDescription" name="zoneDescription" type="text" value="${jlfispPsBaseDto.zoneDescription }" class="txt validate[required,custom[onlyNumberSp],minSize[3],maxSize[4]]" style="width:56px;" placeholder="区号" />-<input id="phoneOrFax" name="phoneOrFax"  value="${jlfispPsBaseDto.phoneOrFax}" type="text" class="txt validate[required,custom[onlyNumberSp],minSize[7],maxSize[10]]" style="width:120px;" placeholder="请输入" /></td>
                  <th><b class="red">*</b>${loanformManage.baseLinkmobile}</th>
                  <td><input id="mobilephone" name="mobilephone"  type="text" value="${jlfispPsBaseDto.mobilephone }" class="txt validate[required,custom[mobile]]" placeholder="请输入" /></td>
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
                  <th style="width:8%"><b class="red">*</b><b>${loanformManage.infoContractNumber}</b></th>
                  <td colspan="3"><input  name="jltfispPsInfoList[${jltfispPsInfoList_index}].contractNumber" value="${jltfispPsInfoList.contractNumber}"  type="text" class="txt validate[required,custom[userLoginPassword],minSize[1],maxSize[20]] hetongbianhao" placeholder="请输入" /></td>
               </tr>
               <tr>
                  <th><b class="red">*</b><b>${loanformManage.infoPolicyNumber}</b></th>
                  <td><input name="jltfispPsInfoList[${jltfispPsInfoList_index}].policyNumber" value="${jltfispPsInfoList.policyNumber}" type="text" class="txt validate[required,custom[userLoginPassword],minSize[1],maxSize[50]] baodanhao" placeholder="请输入" /></td>
                  <th><b class="red">*</b><b>${loanformManage.infoPremiumMoney}</b></th>
                  <td><input name="jltfispPsInfoList[${jltfispPsInfoList_index}].premiumMoney" value="${jltfispPsInfoList.premiumMoney}" type="text" class="txt validate[required,custom[number2],minSize[1],maxSize[10]] danbaojiner" placeholder="请输入" />万元</td>
               </tr>
               <tr>
                  <th><b class="red">*</b><b>${loanformManage.infoLoanBank}</b></th>
                  <td>
                      <input name="jltfispPsInfoList[${jltfispPsInfoList_index}].loanBank" value="${jltfispPsInfoList.loanBank}" type="text" class="txt daikuanyinhang validate[required,minSize[1],maxSize[20]]" placeholder="请输入" />
                  </td>
                  <th><b class="red">*</b><b>${loanformManage.infoInsuranceCompany}</b></th>
                  <td>
                      <input  name="jltfispPsInfoList[${jltfispPsInfoList_index}].insuranceCompany"  value="${jltfispPsInfoList.insuranceCompany}" type="text" class="txt baoxiangongsi validate[required,minSize[1],maxSize[20]]" placeholder="请输入" />
                  </td>
               </tr>
               <tr>
                  <th><b class="red">*</b><b>${loanformManage.infoLoanMoney}</b></th>
                   <td colspan="3"><input name="jltfispPsInfoList[${jltfispPsInfoList_index}].loanMoney" value="${jltfispPsInfoList.loanMoney}" type="text" class="txt shijizhifujine validate[required,custom[number2],minSize[1],maxSize[10]]" placeholder="请输入" />元</td>
               </tr>
               <tr>
                  <th><b class="red">*</b><b>${loanformManage.infoRepaymentDate}</b></th>
                  <td><input name="jltfispPsInfoList[${jltfispPsInfoList_index}].repaymentDate" value="${jltfispPsInfoList.repaymentDate}" type="text" class="txt validate[required] shijihuankuanri" placeholder="请输入" onClick="WdatePicker({readOnly:true})" readonly="readonly" /></td>
                  <th><b class="red">*</b><b>${loanformManage.infoPrincipalInterest}</b></th>
                  <td><input name="jltfispPsInfoList[${jltfispPsInfoList_index}].principalInterest"  value="${jltfispPsInfoList.principalInterest}" type="text" class="txt shijizhifubenxi validate[required,custom[number2], minSize[1],maxSize[10]]" placeholder="请输入" />元</td>
               </tr>
               <tr>
                  <th><b class="red">*</b><b>${loanformManage.infoLendDate}</b></th>
                  <td><input name="jltfispPsInfoList[${jltfispPsInfoList_index}].lendDate" type="text" value="${jltfispPsInfoList.lendDate}" class="txt validate[required] shijifangdairi" placeholder="请输入" onClick="WdatePicker({readOnly:true})" readonly="readonly" /></td>
                  <th><b class="red">*</b><b>${loanformManage.infoLoanTerm}</b></th>
                  <td><input name="jltfispPsInfoList[${jltfispPsInfoList_index}].loanTerm" type="text" value="${jltfispPsInfoList.loanTerm}" class="txt daikuanqixian validate[required,custom[onlyNumberSp],minSize[1],maxSize[10]]" placeholder="请输入" />月</td>
               </tr>
            </table>
                 <#else>
                   <table width="100%" class="tab3 module">
               <tr>
                  <th style="width:8%"><b class="red">*</b><b>${loanformManage.infoContractNumber}</b></th>
                  <td colspan="3"><input  name="jltfispPsInfoList[${jltfispPsInfoList_index}].contractNumber" value="${jltfispPsInfoList.contractNumber}"  type="text" class="txt validate[required,custom[userLoginPassword],minSize[1],maxSize[20]]" placeholder="请输入" /></td>
               </tr>
               <tr>
                  <th><b class="red">*</b><b>${loanformManage.infoPolicyNumber}</b></th>
                  <td><input name="jltfispPsInfoList[${jltfispPsInfoList_index}].policyNumber" value="${jltfispPsInfoList.policyNumber}" type="text" class="txt validate[required,custom[userLoginPassword],minSize[1],maxSize[50]]" placeholder="请输入" /></td>
                  <th><b class="red">*</b><b>${loanformManage.infoPremiumMoney}</b></th>
                  <td><input name="jltfispPsInfoList[${jltfispPsInfoList_index}].premiumMoney" value="${jltfispPsInfoList.premiumMoney}" type="text" class="txt validate[required,minSize[1],maxSize[10],custom[number2]]" placeholder="请输入" />万元</td>
               </tr>
               <tr>
                  <th><b class="red">*</b><b>${loanformManage.infoLoanBank}</b></th>
                  <td>
                      <input name="jltfispPsInfoList[${jltfispPsInfoList_index}].loanBank" value="${jltfispPsInfoList.loanBank}" type="text" class="txt validate[required,minSize[1],maxSize[20]]" placeholder="请输入" />
                  </td>
                  <th><b class="red">*</b><b>${loanformManage.infoInsuranceCompany}</b></th>
                  <td>
                      <input  name="jltfispPsInfoList[${jltfispPsInfoList_index}].insuranceCompany"  value="${jltfispPsInfoList.insuranceCompany}" type="text" class="txt validate[required,minSize[1],maxSize[20]]" placeholder="请输入" />
                  </td>
               </tr>
               <tr>
                  <th><b class="red">*</b><b>${loanformManage.infoLoanMoney}</b></th>
                   <td colspan="3"><input name="jltfispPsInfoList[${jltfispPsInfoList_index}].loanMoney" value="${jltfispPsInfoList.loanMoney}" type="text" class="txt validate[required,custom[number2],minSize[1],maxSize[10]]" placeholder="请输入" />元</td>
               </tr>
               <tr>
                  <th><b class="red">*</b><b>${loanformManage.infoRepaymentDate}</b></th>
                  <td><input name="jltfispPsInfoList[${jltfispPsInfoList_index}].repaymentDate" value="${jltfispPsInfoList.repaymentDate}" type="text" class="txt validate[required]" placeholder="请输入" onClick="WdatePicker({readOnly:true})" readonly="readonly"/></td>
                  <th><b class="red">*</b><b>${loanformManage.infoPrincipalInterest}</b></th>
                  <td><input name="jltfispPsInfoList[${jltfispPsInfoList_index}].principalInterest"  value="${jltfispPsInfoList.principalInterest}" type="text" class="txt validate[required,custom[number2], minSize[1],maxSize[10]]" placeholder="请输入" />元</td>
               </tr>
               <tr>
                  <th><b class="red">*</b><b>${loanformManage.infoLendDate}</b></th>
                  <td><input name="jltfispPsInfoList[${jltfispPsInfoList_index}].lendDate" type="text" value="${jltfispPsInfoList.lendDate}" class="txt validate[required]" placeholder="请输入" onClick="WdatePicker({readOnly:true})" readonly="readonly"/></td>
                  <th><b class="red">*</b><b>${loanformManage.infoLoanTerm}</b></th>
                  <td><input name="jltfispPsInfoList[${jltfispPsInfoList_index}].loanTerm" type="text" value="${jltfispPsInfoList.loanTerm}" class="txt validate[required,custom[onlyNumberSp],minSize[1],maxSize[10]]" placeholder="请输入" />月</td>
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
                  <th style="width:8%"><b class="red">*</b><b>${loanformManage.infoContractNumber}</b></th>
                  <td colspan="3"><input  name="jltfispPsInfoList[0].contractNumber"  type="text" class="txt validate[required,custom[userLoginPassword],minSize[1],maxSize[20]]" placeholder="请输入" /></td>
              </tr>
              <tr>
                  <th><b class="red">*</b><b>${loanformManage.infoPolicyNumber}</b></th>
                  <td><input name="jltfispPsInfoList[0].policyNumber" type="text" class="txt validate[required,custom[userLoginPassword],minSize[1],maxSize[50]]" placeholder="请输入" /></td>
                  <th><b class="red">*</b><b>${loanformManage.infoPremiumMoney}</b></th>
                  <td><input name="jltfispPsInfoList[0].premiumMoney" type="text" class="txt validate[required,minSize[1],maxSize[10],custom[number2]]" placeholder="请输入" />万元</td>
              </tr>
              <tr>
                  <th><b class="red">*</b><b>${loanformManage.infoLoanBank}</b></th>
                  <td>
                      <input name="jltfispPsInfoList[0].loanBank" type="text" class="txt validate[required,minSize[1],maxSize[20]]" placeholder="请输入" />
                  </td>
                  <th><b class="red">*</b><b>${loanformManage.infoInsuranceCompany}</b></th>
                  <td>
                      <input  name="jltfispPsInfoList[0].insuranceCompany" type="text" class="txt validate[required,minSize[1],maxSize[20]]" placeholder="请输入" />
                  </td>
              </tr>
              <tr>
                  <th><b class="red">*</b><b>${loanformManage.infoLoanMoney}</b></th>
                   <td colspan="3"><input name="jltfispPsInfoList[0].loanMoney" type="text" class="txt validate[required,custom[number2],minSize[1],maxSize[10]]" placeholder="请输入" />元</td>
              </tr>
              <tr>
                  <th><b class="red">*</b><b>${loanformManage.infoRepaymentDate}</b></th>
                  <td><input name="jltfispPsInfoList[0].repaymentDate" type="text" class="txt validate[required]" placeholder="请输入" onClick="WdatePicker({readOnly:true})" readonly="readonly" /></td>
                  <th><b class="red">*</b><b>${loanformManage.infoPrincipalInterest}</b></th>
                  <td><input name="jltfispPsInfoList[0].principalInterest" type="text" class="txt validate[required,custom[number2], minSize[1],maxSize[10]]" placeholder="请输入" />元</td>
              </tr>
              <tr>
                  <th><b class="red">*</b><b>${loanformManage.infoLendDate}</b></th>
                  <td><input name="jltfispPsInfoList[0].lendDate" type="text" class="txt validate[required]" placeholder="请输入" onClick="WdatePicker({readOnly:true})" readonly="readonly" /></td>
                  <th><b class="red">*</b><b>${loanformManage.infoLoanTerm}</b></th>
                  <td><input name="jltfispPsInfoList[0].loanTerm" type="text" class="txt validate[required,custom[onlyNumberSp],minSize[1],maxSize[10]]" placeholder="请输入" />月</td>
              </tr>
            </table>
          </#if>
         </form>
          <div class="logbtn" style="margin-top:30px;">
<!--               <input type="button" class="can" value="取消" /> -->
              <input type="button" class="nor" value="下一步" />
          </div>
      </div>
  </div>