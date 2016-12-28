<#setting date_format="yyyy-MM-dd">
                          <!--企业基本情况-->
                          <div class="nlistCont" style="display:none;">
                              <p class="ntit">企业基本信息</p>
                              <table width="100%" class="tab3">
                                  <tr>
                                      <th><b class="red">*</b>${loanformManage.baseCompany}</th>
                                      <td colspan="3">${coAll.jltfispCoBase.company}</td>
                                  </tr>
                                  <tr>
                                      <th><b class="red">*</b>${loanformManage.baseEstablishtime}</th>
                                      <td><#if (coAll.jltfispCoBase.establishTime?exists)>${coAll.jltfispCoBase.establishTime?date}</#if></td>
                                      <th><b class="red">*</b>${loanformManage.baseRegisteredcapital}</th>
                                      <td>${coAll.jltfispCoBase.registeredCapital}万元</td>
                                  </tr>
                                  <tr>
                                      <th><b class="red">*</b>${loanformManage.baseRegisteredaddress}</th>
                                      <td colspan="3">${coAll.jltfispCoBase.registeredAddress}</td>
                                  </tr>
                                  <tr>
                                      <th><b class="red">*</b>${loanformManage.baseOfficeaddress}</th>
                                      <td colspan="3"><span id="officeAddress"></span></td>
                                  </tr>
                                  <tr>
                                      <th><b class="red">*</b>${loanformManage.baseProductaddress}</th>
                                      <td colspan="3"><span id="productAddress"></span></td>
                                  </tr>
                                  <tr>
                                      <th><b class="red">*</b>${loanformManage.baseCorporaterepresentative}</th>
                                      <td>${coAll.jltfispCoBase.corporateRepresentative}</td>
                                      <th><b class="red">*</b>${loanformManage.baseMobilephone}</th>
                                      <td>${coAll.jltfispCoBase.mobilephone}</td>
                                  </tr>
                                  <tr>
                                      <th><b class="red">*</b>${loanformManage.baseEmail}</th>
                                      <td>${coAll.jltfispCoBase.email}</td>
                                      <th><b class="red">*</b>${loanformManage.baseIdcard}</th>
                                      <td>${coAll.jltfispCoBase.IDcard}</td>
                                  </tr>
                                  <tr>
                                      <th><b class="red">*</b>${loanformManage.baseSocialcreditcode}</th>
                                      <td>${coAll.jltfispCoBase.socialCreditCode}</td>
                                      <th><b class="red">*</b>${loanformManage.baseCnpj}</th>
                                      <td>${coAll.jltfispCoBase.cnpj}</td>
                                  </tr>
                                  <tr>
                                      <th>${loanformManage.baseCardno}</th>
                                      <td colspan="3">${coAll.jltfispCoBase.cardNo}</td>
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
                                      <td>${coAll.jltfispCoBase.basicAccountBank}</td>
                                      <td>${coAll.jltfispCoBase.basicAccountCard}</td>
                                  </tr>
                                  <tr>
                                      <td><b>${loanformManage.baseGeneralaccount}</b></td>
                                      <td>${coAll.jltfispCoBase.generalAccountBank}</td>
                                      <td>${coAll.jltfispCoBase.generalAccountCard}</td>
                                  </tr>
                              </table>
                              <p class="ntit">企业联系人</p>
                              <table width="100%" class="tab3">
                                  <tr>
                                      <th><b class="red">*</b>${loanformManage.baseLinkman}</th>
                                      <td colspan="3">${coAll.jltfispCoBase.linkMan}</td>
                                  </tr>
                                  <tr>
                                      <th><b class="red">*</b>${loanformManage.baseDuties}</th>
                                      <td>${coAll.jltfispCoBase.duties}</td>
                                      <th><b class="red">*</b>${loanformManage.baseLinkmobile}</th>
                                      <td>${coAll.jltfispCoBase.linkMobile}</td>
                                  </tr>
                                  <tr>
                                      <th><b class="red">*</b>${loanformManage.basePhoneorfax}</th>
                                      <td>${coAll.jltfispCoBase.zoneDescription}-${coAll.jltfispCoBase.phoneOrFax}</td>
                                      <th><b class="red">*</b>${loanformManage.baseLinkemail}</th>
                                      <td>${coAll.jltfispCoBase.linkEmail}</td>
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
                                      <td>${coAll.jltfispCoBase.oneShareholderName}</td>
                                      <td>${coAll.jltfispCoBase.oneStock}%</td>
                                  </tr>
                                  <tr>
                                      <td>${loanformManage.baseTwoshareholder}</td>
                                      <td>${coAll.jltfispCoBase.twoShareholderName}</td>
                                      <td>
                                      <#if coAll.jltfispCoBase.twoStock?exists>
                                      ${coAll.jltfispCoBase.twoStock}%
                                      </#if>
                                      </td>
                                  </tr>
                                  <tr>
                                      <td>${loanformManage.baseThreeshareholer}</td>
                                      <td>${coAll.jltfispCoBase.threeShareholerName}</td>
                                      <td>
                                      <#if coAll.jltfispCoBase.threeStock?exists>
                                      ${coAll.jltfispCoBase.threeStock}%
                                      </#if>
                                      </td>
                                  </tr>
                              </table>
                              <p class="ntit">企业概况</p>
                              <table width="100%" class="tab3">
                            	<tr>
                                    <th><b class="red">*</b>${loanformManage.profileMainbusiness}</th>
                                    <td><div style="width:900px;word-wrap:break-word;word-break:normal;">${coAll.jltfispCoProfile.mainBusiness}</div></td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b>${loanformManage.profileSidelinebusses}</th>
                                    <td><div style="width:900px;word-wrap:break-word;word-break:normal;">${coAll.jltfispCoProfile.sidelineBusses}</div></td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b>${loanformManage.profileMainfield}</th>
                                    <td>
                                      <#list dicList as dic>
                                      <#if coAll.jltfispCoProfile.mainField ==dic.code >
                                      <label>${dic.value}</label>
                                      </#if>
                                      </#list>
                                    </td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b>${loanformManage.profileNature}</th>
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
                                        <#if coAll.jltfispCoProfile.nature ==5 >
                                        <label>其他</label>
                                        </#if>
                                    </td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b>${loanformManage.profileWorkforce}</th>
                                    <td>
                                    	${coAll.jltfispCoProfile.workforce}人
                                        <span style="margin-left:30px;">其中：大专以上人数：</span>${coAll.jltfispCoProfile.collegeDegreeOrAboveNum}人<span style="margin-left:30px;">研发人员：</span>${coAll.jltfispCoProfile.researchStaffNum}人<br />
                                    </td>
                                </tr>
                            </table>
                            <p class="ntit">知识产权授权和科技认定状况</p>
                            <table width="100%" class="tab3">
                            	<tr>
                                    <th>${loanformManage.profileIntellectualpropertynum}</th>
                                    <td colspan="3">
                                    <#if coAll.jltfispCoProfile.intellectualPropertyNum?exists>
                                    ${coAll.jltfispCoProfile.intellectualPropertyNum}个
                                    </#if>
                                    </td>
                                </tr>
                                <tr>
                                    <th>${loanformManage.profilePatentofinventionnum}</th>
                                    <td>
                                    <#if coAll.jltfispCoProfile.patentOfInventionNum?exists>
                                    ${coAll.jltfispCoProfile.patentOfInventionNum}个
                                    </#if>
                                    </td>
                                    <th>${loanformManage.profileUtilitymodelpatentnum}</th>
                                    <td>
                                    <#if coAll.jltfispCoProfile.utilityModelPatentNum?exists>
                                    ${coAll.jltfispCoProfile.utilityModelPatentNum}个
                                    </#if>
                                    </td>
                                </tr>
                                <tr>
                                    <th>${loanformManage.profileSoftwarecopyrightnum}</th>
                                    <td>
                                    <#if coAll.jltfispCoProfile.softwareCopyrightNum?exists>
                                    ${coAll.jltfispCoProfile.softwareCopyrightNum}个
                                    </#if>
                                    </td>
                                    <th>${loanformManage.profileIntegratedcircuitdesignnum}</th>
                                    <td>
                                    <#if coAll.jltfispCoProfile.integratedCircuitDesignNum?exists>
                                    ${coAll.jltfispCoProfile.integratedCircuitDesignNum}个
                                    </#if>
                                    </td>
                                </tr>
                                <tr>
                                    <th>${loanformManage.profileTechnologyorfinance}</th>
                                    <td colspan="3">
                                    	<label><span id="technologyOrFinance"><span></label>
                                    </td>
                                </tr>
                            </table>
                            <p class="ntit">企业情况概述</p>
                            <table width="100%" class="tab3">
                            	<tr>
                                    <th><b class="red">*</b>${loanformManage.profileInstitutionalabstract}</th>
                                    <td><div style="width:900px;word-wrap:break-word;word-break:normal;">${coAll.jltfispCoProfile.institutionalAbstract}${coAll.jltfispCoProfile.institutionalAbstract}</div></td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b>${loanformManage.profileManagementteamprofile}</th>
                                    <td><div style="width:900px;word-wrap:break-word;word-break:normal;">${coAll.jltfispCoProfile.managementTeamProfile}</div></td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b>${loanformManage.profileMainproductintroduction}</th>
                                    <td><div style="width:900px;word-wrap:break-word;word-break:normal;">${coAll.jltfispCoProfile.mainProductIntroduction}</div></td>
                                </tr>
                            </table>
                          </div>