<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">    
<html xmlns="http://www.w3.org/1999/xhtml"> 
<head>
	
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"></meta>
    <title>保费补贴申请</title>
      <style>  
      @page{size:297mm 330mm;}
     .content { padding:25px -50px; background-color:#fff;}
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
.tab2 th,.tab2 td { border:1px solid #d2d2d2; height:32px; font-size:13px; line-height:18px; padding:0 6px; text-align:center; color:#5e5e5e;}
.tab2 th { font-weight:600;}
.tal th { text-align:right;}
.tal td { text-align:left;}
.clearfix { height:134px;}
  </style>  
</head>

<body  style='font-family:SimSun;'>
            <div class="content">
                <div class="calt">
                    <p>保费补贴申请</p>
                    <div class="clear"></div>
      <div class="nlistCont" id="printDiv">
          <p class="ntit">申请信息一览</p>
          <table class="tab2" style="width:80%">
              <tbody>
              <tr class="tal">
                  <th>企业名称</th>
                  <td colspan="5">${jltfispCoBaseDto.company!''}</td>
                  <th>组织机构代码</th>
                  <td colspan="3">${jltfispCoBaseDto.socialCreditCode!''}</td>
              </tr>
              <tr class="tal">
                  <th>经营地址</th>
                  <td colspan="5">${ jltfispCoBaseDto.officeProv}${jltfispCoBaseDto.officeCity }${ jltfispCoBaseDto.officeArea}${jltfispCoBaseDto.officeAddress }</td>
                  <th>注册地址</th>
                  <td colspan="3">${jltfispCoBaseDto.registeredAddress!''}</td>
              </tr>
              <tr class="tal">
                  <th>贷款银行</th>
                  <td colspan="2">${jltfispCoBaseDto.loanBankName!'' }</td>
                  <th>贷款账户</th>
                  <td colspan="2">${jltfispCoBaseDto.cardNo!''}</td>
                  <th>注册资金</th>
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
                  <th>联系人</th>
                  <td colspan="2">${jltfispCoBaseDto.linkMan!''}</td>
                  <th>手机</th>
                  <td colspan="2">${jltfispCoBaseDto.linkMobile!''}</td>
                  <th>Email</th>
                  <td colspan="3">${jltfispCoBaseDto.email!''}</td>
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
                  <td>${jltfispPsMaterialInfo.grossedLast!''}</td>
                  <td>${jltfispPsMaterialInfo.increaseGrossedLast!''}</td>
                  <td>${jltfispPsMaterialInfo.investmentLast!''}</td>
                  <td>${jltfispPsMaterialInfo.increaseInvestmentLast!''}</td>
                  <td colspan="2">${jltfispPsMaterialInfo.profitLast!''}</td>
                  <td>${jltfispPsMaterialInfo.increaseProfitLast!''}</td>
                  <td colspan="2">${jltfispPsMaterialInfo.taxesLast!''}</td>
              </tr>
              <tr>
                  <th>贷款当年</th>
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
                  <td>${jltfispPsMaterialInfo.inventionLast!''}</td>
                  <td>${jltfispPsMaterialInfo.utilitarianLast!''}</td>
                  <td>${jltfispPsMaterialInfo.appearanceLast!''}</td>
                  <td>${jltfispPsMaterialInfo.icLast!''}</td>
                  <td>${jltfispPsMaterialInfo.softwareLast!''}</td>
                  <td>${jltfispPsMaterialInfo.softwaresLast!''}</td>
                  <td colspan="2">${jltfispPsMaterialInfo.knowledgeLast!''}</td>
              </tr>
              <tr>
                  <th>贷款当年</th>
                  <td>${jltfispPsMaterialInfo.inventionThis!''}</td>
                  <td>${jltfispPsMaterialInfo.utilitarianThis!''}</td>
                  <td>${jltfispPsMaterialInfo.appearanceThis!''}</td>
                  <td>${jltfispPsMaterialInfo.icThis!''}</td>
                  <td>${jltfispPsMaterialInfo.softwareThis!''}</td>
                  <td>${jltfispPsMaterialInfo.softwaresThis!''}</td>
                  <td colspan="2">${jltfispPsMaterialInfo.knowledgeThis!''}</td>
              </tr>
              <tr>
                  <th colspan="10">3、获得荣誉、奖项等情况</th>
              </tr>
              <tr>
                  <th colspan="4">贷款期间新获企业资质和各种认定</th>
                  <th colspan="6">新获政府项目资助情况名称和资助金额</th>
              </tr>
              <tr>
                  <td colspan="4">${jltfispPsMaterialInfo.cognizanceValue!''}</td>
                  <td colspan="6">${jltfispPsMaterialInfo.meta!''}</td>
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
              </tbody>
          </table>
      </div>
                </div>
            </div>
</body>
</html>