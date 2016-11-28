  <!--企业基本信息-->
                        <div class="nlistCont">
                        	<p class="ntit">企业基本信息</p>
                        	<form id="coBase">
                            <table width="100%" class="tab3">
                            	<tr>
                                    <th><b class="red">*</b>企业名称</th>
                                    <td colspan="3"><input type="text" id="company"   name="company" readonly="readonly" value="中国建设银行" class="txt" /></td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b>成立时间</th>
                                    <td><input type="text" id="establishTime" name="establishTime" class="txt dateIcon validate[required]" onClick="WdatePicker()" readonly="readonly" /></td>
                                    <th><b class="red">*</b>注册资本</th>
                                    <td><input type="text" class="txt validate[required]" placeholder="请输入" id="registeredCapital" name="registeredCapital" />万元</td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b>注册地址</th>
                                    <td><input type="text" class="txt validate[required]" placeholder="请输入"  id="registeredAddress" name="registeredAddress"/></td>
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
                                        <input id="officeAddress" name="officeAddress" type="text" class="txt validate[required]" placeholder="详细地址" />
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
                                        <input id="productAddress" name="productAddress" type="text" class="txt validate[required]" placeholder="详细地址" />
                                    </td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b>法定代表人</th>
                                    <td><input id="corporateRepresentative" name="corporateRepresentative" type="text" class="txt validate[required]" placeholder="请输入" /></td>
                                    <th><b class="red">*</b>手机号</th>
                                    <td><input id="mobilephone" name="mobilephone" type="text" class="txt validate[required]" placeholder="请输入" /></td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b>邮箱</th>
                                    <td><input id="email" name="email" type="text" class="txt validate[required]" placeholder="请输入" /></td>
                                    <th><b class="red">*</b>身份证号码</th>
                                    <td><input id="IDcard" name="IDcard" type="text" class="txt validate[required]" placeholder="请输入" /></td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b>组织机构代码</th>
                                    <td><input id="socialCreditCode" name="socialCreditCode" type="text" class="txt validate[required]" value="7765XXX-2" readonly="readonly" /></td>
                                    <th><b class="red">*</b>税务登记号</th>
                                    <td><input id="cnpj" name="cnpj" type="text" class="txt validate[required]" placeholder="请输入" /></td>
                                </tr>
                                <tr>
                                    <th>贷款账号</th>
                                    <td colspan="3"><input id="cardNo" name="cardNo" type="text" class="txt" placeholder="请输入"/></td>
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
                                    <td><input id="basicAccountBank" name="basicAccountBank" type="text" class="txt validate[required]" placeholder="可手动输入" /></td>
                                    <td><input id="basicAccountCard" name="basicAccountCard" type="text" class="txt validate[required]" placeholder="请输入" /></td>
                                </tr>
                                <tr>
                                    <td><b>一般账户</b></td>
                                    <td><input id="generalAccountBank" name="generalAccountBank" type="text" class="txt" placeholder="可手动输入" /></td>
                                    <td><input id="generalAccountCard" name="generalAccountCard" type="text" class="txt" placeholder="请输入" /></td>
                                </tr>
                            </table>
                            <p class="ntit">企业联系人</p>
                            <table width="100%" class="tab3">
                            	<tr>
                                    <th><b class="red">*</b>联系人</th>
                                    <td colspan="3"><input id="linkMan" name="linkMan" type="text" class="txt validate[required]" placeholder="请输入" /></td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b>职务</th>
                                    <td><input id="duties" name="duties" type="text" class="txt validate[required]" placeholder="请输入" /></td>
                                    <th><b class="red">*</b>手机</th>
                                    <td><input id="linkMobile" name="linkMobile" type="text" class="txt validate[required]" placeholder="请输入" /></td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b>电话/传真</th>
                                    <td><input id="zoneDescription" name="zoneDescription" type="text" class="txt validate[required]" placeholder="区号" style="width:56px;" />-<input id="phoneOrFax" name="phoneOrFax" type="text" class="txt validate[required]" placeholder="电话" style="width:120px;" /></td>
                                    <th><b class="red">*</b>电子邮件</th>
                                    <td><input id="linkEmail" name="linkEmail" type="text" class="txt validate[required]" placeholder="请输入" /></td>
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
                                    <td><input id="oneShareholderName" name="oneShareholderName" type="text" class="txt" placeholder="请输入" /></td>
                                    <td><input id="oneStock" name="oneStock" type="text" class="txt" value="0" />%</td>
                                </tr>
                                <tr>
                                    <td>第二股东</td>
                                    <td><input id="twoShareholderName" name="twoShareholderName"  type="text" class="txt" placeholder="请输入" /></td>
                                    <td><input id="twoStock" name="twoStock" type="text" class="txt" value="0" />%</td>
                                </tr>
                                <tr>
                                    <td>第三股东</td>
                                    <td><input id="threeShareholerName" name="threeShareholerName" type="text" class="txt" placeholder="请输入" /></td>
                                    <td><input id="threeStock" name="threeStock" type="text" class="txt" value="0" />%</td>
                                </tr>
                            </table>
                            </form>
                            <div class="btnFld"><input type="button" value="保存并下一步" class="btnSave" /><input type="button" class="btnCan" value="取消" /></div>
                        </div>