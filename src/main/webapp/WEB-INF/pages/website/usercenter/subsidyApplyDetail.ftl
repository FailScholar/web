<#assign path=request.contextPath />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="content-type" content="text/html;charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="renderer" content="webkit">
<#include "website/common/common.ftl" />
    <title>保费补贴申请</title>
</head>

<body>
<#include "website/common/header.ftl"/>
            <!--content开始-->
            <div class="content">
                <div class="bread">
                    <a href="${path}/index">首页</a>&gt;<a href="${path}/loan/onlineApply?applytype=5">保费补贴</a>&gt;<a href="javascript:;">在线查看</a>
                </div>
                <div class="calt">
                    <p>保费补贴申请</p>
                    <div class="clear"></div>
                        <#assign path=request.contextPath />
      <!--完成-->
      <div class="nlistCont" id="printDiv" style="word-wrap:break-word;word-break:break-all;">
          <p class="ntit">申请信息一览</p>
          <table class="tab2" style="width:100%">
              <tbody>
              <tr class="tal">
                  <th style="width:100px;">企业名称</th>
                  <td colspan="5">${jltfispCoBaseDto.company }</td>
                  <th style="width:100px;">组织机构代码</th>
                  <td colspan="3">${jltfispCoBaseDto.socialCreditCode}</td>
              </tr>
              <tr class="tal">
                  <th>经营地址</th>
                  <td colspan="5">${ jltfispCoBaseDto.officeProv}${jltfispCoBaseDto.officeCity }${ jltfispCoBaseDto.officeArea}${jltfispCoBaseDto.officeAddress }</td>
                  <th>注册地址</th>
                  <td colspan="3">${jltfispCoBaseDto.registeredAddress }</td>
              </tr>
              <tr class="tal">
                  <th>贷款银行</th>
                  <td colspan="2">${jltfispCoBaseDto.loanBankName }</td>
                  <th>贷款账户</th>
                  <td colspan="2">${jltfispCoBaseDto.cardNo}</td>
                  <th>注册资金</th>
                  <td colspan="3">${jltfispCoBaseDto.registeredCapital}</td>
              </tr>
              <tr class="tal">
                  <th>基本户开户行</th>
                  <td colspan="2">${jltfispCoBaseDto.basicAccountBank}</td>
                  <th>基本户户口</th>
                  <td colspan="2">${jltfispCoBaseDto.basicAccountName }</td>
                  <th>银行账号</th>
                  <td colspan="3">${jltfispCoBaseDto.basicAccountCard }</td>
              </tr>
              <tr class="tal">
                  <th>联系人</th>
                  <td colspan="2">${jltfispCoBaseDto.linkMan}</td>
                  <th>手机</th>
                  <td colspan="2">${jltfispCoBaseDto.mobilephone }</td>
                  <th>Email</th>
                  <td colspan="3">${jltfispCoBaseDto.email }</td>
              </tr>
              <tr>
                  <th colspan="10">申请保费补贴信息</th>
              </tr>
              <tr>
                  <th>借款信息</th>
                  <th>保款单</th>
                  <th>贷款金额</th>
                  <th>贷款银行</th>
                  <th>保险/担保公司</th>
                  <th>实际放贷日</th>
                  <th>实际还款日</th>
                  <th>实际支付本息<br/>(本金+利息)</th>
                  <th>贷款期限</th>
                  <th>实际支付保费<br/>(金额/元)</th>
              </tr>
              <#list jltfispPsInfoList as psInfoList>
                <tr>
                  <td>${psInfoList.contractNumber }</td>
                  <td>${psInfoList.policyNumber}</td>
                  <td>${psInfoList.premiumMoney}</td>
                  <td>${psInfoList.loanBank}</td>
                  <td>${psInfoList.insuranceCompany}</td>
                  <td>${psInfoList.lendDate}</td>
                  <td>${psInfoList.repaymentDate}</td>
                  <td>${psInfoList.principalInterest}</td>
                  <td>${psInfoList.loanTerm}</td>
                  <td>${psInfoList.loanMoney}</td>
              </tr>
              </#list>
              <tr>
                  <th colspan="10">企业在贷款年度取得的业绩</th>
              </tr>
              <tr>
                  <th colspan="10">1、主要经济指标（单位：万元）</th>
              </tr>
              <tr>
                  <th>时间</th>
                  <th>总收入</th>
                  <th>比上年度增长%</th>
                  <th>研发投入</th>
                  <th>比上年度增长%</th>
                  <th colspan="2">利润</th>
                  <th>比上年度增长%</th>
                  <th colspan="2">纳税总额</th>
              </tr>
              <tr>
                  <th>贷款上一年度</th>
                  <td>${jltfispPsMaterialInfo.grossedLast }</td>
                  <td>${jltfispPsMaterialInfo.increaseGrossedLast}</td>
                  <td>${jltfispPsMaterialInfo.investmentLast}</td>
                  <td>${jltfispPsMaterialInfo.increaseInvestmentLast}</td>
                  <td colspan="2">${jltfispPsMaterialInfo.profitLast}</td>
                  <td>${jltfispPsMaterialInfo.increaseProfitLast}</td>
                  <td colspan="2">${jltfispPsMaterialInfo.taxesLast}</td>
              </tr>
              <tr>
                  <th>贷款当年</th>
                  <td>${jltfispPsMaterialInfo.grossedThis}</td>
                  <td>${jltfispPsMaterialInfo.increaseGrossedThis}</td>
                  <td>${jltfispPsMaterialInfo.investmentThis}</td>
                  <td>${jltfispPsMaterialInfo.increaseInvestmentThis}</td>
                  <td colspan="2">${jltfispPsMaterialInfo.profitThis}</td>
                  <td>${jltfispPsMaterialInfo.increaseProfitThis}</td>
                  <td colspan="2">${jltfispPsMaterialInfo.taxesThis}</td>
              </tr>
              <tr>
                  <th colspan="10">2、知识产权（单位：项）</th>
              </tr>
              <tr>
                  <th rowspan="2">时间</th>
                  <th colspan="3">专利情况（已授权）</th>
                  <th rowspan="2">集成电路图设计</th>
                  <th rowspan="2">软件著作权</th>
                  <th rowspan="2">软件组著作权</th>
                  <th rowspan="2">其他（请说明）</th>
                  <th colspan="2" rowspan="2">新增知识权总计</th>
              </tr>
              <tr>
                  <th width="10%">发明</th>
                  <th width="10%">实用新型</th>
                  <th width="10%">外观设计</th>
              </tr>
              <tr>
                  <th>贷款上一年度</th>
                  <td>${jltfispPsMaterialInfo.inventionLast}</td>
                  <td>${jltfispPsMaterialInfo.utilitarianLast}</td>
                  <td>${jltfispPsMaterialInfo.appearanceLast}</td>
                  <td>${jltfispPsMaterialInfo.icLast}</td>
                  <td>${jltfispPsMaterialInfo.softwareLast}</td>
                  <td>${jltfispPsMaterialInfo.softwaresLast}<td>
                  <td colspan="2">${jltfispPsMaterialInfo.knowledgeLast}</td>
              </tr>
              <tr>
                  <th>贷款当年</th>
                  <td>${jltfispPsMaterialInfo.inventionThis}</td>
                  <td>${jltfispPsMaterialInfo.utilitarianThis}</td>
                  <td>${jltfispPsMaterialInfo.appearanceThis}</td>
                  <td>${jltfispPsMaterialInfo.icThis}</td>
                  <td>${jltfispPsMaterialInfo.softwareThis}</td>
                  <td>${jltfispPsMaterialInfo.softwaresThis}<td>
                  <td colspan="2">${jltfispPsMaterialInfo.knowledgeThis}</td>
              </tr>
              <tr>
                  <th colspan="10">3、获得荣誉、奖项等情况</th>
              </tr>
              <tr>
                  <th colspan="4">贷款期间新获企业资质和各种认定</th>
                  <th colspan="6">新获政府项目资助情况名称和资助金额</th>
              </tr>
              <tr>
                  <td colspan="4">
                  	 <#if jltfispPsMaterialInfo.cognizance==1>
                                              私营企业
                  <#elseif jltfispPsMaterialInfo.cognizance==2 >
                                             中外合资企业
                  <#elseif jltfispPsMaterialInfo.cognizance==3 >
                                               国有企业
                  <#elseif jltfispPsMaterialInfo.cognizance==4>
                                                集体企业
                  <#elseif jltfispPsMaterialInfo.cognizance==5>
                                               其他
                  </#if>
                  </td>
                  <td colspan="6">${jltfispPsMaterialInfo.meta}</td>
              </tr>
              <tr>
                  <th colspan="10">申请单位承诺</th>
              </tr>
              <tr class="tal">
                  <td colspan="10">以上信息全部真实有效</td>
              </tr>
               <tr class="tal">
                  <td colspan="3">单位（公章）</td>
                  <td colspan="3">法定代表人（签名盖章）</td>
                  <td colspan="4">企业基本户三排章</td>
              </tr>
              <#list applayAudits as applayAudit>
	              	<#if (applayAudit.state == 1)>
		              	<tr>
		              		<td>审核意见</td>
		              		<td colspan="9">审核通过，${applayAudit.auditDesc!''}</td>
		              	</tr>
	              	</#if>
              </#list>
              </tbody>
          </table>
          <div class="btnFld">
              <input type="button" class="btnSave" value="打印输出" onclick="printdiv('${infoId}')"/>
          </div>
      </div>
                      <!--完成-->
                      <div id="finishApplyForm" class="proList nli" style="padding-top:0; display:none;"> </div>
                </div>
            </div>
            <!--content结束-->

</div>
</div>

<div class="clear"></div>
<div class="clearfix"></div>
</div>
<#include "website/common/footer.ftl" />
</body>
</html>
<script type="application/javascript">
    positionNavigation(0);
    function printdiv(infoId) {
        location.href = "${path}/business/printSubsidyPDF?businessType=5&infoId=" + infoId
    }
</script>