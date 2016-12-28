  <#assign path=request.contextPath />
      <!--完成-->
      <div class="nlistCont" style="word-wrap:break-word;word-break:break-all;">
          <p style="text-align:center" class="ntit">申请信息预览</p>
          <table class="tab2" style="width:100%">
              <tbody>
              <tr class="tal">
                  <th>${loanformManage.baseCompany}</th>
                  <td colspan="5">${jltfispCoBaseDto.company }</td>
                  <th>${loanformManage.baseSocialcreditcode}</th>
                  <td colspan="3">${jltfispCoBaseDto.socialCreditCode}</td>
              </tr>
              <tr class="tal">
                  <th>${loanformManage.baseOfficeaddress}</th>
                  <td colspan="5" id="jinyingdizhi"></td>
                  <th>${loanformManage.baseRegisteredaddress}</th>
                  <td colspan="3">${jltfispCoBaseDto.registeredAddress }</td>
              </tr>
              <tr class="tal">
                  <th>${loanformManage.baseAccountbank}</th>
                  <td colspan="2">${jltfispCoBaseDto.loanBankName }</td>
                  <th>${loanformManage.baseCardno}</th>
                  <td colspan="2">${jltfispCoBaseDto.cardNo}</td>
                  <th>${loanformManage.baseRegisteredcapital}</th>
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
                  <th>${loanformManage.baseLinkman}</th>
                  <td colspan="2">${jltfispCoBaseDto.linkMan}</td>
                  <th>${loanformManage.baseLinkmobile}</th>
                  <td colspan="2">${jltfispCoBaseDto.mobilephone }</td>
                  <th>${loanformManage.baseLinkemail}</th>
                  <td colspan="3">${jltfispCoBaseDto.email }</td>
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
                  <td>${jltfispPsMaterialInfo.grossedLast }</td>
                  <td>${jltfispPsMaterialInfo.increaseGrossedLast}</td>
                  <td>${jltfispPsMaterialInfo.investmentLast}</td>
                  <td>${jltfispPsMaterialInfo.increaseInvestmentLast}</td>
                  <td colspan="2">${jltfispPsMaterialInfo.profitLast}</td>
                  <td>${jltfispPsMaterialInfo.increaseProfitLast}</td>
                  <td colspan="2">${jltfispPsMaterialInfo.taxesLast}</td>
              </tr>
              <tr>
                  <th>${loanformManage.psMaterialCurrentYear}</th>
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
                  <td>${jltfispPsMaterialInfo.inventionLast}</td>
                  <td>${jltfispPsMaterialInfo.utilitarianLast}</td>
                  <td>${jltfispPsMaterialInfo.appearanceLast}</td>
                  <td>${jltfispPsMaterialInfo.icLast}</td>
                  <td>${jltfispPsMaterialInfo.softwareLast}</td>
                  <td>${jltfispPsMaterialInfo.softwaresLast}<td>
                  <td colspan="2">${jltfispPsMaterialInfo.knowledgeLast}</td>
              </tr>
              <tr>
                  <th>${loanformManage.psMaterialIntellectualCurrent}</th>
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
                  <th colspan="4">${loanformManage.psMaterialCognizance}</th>
                  <th colspan="6">${loanformManage.psMaterialMeta}</th>
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
              <tr class="tal">
                  <td colspan="3">单位（公章）</td>
                  <td colspan="3">法定代表人（签名盖章）</td>
                  <td colspan="4">企业基本户三排章</td>
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
       
        $('.progress li').removeClass('active').eq(1).addClass('active');
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
    //获取办公地址
	 $.ajax({  
            type: "POST",
            url: "${path}/anon/queryCityName",
            data:{officeProv:officeProv,officeCity:officeCity,officeArea:officeArea},
            dateType:"json",
            success: function(msg){
              $('#jinyingdizhi').html(msg+officeAddress);
             }
        });
     
  $("#dayinshuchu").click(function(){
	  location.href="${path}/business/printSubsidyPDF?businessType=5&infoId="+'${jltfispCoBaseDto.id}';
  });
 });
</script>