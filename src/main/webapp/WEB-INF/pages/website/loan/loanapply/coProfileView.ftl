
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
                                      <td>${coAll.jltfispCoBase.establishTime?date}</td>
                                      <th><b class="red">*</b>注册资本</th>
                                      <td>${coAll.jltfispCoBase.registeredCapital}万元</td>
                                  </tr>
                                  <tr>
                                      <th><b class="red">*</b>注册地址</th>
                                      <td colspan="3">${coAll.jltfispCoBase.registeredCapital}</td>
                                  </tr>
                                  <tr>
                                      <th><b class="red">*</b>办公地址</th>
                                      <td colspan="3">${coAll.jltfispCoBase.officeProv}${coAll.jltfispCoBase.officeCity}${coAll.jltfispCoBase.officeArea}${coAll.jltfispCoBase.officeAddress}</td>
                                  </tr>
                                  <tr>
                                      <th><b class="red">*</b>生产地址</th>
                                      <td colspan="3">${coAll.jltfispCoBase.productProv}${coAll.jltfispCoBase.productCity}${coAll.jltfispCoBase.productArea}${coAll.jltfispCoBase.productAddress}</td>
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
                          </div>