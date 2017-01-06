  <#setting date_format="yyyy-MM-dd">
  <!--企业基本信息-->
                        <div class="nlistCont">
                        	<p class="ntit">企业基本信息</p>
                        	<form id="coBase">
                        	<input type="hidden" id="businesstype"   name="businesstype"   value="${applytype}"/>
                            <table width="100%" class="tab3">
                            	<tr>
                                    <th><b class="red">*</b>${loanformManage.baseCompany}</th>
                                    <td colspan="3"><input type="text" id="company"  readonly name="company"  class="txt validate[required]" value="${user.username}"/></td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b>${loanformManage.baseEstablishtime}</th>
                                    <td><input type="text" id="establishTime" name="establishTime" class="txt dateIcon validate[required]" readonly onClick="WdatePicker({readOnly:true})" readonly="readonly" value="<#if (coAll.jltfispCoBase.establishTime?exists)>${coAll.jltfispCoBase.establishTime?date}</#if>"/></td>
                                    <th><b class="red">*</b>${loanformManage.baseRegisteredcapital}</th>
                                    <td><input type="text" class="txt validate[required,custom[number4],maxSize[10]]" placeholder="请输入" id="registeredCapital" name="registeredCapital" value="${coAll.jltfispCoBase.registeredCapital}"/>万元</td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b>${loanformManage.baseRegisteredaddress}</th>
                                    <td><input type="text" class="txt validate[required,mixSize[2],maxSize[100]]" placeholder="请输入"  id="registeredAddress" name="registeredAddress" value="${coAll.jltfispCoBase.registeredAddress}"/></td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b>${loanformManage.baseOfficeaddress}</th>
                                    <td colspan="3">
                                        <select id="officeProv" name="officeProv">
                                        	
                                        </select>
                                        <select id="officeCity" name="officeCity">
                                        	
                                        </select>
                                        <select id="officeArea" name="officeArea">
                                        	
                                        </select>
                                        <input id="officeAddress" name="officeAddress" value="${coAll.jltfispCoBase.officeAddress}" type="text" class="txt validate[required,mixSize[2],maxSize[100]]" placeholder="详细地址" />
                                    </td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b>${loanformManage.baseProductaddress}</th>
                                    <td colspan="3">
                                        <select id="productProv" name="productProv">
                                        	
                                        </select>
                                        <select id="productCity" name="productCity">
                                        	
                                        </select>
                                        <select id="productArea" name="productArea">
                                        	
                                        </select>
                                        <input id="productAddress" value="${coAll.jltfispCoBase.productAddress}" name="productAddress" type="text" class="txt validate[required,mixSize[2],maxSize[100]]" placeholder="详细地址" />
                                    </td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b>${loanformManage.baseCorporaterepresentative}</th>
                                    <td><input id="corporateRepresentative" name="corporateRepresentative" value="${coAll.jltfispCoBase.corporateRepresentative}" type="text" class="txt validate[required,mixSize[2],maxSize[20]]" placeholder="请输入" /></td>
                                    <th><b class="red">*</b>${loanformManage.baseMobilephone}</th>
                                    <td><input id="mobilephone" name="mobilephone" value="${coAll.jltfispCoBase.mobilephone}" type="text" class="txt validate[required,maxSize[11],custom[mobile]]" placeholder="请输入" /></td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b>${loanformManage.baseEmail}</th>
                                    <td><input id="email" name="email" type="text" value="${coAll.jltfispCoBase.email}" class="txt validate[required,mixSize[2],maxSize[50],custom[email]]" placeholder="请输入" /></td>
                                    <th><b class="red">*</b>${loanformManage.baseIdcard}</th>
                                    <td><input id="IDcard" name="IDcard" type="text" value="${coAll.jltfispCoBase.IDcard}" class="txt validate[required,mixSize[10],maxSize[30],custom[chinaId]]" placeholder="请输入" /></td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b>${loanformManage.baseSocialcreditcode}</th>
                                    <td><input id="socialCreditCode" name="socialCreditCode" readonly value="${user.socialCode}" type="text" class="txt validate[required,mixSize[9],maxSize[20]]" /></td>
                                    <th><b class="red">*</b>${loanformManage.baseCnpj}</th>
                                    <td><input id="cnpj" name="cnpj" type="text" value="${coAll.jltfispCoBase.cnpj}" class="txt validate[required,mixSize[2],maxSize[500]]" placeholder="请输入" /></td>
                                </tr>
                                <tr>
                                    <th>${loanformManage.baseCardno}</th>
                                    <td colspan="3"><input id="cardNo" name="cardNo" type="text" value="${coAll.jltfispCoBase.cardNo}" class="txt validate[mixSize[10],maxSize[30],custom[onlyNumberSp]]" placeholder="请输入"/></td>
                                </tr>
                            </table>
                            <p class="ntit">银行信息</p>
                            <table width="100%" class="tab3 tab4">
                            	<tr>
                                    <th style="width:8%">${loanformManage.baseAccount}</th>
                                    <th>${loanformManage.baseAccountbank}</th>
                                    <th>${loanformManage.baseAccountnumber}</th>
                                </tr>
                                <tr>
                                    <td><b class="red">*</b><b>${loanformManage.baseBasicaccount}</b></td>
                                    <td><input id="basicAccountBank" value="${coAll.jltfispCoBase.basicAccountBank}" name="basicAccountBank" type="text" class="txt validate[required]" placeholder="可手动输入" /></td>
                                    <td><input id="basicAccountCard" value="${coAll.jltfispCoBase.basicAccountCard}" name="basicAccountCard" type="text" class="txt validate[required,mixSize[10],maxSize[30],custom[onlyNumberSp]]" placeholder="请输入" /></td>
                                </tr>
                                <tr>
                                    <td><b>${loanformManage.baseGeneralaccount}</b></td>
                                    <td><input id="generalAccountBank" value="${coAll.jltfispCoBase.generalAccountBank}" name="generalAccountBank" type="text" class="txt" placeholder="可手动输入" /></td>
                                    <td><input id="generalAccountCard" value="${coAll.jltfispCoBase.generalAccountCard}" name="generalAccountCard" type="text" class="txt validate[mixSize[10],maxSize[30],custom[onlyNumberSp]]" placeholder="请输入" /></td>
                                </tr>
                            </table>
                            <p class="ntit">企业联系人</p>
                            <table width="100%" class="tab3">
                            	<tr>
                                    <th><b class="red">*</b>${loanformManage.baseLinkman}</th>
                                    <td colspan="3"><input id="linkMan" name="linkMan" value="${coAll.jltfispCoBase.linkMan}" type="text" class="txt validate[required,mixSize[2],maxSize[20]]" placeholder="请输入" /></td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b>${loanformManage.baseDuties}</th>
                                    <td><input id="duties" name="duties" type="text" value="${coAll.jltfispCoBase.duties}" class="txt validate[required,mixSize[2],maxSize[10]]" placeholder="请输入" /></td>
                                    <th><b class="red">*</b>${loanformManage.baseLinkmobile}</th>
                                    <td><input id="linkMobile" name="linkMobile" value="${coAll.jltfispCoBase.linkMobile}" type="text" class="txt validate[required,maxSize[11],custom[mobile]]" placeholder="请输入" /></td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b>${loanformManage.basePhoneorfax}</th>
                                    <td><input id="zoneDescription" name="zoneDescription" value="${coAll.jltfispCoBase.zoneDescription}" type="text" class="txt validate[required,minSize[3],maxSize[4],custom[onlyNumberSp]]" placeholder="区号" style="width:56px;" />-<input id="phoneOrFax" name="phoneOrFax" value="${coAll.jltfispCoBase.phoneOrFax}" type="text" class="txt validate[required,minSize[7],maxSize[8],custom[onlyNumberSp]]" placeholder="电话" style="width:120px;" /></td>
                                    <th><b class="red">*</b>${loanformManage.baseLinkemail}</th>
                                    <td><input id="linkEmail" name="linkEmail" value="${coAll.jltfispCoBase.linkEmail}" type="text" class="txt validate[required,mixSize[2],maxSize[50],custom[email]]" placeholder="请输入" /></td>
                                </tr>
                            </table>
                            <p class="ntit"><b class="red">*</b>股东构成</p>
                            <table width="100%" class="tab3 tab4">
                            	<tr>
                                    <th style="width:8%">${loanformManage.baseMainshareholder}</th>
                                    <th>${loanformManage.baseShareholdername}</th>
                                    <th>${loanformManage.baseStock}</th>
                                </tr>
                                <tr>
                                    <td>${loanformManage.baseOneshareholder}</td>
                                    <td><input id="oneShareholderName" name="oneShareholderName" value="${coAll.jltfispCoBase.oneShareholderName}" type="text" class="txt validate[required,mixSize[2],maxSize[20],custom[chineseEnglish]]" placeholder="请输入" /></td>
                                    <td><input id="oneStock" name="oneStock" type="text" value="${coAll.jltfispCoBase.oneStock}" class="txt validate[required,mixSize[1],min[0],max[100],custom[number3]]" value="0" />%</td>
                                </tr>
                                <tr>
                                    <td>${loanformManage.baseTwoshareholder}</td>
                                    <td><input id="twoShareholderName" name="twoShareholderName" value="${coAll.jltfispCoBase.twoShareholderName}"  type="text" class="txt validate[mixSize[2],maxSize[20],custom[chineseEnglish]]" placeholder="请输入" /></td>
                                    <td><input id="twoStock" name="twoStock" type="text" value="${coAll.jltfispCoBase.twoStock}" class="txt validate[min[0],max[100],custom[number3]]" value="0" />%</td>
                                </tr>
                                <tr>
                                    <td>${loanformManage.baseThreeshareholer}</td>
                                    <td><input id="threeShareholerName" name="threeShareholerName" value="${coAll.jltfispCoBase.threeShareholerName}" type="text" class="txt validate[mixSize[2],maxSize[20],custom[chineseEnglish]]" placeholder="请输入" /></td>
                                    <td><input id="threeStock" name="threeStock" type="text" value="${coAll.jltfispCoBase.threeStock}" class="txt validate[min[0],max[100],custom[number3]]" value="0" />%</td>
                                </tr>
                            </table>
                            </form>
                            <div class="btnFld"><input type="button" value="保存并下一步" class="btnSave" /></div>
                        </div>