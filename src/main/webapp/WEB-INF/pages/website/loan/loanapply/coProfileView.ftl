
                          <!--企业基本情况-->
                          <div class="nlistCont" style="display:none;">
                              <p class="ntit">企业基本信息</p>
                              <table width="100%" class="tab3">
                                  <tr>
                                      <th><b class="red">*</b>企业名称</th>
                                      <td colspan="3">${coAll.jltfispCoBase.company}</td>
                                  </tr>
                                  <tr>
                                      <th><b class="red">*</b>成立时间</th>
                                      <td><#if coAll.jltfispCoBase.establishTime?date !="">${coAll.jltfispCoBase.establishTime?date}</#if></td>
                                      <th><b class="red">*</b>注册资本</th>
                                      <td>${coAll.jltfispCoBase.registeredCapital}万元</td>
                                  </tr>
                                  <tr>
                                      <th><b class="red">*</b>注册地址</th>
                                      <td colspan="3">${coAll.jltfispCoBase.registeredCapital}</td>
                                  </tr>
                                  <tr>
                                      <th><b class="red">*</b>办公地址</th>
                                      <td colspan="3"><span id="officeAddress"></span></td>
                                  </tr>
                                  <tr>
                                      <th><b class="red">*</b>生产地址</th>
                                      <td colspan="3"><span id="productAddress"></span></td>
                                  </tr>
                                  <tr>
                                      <th><b class="red">*</b>法定代表人</th>
                                      <td>${coAll.jltfispCoBase.corporateRepresentative}</td>
                                      <th><b class="red">*</b>手机号</th>
                                      <td>${coAll.jltfispCoBase.mobilephone}</td>
                                  </tr>
                                  <tr>
                                      <th><b class="red">*</b>邮箱</th>
                                      <td>${coAll.jltfispCoBase.email}</td>
                                      <th><b class="red">*</b>身份证号码</th>
                                      <td>${coAll.jltfispCoBase.IDcard}</td>
                                  </tr>
                                  <tr>
                                      <th><b class="red">*</b>组织机构代码</th>
                                      <td>${coAll.jltfispCoBase.socialCreditCode}</td>
                                      <th><b class="red">*</b>税务登记号</th>
                                      <td>${coAll.jltfispCoBase.cnpj}</td>
                                  </tr>
                                  <tr>
                                      <th>贷款账号</th>
                                      <td colspan="3">${coAll.jltfispCoBase.cardNo}</td>
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
                                      <td>${coAll.jltfispCoBase.basicAccountBank}</td>
                                      <td>${coAll.jltfispCoBase.basicAccountCard}</td>
                                  </tr>
                                  <tr>
                                      <td><b>一般账户</b></td>
                                      <td>${coAll.jltfispCoBase.generalAccountBank}</td>
                                      <td>${coAll.jltfispCoBase.generalAccountCard}</td>
                                  </tr>
                              </table>
                              <p class="ntit">企业联系人</p>
                              <table width="100%" class="tab3">
                                  <tr>
                                      <th><b class="red">*</b>联系人</th>
                                      <td colspan="3">${coAll.jltfispCoBase.linkMan}</td>
                                  </tr>
                                  <tr>
                                      <th><b class="red">*</b>职务</th>
                                      <td>${coAll.jltfispCoBase.duties}</td>
                                      <th><b class="red">*</b>手机</th>
                                      <td>${coAll.jltfispCoBase.linkMobile}</td>
                                  </tr>
                                  <tr>
                                      <th><b class="red">*</b>电话/传真</th>
                                      <td>${coAll.jltfispCoBase.zoneDescription}-${coAll.jltfispCoBase.phoneOrFax}</td>
                                      <th><b class="red">*</b>电子邮件</th>
                                      <td>${coAll.jltfispCoBase.linkEmail}</td>
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
                                      <td>${coAll.jltfispCoBase.oneShareholderName}</td>
                                      <td>${coAll.jltfispCoBase.oneStock}%</td>
                                  </tr>
                                  <tr>
                                      <td>第二股东</td>
                                      <td>${coAll.jltfispCoBase.twoShareholderName}</td>
                                      <td>${coAll.jltfispCoBase.twoStock}%</td>
                                  </tr>
                                  <tr>
                                      <td>第三股东</td>
                                      <td>${coAll.jltfispCoBase.threeShareholerName}</td>
                                      <td>${coAll.jltfispCoBase.threeStock}%</td>
                                  </tr>
                              </table>
                              <table width="100%" class="tab3">
                            	<tr>
                                    <th><b class="red">*</b>经营范围(主营)</th>
                                    <td>${coAll.jltfispCoProfile.mainBusiness}</td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b>经营范围(兼营)</th>
                                    <td>${coAll.jltfispCoProfile.sidelineBusses}</td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b>主要技术领域</th>
                                    <td>
                                        <#if coAll.jltfispCoProfile.mainField ==1 >
                                    	<label>电子信息技术</label>
                                        </#if>
                                        <#if coAll.jltfispCoProfile.mainField ==2 >
                                        <label>生物医药技术</label>
                                        </#if>
                                        <#if coAll.jltfispCoProfile.mainField ==3 >
                                        <label>航空航天技术</label>
                                        </#if>
                                        <#if coAll.jltfispCoProfile.mainField ==4 >
                                        <label>新科技技术</label>
                                        </#if>
                                        <#if coAll.jltfispCoProfile.mainField ==5 >
                                        <label>高技术服务业</label>
                                        </#if>
                                        <#if coAll.jltfispCoProfile.mainField ==6 >
                                        <label>新能源节能技术</label>
                                        </#if>
                                        <#if coAll.jltfispCoProfile.mainField ==7 >
                                        <label>资源环境技术</label>
                                        </#if>
                                        <#if coAll.jltfispCoProfile.mainField ==8 >
                                        <label>高新技术改造传统行业</label>
                                        </#if>
                                    </td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b>企业性质</th>
                                    <td>
                                        <#if coAll.jltfispCoProfile.nature ==1 >
                                    	<label>私营企业</label>
                                    	</#if>
                                    	<#if coAll.jltfispCoProfile.nature ==2 >
                                        <label>中外合资企业</label>
                                        </#if>
                                        <#if coAll.jltfispCoProfile.nature ==3 >
                                        <label>国有企业</label>
                                        </#if>
                                        <#if coAll.jltfispCoProfile.nature ==4 >
                                        <label>集体企业</label>
                                        </#if>
                                        <#if coAll.jltfispCoProfile.otherNature !='' >
                                        <label>${coAll.jltfispCoProfile.otherNature}</label>
                                        </#if>
                                    </td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b>职工总数</th>
                                    <td>
                                    	${coAll.jltfispCoProfile.workforce}人
                                        <span style="margin-left:30px;">其中：大专以上人数：</span>${coAll.jltfispCoProfile.collegeDegreeOrAboveNum}人<span style="margin-left:30px;">研发人员：</span>${coAll.jltfispCoProfile.researchStaffNum}人<br />
                                    </td>
                                </tr>
                            </table>
                            <p class="ntit">知识产权授权和科技认定状况</p>
                            <table width="100%" class="tab3">
                            	<tr>
                                    <th>已获得知识产权总数</th>
                                    <td colspan="3">${coAll.jltfispCoProfile.intellectualPropertyNum}个</td>
                                </tr>
                                <tr>
                                    <th>发明专利</th>
                                    <td>${coAll.jltfispCoProfile.patentOfInventionNum}个</td>
                                    <th>实用新型专利</th>
                                    <td>${coAll.jltfispCoProfile.utilityModelPatentNum}个</td>
                                </tr>
                                <tr>
                                    <th>软件著作权</th>
                                    <td>${coAll.jltfispCoProfile.softwareCopyrightNum}个</td>
                                    <th>集成电路设计板块</th>
                                    <td>${coAll.jltfispCoProfile.integratedCircuitDesignNum}个</td>
                                </tr>
                                <tr>
                                    <th>企业曾获得科技认定<br/>或资助情况</th>
                                    <td colspan="3">
                                    	<label><span id="technologyOrFinance"><span></label>
                                    </td>
                                </tr>
                            </table>
                            <p class="ntit">企业情况概述</p>
                            <table width="100%" class="tab3">
                            	<tr>
                                    <th><b class="red">*</b>企业简介</th>
                                    <td>${coAll.jltfispCoProfile.institutionalAbstract}${coAll.jltfispCoProfile.institutionalAbstract}</td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b>管理团队简介(主要经<br/>营、管理、技术人员背景)</th>
                                    <td>${coAll.jltfispCoProfile.managementTeamProfile}</td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b>主营产品简介(产品特点、销售市场、<br/>主要客户等)</th>
                                    <td>${coAll.jltfispCoProfile.mainProductIntroduction}</td>
                                </tr>
                            </table>
                          </div>