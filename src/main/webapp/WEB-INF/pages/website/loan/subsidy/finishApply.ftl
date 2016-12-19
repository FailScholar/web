  <#assign path=request.contextPath />
      <!--完成-->
      <div class="nlistCont">
          <p style="text-align:center" class="ntit">申请信息预览</p>
          <table class="tab2" style="width:100%">
              <tbody>
              <tr class="tal">
                  <th>企业名称</th>
                  <td colspan="5">${jltfispCoBaseDto.company }</td>
                  <th>组织机构代码</th>
                  <td colspan="3">${jltfispCoBaseDto.socialCreditCode}</td>
              </tr>
              <tr class="tal">
                  <th>经营地址</th>
                  <td colspan="5" id="jinyingdizhi"></td>
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
                  <td colspan="10" style="text-align:center;color:#d17d00">以上信息全部真实有效</td>
              </tr>
             <!--  <tr class="tal">
                  <th colspan="3">单位（公章）</th>
                  <th colspan="3">法定代表人（签名盖章）</th>
                  <th colspan="4">企业基本户三排章</th>
              </tr> -->
              <tr>
                  <th colspan="3">单位（公章）</th>
                  <th colspan="3">法定代表人（签名盖章）</th>
                  <th colspan="4">企业基本户三排章</th>
              </tr>
              <tr class="tal">
                  <td colspan="3"></td>
                  <td colspan="3"></td>
                  <td colspan="4">${jltfispCoBaseDto.basicAccountBank}&nbsp;${jltfispCoBaseDto.basicAccountName}&nbsp;${jltfispCoBaseDto.basicAccountCard}</td>
              </tr>
              </tbody>
          </table>
          <div class="logbtn" style="margin-top:30px;">
              <input type="button" class="can" value="返回修改" />
              <input type="button" class="nor" value="确认提交" />
              <input id="dayinshuchu" type="button" class="nor" value="打印输出" />
          </div>
      </div>
<script type="text/javascript">

	//<!--办公地址省份-->
	var officeProv="${jltfispCoBaseDto.officeProv}";
	//<!--办公地址市级-->
	var officeCity="${jltfispCoBaseDto.officeCity}";
	//<!--办公地址区县-->
	var officeArea="${jltfispCoBaseDto.officeArea}";
	//<!--办公详细地址-->
	var officeAddress="${jltfispCoBaseDto.officeAddress}";
 $(document).ready(function(e) {
    //申请页面点击上一步
    $('.proList .logbtn input.por').click(function(){
        $('.progress li').removeClass('active').eq(0).addClass('active');
        $(this).parents('.proList').hide().prev('.proList').show();
    });

  //申请页面点击返回修改
    $('.proList .logbtn input.can').click(function(){
        $('.progress li').removeClass('active').eq(0).addClass('active');
        $(this).parents('.proList').hide().prev('.proList').show();
    });
    
    $('.nlist li').click(function(){
        $(this).addClass('active').siblings().removeClass('active');
        $(this).parent().siblings(".nlistCont").hide().eq($(this).index()).show();
    });

    function autoRisize()
    {
        if($(window).scrollTop()>536)
            $('.nlist').css('top',$(window).scrollTop()-536+"px");
        else
            $('.nlist').css('top',0);
    }

    //固定tab栏
    $(window).scroll(function(){
        autoRisize();
    });
    autoRisize();

    $('.lnav li').click(function(){
        $(this).addClass('active').siblings().removeClass('active');
    });

    //确认提交
    $('.proList:last').find(".nor:first").click(function(){
    	$.ajax({
            type: "POST",
            url: "${path}/loan/finishApply",
            dateType:"json",
            success: function(msg){
                //如果保存成功则返回成功页面
            	window.location.href="${path}/loan/success";
            }
        });
        
    });
    <!--查询办公地址-->
	 $.ajax({
            type: "POST",
            url: "${path}/anon/queryCityName",
            data:{officeProv:officeProv,officeCity:officeCity,officeArea:officeArea},
            dateType:"json",
            success: function(msg){
              $('#jinyingdizhi').html(msg+officeAddress);
             }
        });
 //
  $("#dayinshuchu").click(function(){
	  location.href="${path}/business/printSubsidyPDF?businessType=5&infoId="+'${jltfispCoBaseDto.id}';
  });
 });
</script>