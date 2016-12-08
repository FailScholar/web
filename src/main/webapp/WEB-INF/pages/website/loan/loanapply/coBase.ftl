  <#setting date_format="yyyy-MM-dd">
  <!--企业基本信息-->
                        <div class="nlistCont">
                        	<p class="ntit">企业基本信息</p>
                        	<form id="coBase">
                        	<input type="hidden" id="businesstype"   name="businesstype"   value="${applytype}"/>
                            <table width="100%" class="tab3">
                            	<tr>
                                    <th><b class="red">*</b>企业名称</th>
                                    <td colspan="3"><input type="text" id="company"   name="company"  class="txt validate[required]" value="${coAll.jltfispCoBase.company}"/></td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b>成立时间</th>
                                    <td><input type="text" id="establishTime" name="establishTime" class="txt dateIcon validate[required]" onClick="WdatePicker()" readonly="readonly" value="<#if coAll.jltfispCoBase.establishTime?date != "">${coAll.jltfispCoBase.establishTime?date}</#if>"/></td>
                                    <th><b class="red">*</b>注册资本</th>
                                    <td><input type="text" class="txt validate[required,custom[number],maxSize[10]]" placeholder="请输入" id="registeredCapital" name="registeredCapital" value="${coAll.jltfispCoBase.registeredCapital}"/>万元</td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b>注册地址</th>
                                    <td><input type="text" class="txt validate[required,mixSize[2],maxSize[1000]]" placeholder="请输入"  id="registeredAddress" name="registeredAddress" value="${coAll.jltfispCoBase.registeredAddress}"/></td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b>办公地址</th>
                                    <td colspan="3">
                                        <select id="officeProv" name="officeProv">
                                        	
                                        </select>
                                        <select id="officeCity" name="officeCity">
                                        	
                                        </select>
                                        <select id="officeArea" name="officeArea">
                                        	
                                        </select>
                                        <input id="officeAddress" name="officeAddress" value="${coAll.jltfispCoBase.officeAddress}" type="text" class="txt validate[required,mixSize[2],maxSize[1000]]" placeholder="详细地址" />
                                    </td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b>生产地址</th>
                                    <td colspan="3">
                                        <select id="productProv" name="productProv">
                                        	
                                        </select>
                                        <select id="productCity" name="productCity">
                                        	
                                        </select>
                                        <select id="productArea" name="productArea">
                                        	
                                        </select>
                                        <input id="productAddress" value="${coAll.jltfispCoBase.productAddress}" name="productAddress" type="text" class="txt validate[required,mixSize[2],maxSize[1000]]" placeholder="详细地址" />
                                    </td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b>法定代表人</th>
                                    <td><input id="corporateRepresentative" name="corporateRepresentative" value="${coAll.jltfispCoBase.corporateRepresentative}" type="text" class="txt validate[required,mixSize[2],maxSize[1000]]" placeholder="请输入" /></td>
                                    <th><b class="red">*</b>手机号</th>
                                    <td><input id="mobilephone" name="mobilephone" value="${coAll.jltfispCoBase.mobilephone}" type="text" class="txt validate[required,maxSize[11],custom[phone]]" placeholder="请输入" /></td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b>邮箱</th>
                                    <td><input id="email" name="email" type="text" value="${coAll.jltfispCoBase.email}" class="txt validate[required,mixSize[2],maxSize[50],custom[email]]" placeholder="请输入" /></td>
                                    <th><b class="red">*</b>身份证号码</th>
                                    <td><input id="IDcard" name="IDcard" type="text" value="${coAll.jltfispCoBase.IDcard}" class="txt validate[required,mixSize[10],maxSize[30],custom[chinaId]]" placeholder="请输入" /></td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b>组织机构代码</th>
                                    <td><input id="socialCreditCode" name="socialCreditCode" value="${coAll.jltfispCoBase.socialCreditCode}" type="text" class="txt validate[required,mixSize[9],maxSize[20]]" /></td>
                                    <th><b class="red">*</b>税务登记号</th>
                                    <td><input id="cnpj" name="cnpj" type="text" value="${coAll.jltfispCoBase.cnpj}" class="txt validate[required,mixSize[2],maxSize[1000]]" placeholder="请输入" /></td>
                                </tr>
                                <tr>
                                    <th>贷款账号</th>
                                    <td colspan="3"><input id="cardNo" name="cardNo" type="text" value="${coAll.jltfispCoBase.cardNo}" class="txt validate[maxSize[1000]]" placeholder="请输入"/></td>
                                </tr>
                            </table>
                            <p class="ntit">银行信息</p>
                            <table width="100%" class="tab3 tab4">
                            	<tr>
                                    <th style="width:8%">账户</th>
                                    <th>开户银行</th>
                                    <th>账号</th>
                                </tr>
                                <tr>
                                    <td><b class="red">*</b><b>基本账户</b></td>
                                    <td><input id="basicAccountBank" value="${coAll.jltfispCoBase.basicAccountBank}" name="basicAccountBank" type="text" class="txt validate[required]" placeholder="可手动输入" /></td>
                                    <td><input id="basicAccountCard" value="${coAll.jltfispCoBase.basicAccountCard}" name="basicAccountCard" type="text" class="txt validate[required,mixSize[2],maxSize[1000],custom[number]]" placeholder="请输入" /></td>
                                </tr>
                                <tr>
                                    <td><b>一般账户</b></td>
                                    <td><input id="generalAccountBank" value="${coAll.jltfispCoBase.generalAccountBank}" name="generalAccountBank" type="text" class="txt" placeholder="可手动输入" /></td>
                                    <td><input id="generalAccountCard" value="${coAll.jltfispCoBase.generalAccountCard}" name="generalAccountCard" type="text" class="txt validate[maxSize[1000],custom[number]]" placeholder="请输入" /></td>
                                </tr>
                            </table>
                            <p class="ntit">企业联系人</p>
                            <table width="100%" class="tab3">
                            	<tr>
                                    <th><b class="red">*</b>联系人</th>
                                    <td colspan="3"><input id="linkMan" name="linkMan" value="${coAll.jltfispCoBase.linkMan}" type="text" class="txt validate[required,mixSize[2],maxSize[1000]]" placeholder="请输入" /></td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b>职务</th>
                                    <td><input id="duties" name="duties" type="text" value="${coAll.jltfispCoBase.duties}" class="txt validate[required,mixSize[2],maxSize[1000]]" placeholder="请输入" /></td>
                                    <th><b class="red">*</b>手机</th>
                                    <td><input id="linkMobile" name="linkMobile" value="${coAll.jltfispCoBase.linkMobile}" type="text" class="txt validate[required,maxSize[11],custom[phone]]" placeholder="请输入" /></td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b>电话/传真</th>
                                    <td><input id="zoneDescription" name="zoneDescription" value="${coAll.jltfispCoBase.zoneDescription}" type="text" class="txt validate[required,minSize[3],maxSize[4],custom[number]]" placeholder="区号" style="width:56px;" />-<input id="phoneOrFax" name="phoneOrFax" value="${coAll.jltfispCoBase.phoneOrFax}" type="text" class="txt validate[required,minSize[7],maxSize[8],custom[number]]" placeholder="电话" style="width:120px;" /></td>
                                    <th><b class="red">*</b>电子邮件</th>
                                    <td><input id="linkEmail" name="linkEmail" value="${coAll.jltfispCoBase.linkEmail}" type="text" class="txt validate[required,mixSize[2],maxSize[50],custom[email]]" placeholder="请输入" /></td>
                                </tr>
                            </table>
                            <p class="ntit"><b class="red">*</b>股东构成</p>
                            <table width="100%" class="tab3 tab4">
                            	<tr>
                                    <th style="width:8%">主要股东</th>
                                    <th>股东名称(或姓名)</th>
                                    <th>所占股份</th>
                                </tr>
                                <tr>
                                    <td>第一股东</td>
                                    <td><input id="oneShareholderName" name="oneShareholderName" value="${coAll.jltfispCoBase.oneShareholderName}" type="text" class="txt validate[required,mixSize[2],maxSize[20],custom[chineseEnglish]]" placeholder="请输入" /></td>
                                    <td><input id="oneStock" name="oneStock" type="text" value="${coAll.jltfispCoBase.oneStock}" class="txt validate[required,mixSize[1],maxSize[2],custom[number]]" value="0" />%</td>
                                </tr>
                                <tr>
                                    <td>第二股东</td>
                                    <td><input id="twoShareholderName" name="twoShareholderName" value="${coAll.jltfispCoBase.twoShareholderName}"  type="text" class="txt validate[mixSize[2],maxSize[20],custom[chineseEnglish]]" placeholder="请输入" /></td>
                                    <td><input id="twoStock" name="twoStock" type="text" value="${coAll.jltfispCoBase.twoStock}" class="txt validate[maxSize[2],custom[number]]" value="0" />%</td>
                                </tr>
                                <tr>
                                    <td>第三股东</td>
                                    <td><input id="threeShareholerName" name="threeShareholerName" value="${coAll.jltfispCoBase.threeShareholerName}" type="text" class="txt validate[mixSize[2],maxSize[20],custom[chineseEnglish]]" placeholder="请输入" /></td>
                                    <td><input id="threeStock" name="threeStock" type="text" value="${coAll.jltfispCoBase.threeStock}" class="txt validate[maxSize[2],custom[number]]" value="0" />%</td>
                                </tr>
                            </table>
                            </form>
                            <div class="btnFld"><input type="button" value="保存并下一步" class="btnSave" /><input type="button" class="btnCan" value="取消" /></div>
                        </div>