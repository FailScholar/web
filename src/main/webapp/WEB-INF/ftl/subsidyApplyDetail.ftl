<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">    
<html xmlns="http://www.w3.org/1999/xhtml"> 
<head>
	
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"></meta>
    <title>保费补贴申请</title>
      <style>  
      @page{size:297mm 330mm;}
     .content { padding:25px -50px; background-color:#fff;word-wrap:break-word;word-break:break-all;}
.bread { background:url(../../resource/images/home.png) 0 0 no-repeat; padding-left:16px; font-family:"宋体"; margin-bottom:14px;}
.bread a { font-size:16px; color:#666; margin:0 10px; font-family:"微软雅黑";}
.bread a:hover { color:#1679ff;}
.calt { padding:0 25px;}
.calt p { line-height:45px; color:#666; font-size:16px; border-bottom:1px solid #ddd; overflow:hidden;}
.calt p.note { line-height:29px; font-size:14px; border-bottom:none;}
.calt h2 { text-align:center; margin:40px auto; position:relative;}
.calt h2 a { padding:6px 12px; color:#1679ff; position:absolute; right:0; border:1px dashed #1679ff; border-radius:3px; top:-44px;}
.calt h2 a:hover { color:#0147a6; border-color:#0147a6;}
.nlist { overflow:hidden; padding-left:1px; border-bottom:1px solid #ccc; position:absolute; top:0; left:0; background-color:#fff; z-index:10;}
.nlist li { float:left; width:124px; text-align:center; height:40px; line-height:40px; border:1px solid #ccc; margin-left:-1px; border-bottom:none; cursor:pointer;}
.nlist li.active,.nlist li:hover { background-color:#1679ff; color:#fff; border-color:#1679ff;}
.nlistCont { border:1px solid #ccc; margin-top:-1px;}
.nlistCont .ntit { text-align:left; margin:10px 0 0 0; font-size:14px; color:#333; text-indent:0; width:auto;}
.tab2 { border-collapse:collapse; width:10%; margin:10px auto; letter-spacing:0.5;}
.tab2 th,.tab2 td { border:1px solid #d2d2d2; height:32px; font-size:13px; line-height:18px; padding:0 6px; text-align:center; color:#5e5e5e;width:129px;}
.tab2 th { font-weight:600;}
.tal th { text-align:right;}
.tal td { text-align:left;width:129px;}
.clearfix { height:134px;}
  </style>  
</head>

<body  style='font-family:SimSun;'>
            <div class="content">
                <div class="calt">
                    <p>保费补贴申请</p>
                    <div class="clear"></div>
      <div class="nlistCont" id="printDiv" style="word-wrap:break-word;word-break:break-all;">
          <p class="ntit" style="text-align:center">申请信息预览</p>
          <table class="tab2" style="width:95%">
              <tbody>
              <tr class="tal">
                  <th>${loanformManage.baseCompany}</th>
                  <td colspan="5">${jltfispCoBaseDto.company!''}</td>
                  <th>${loanformManage.baseSocialcreditcode}</th>
                  <td colspan="3">${jltfispCoBaseDto.socialCreditCode!''}</td>
              </tr>
              <tr class="tal">
                  <th>${loanformManage.baseOfficeaddress}</th>
                  <td colspan="5">${jltfispCoBaseDto.officeAddress!''}</td>
                  <th>${loanformManage.baseRegisteredaddress}</th>
                  <td colspan="3">${jltfispCoBaseDto.registeredAddress!''}</td>
              </tr>
              <tr class="tal">
                  <th>${loanformManage.baseAccountbank}</th>
                  <td colspan="2">${jltfispCoBaseDto.loanBankName!'' }</td>
                  <th>${loanformManage.baseCardno}</th>
                  <td colspan="2">${jltfispCoBaseDto.cardNo!''}</td>
                  <th>${loanformManage.baseRegisteredcapital}</th>
                  <td colspan="3">${jltfispCoBaseDto.registeredCapital!''}</td>
              </tr>
              <tr class="tal">
                  <th>基本户开户行</th>
                  <td colspan="2">${jltfispCoBaseDto.basicAccountBank!''}</td>
                  <th>基本户户口</th>
                  <td colspan="2">${jltfispCoBaseDto.basicAccountName!'' }</td>
                  <th>银行账号</th>
                  <td colspan="3">${jltfispCoBaseDto.basicAccountCard!'' }</td>
              </tr>
              <tr class="tal">
                  <th>${loanformManage.baseLinkman}</th>
                  <td colspan="2">${jltfispCoBaseDto.linkMan!''}</td>
                  <th>${loanformManage.baseLinkmobile}</th>
                  <td colspan="2">${jltfispCoBaseDto.mobilephone!''}</td>
                  <th>${loanformManage.baseLinkemail}</th>
                  <td colspan="3">${jltfispCoBaseDto.email!''}</td>
              </tr>
              <tr>
                  <th colspan="10">申请保费补贴信息</th>
              </tr>
              <tr>
                  <th>${loanformManage.infoContractNumber}</th>
                  <th>${loanformManage.infoPolicyNumber}</th>
                  <th>${loanformManage.infoPremiumMoney}</th>
                  <th>${loanformManage.infoLoanBank}</th>
                  <th>${loanformManage.infoInsuranceCompany}</th>
                  <th>${loanformManage.infoLendDate}</th>
                  <th>${loanformManage.infoRepaymentDate}</th>
                  <th>${loanformManage.infoPrincipalInterest}</th>
                  <th>${loanformManage.infoLoanTerm}</th>
                  <th>${loanformManage.infoLoanMoney}</th>
              </tr>
              <#list jltfispPsInfoList as psInfoList>
                <tr>
                  <td>${psInfoList.contractNumber!''}</td>
                  <td>${psInfoList.policyNumber!''}</td>
                  <td>${psInfoList.premiumMoney!''}</td>
                  <td>${psInfoList.loanBank!''}</td>
                  <td>${psInfoList.insuranceCompany!''}</td>
                  <td>${psInfoList.lendDate!''}</td>
                  <td>${psInfoList.repaymentDate!''}</td>
                  <td>${psInfoList.principalInterest!''}</td>
                  <td>${psInfoList.loanTerm!''}</td>
                  <td>${psInfoList.loanMoney!''}</td>
              </tr>
              </#list>
              <tr>
                  <th colspan="10">企业在贷款年度取得的业绩</th>
              </tr>
              <tr>
                  <th colspan="10">1、主要经济指标（单位：万元）</th>
              </tr>
              <tr>
                  <th>${loanformManage.psMaterialEconomicTime}</th>
                  <th>${loanformManage.psMaterialGross}</th>
                  <th>${loanformManage.psMaterialGrossIncrease}</th>
                  <th>${loanformManage.psMaterialInvestment}</th>
                  <th>${loanformManage.psMaterialInvestmentIncrease}</th>
                  <th colspan="2">${loanformManage.psMaterialProfit}</th>
                  <th>${loanformManage.psMaterialProfitIncrease}</th>
                  <th colspan="2">${loanformManage.psMaterialTaxes}</th>
              </tr>
              <tr>
                  <th>${loanformManage.psMaterialLastYear}</th>
                  <td>${jltfispPsMaterialInfo.grossedLast!''}</td>
                  <td>${jltfispPsMaterialInfo.increaseGrossedLast!''}</td>
                  <td>${jltfispPsMaterialInfo.investmentLast!''}</td>
                  <td>${jltfispPsMaterialInfo.increaseInvestmentLast!''}</td>
                  <td colspan="2">${jltfispPsMaterialInfo.profitLast!''}</td>
                  <td>${jltfispPsMaterialInfo.increaseProfitLast!''}</td>
                  <td colspan="2">${jltfispPsMaterialInfo.taxesLast!''}</td>
              </tr>
              <tr>
                  <th>${loanformManage.psMaterialCurrentYear}</th>
                  <td>${jltfispPsMaterialInfo.grossedThis!''}</td>
                  <td>${jltfispPsMaterialInfo.increaseGrossedThis!''}</td>
                  <td>${jltfispPsMaterialInfo.investmentThis!''}</td>
                  <td>${jltfispPsMaterialInfo.increaseInvestmentThis!''}</td>
                  <td colspan="2">${jltfispPsMaterialInfo.profitThis!''}</td>
                  <td>${jltfispPsMaterialInfo.increaseProfitThis!''}</td>
                  <td colspan="2">${jltfispPsMaterialInfo.taxesThis!''}</td>
              </tr>
              <tr>
                  <th colspan="10">2、知识产权（单位：项）</th>
              </tr>
              <tr>
                 <th rowspan="2">${loanformManage.psMaterialIntellectualTime}</th>
                  <th colspan="3">专利情况（已授权）</th>
                  <th rowspan="2">${loanformManage.psMaterialIc}</th>
                  <th rowspan="2">${loanformManage.psMaterialSoftware}</th>
                  <th rowspan="2">${loanformManage.psMaterialSoftwares}</th>
                  <th rowspan="2">其他（请说明）</th>
                  <th colspan="2" rowspan="2">${loanformManage.psMaterialKnowledge}</th>
              </tr>
              <tr>
                  <th width="10%">${loanformManage.psMaterialInvention}</th>
                  <th width="10%">${loanformManage.psMaterialUtilitarian}</th>
                  <th width="10%">${loanformManage.psMaterialAppearance}</th>
              </tr>
              <tr>
                  <th>${loanformManage.psMaterialIntellectualLast}</th>
                  <td>${jltfispPsMaterialInfo.inventionLast!''}</td>
                  <td>${jltfispPsMaterialInfo.utilitarianLast!''}</td>
                  <td>${jltfispPsMaterialInfo.appearanceLast!''}</td>
                  <td>${jltfispPsMaterialInfo.icLast!''}</td>
                  <td>${jltfispPsMaterialInfo.softwareLast!''}</td>
                  <td>${jltfispPsMaterialInfo.softwaresLast!''}</td>
                  <td></td>
                  <td colspan="2">${jltfispPsMaterialInfo.knowledgeLast!''}</td>
              </tr>
              <tr>
                  <th>${loanformManage.psMaterialIntellectualCurrent}</th>
                  <td>${jltfispPsMaterialInfo.inventionThis!''}</td>
                  <td>${jltfispPsMaterialInfo.utilitarianThis!''}</td>
                  <td>${jltfispPsMaterialInfo.appearanceThis!''}</td>
                  <td>${jltfispPsMaterialInfo.icThis!''}</td>
                  <td>${jltfispPsMaterialInfo.softwareThis!''}</td>
                  <td>${jltfispPsMaterialInfo.softwaresThis!''}</td>
                  <td></td>
                  <td colspan="2">${jltfispPsMaterialInfo.knowledgeThis!''}</td>
              </tr>
              <tr>
                  <th colspan="10">3、获得荣誉、奖项等情况</th>
              </tr>
              <tr>
                  <th colspan="4">${loanformManage.psMaterialCognizance}</th>
                  <th colspan="6">${loanformManage.psMaterialMeta}</th>
              </tr>
              <tr>
                  <td colspan="4">
                  	<#if (jltfispPsMaterialInfo??&&jltfispPsMaterialInfo.cognizance??)>
                  		<#if (jltfispPsMaterialInfo.cognizance==1)>
                  			私营企业
                  		<#elseif (jltfispPsMaterialInfo.cognizance==2)>
                  			中外合资企业
                  		<#elseif (jltfispPsMaterialInfo.cognizance==3)>
                  			国有企业
                  		<#elseif (jltfispPsMaterialInfo.cognizance==5)>
                  			其它
                  		<#else>
                  			集体企业
                  		</#if>
                  	</#if>
                  </td>
                  <td colspan="6">${jltfispPsMaterialInfo.meta!''}</td>
              </tr>
              <tr>
                  <th colspan="10">申请单位承诺</th>
              </tr>
              <tr class="tal">
                  <td colspan="10">以上信息全部真实有效</td>
              </tr>
               <tr class="tal" style="height:100px;">
                  <td colspan="3">单位（公章）</td>
                  <td colspan="3">法定代表人（签名盖章）</td>
                  <td colspan="4">企业基本户三排章</td>
               </tr>
              </tbody>
          </table>
      </div>
                </div>
            </div>
</body>
</html>