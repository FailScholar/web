<#assign path=request.contextPath />
<#setting date_format="yyyy-MM-dd">
<html>
  <head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="renderer" content="webkit">
    <#include "website/common/common.ftl" />
    <title>吉林省科技金融信息服务平台</title>
  </head>

  <body>
  <#include "website/common/header.ftl"/>
            <!--content开始-->
              <div class="content">
                  <div class="bread">
                      <a href="javascript:;">首页</a>&gt;<a href="javascript:;">贷款服务</a>&gt;<a href="javascript:;">在线申请</a>
                  </div>
                  <div class="calt">
                      <p>${applyname}</p>
                     
                      <ul class="progress">
                          <li class="li1"><b></b>1.填写企业基本信息<i></i></li>
                          <li class="li2"><b></b>2.填写申请表格<i></i></li>
                          <li class="li3 active"><b></b>3.完成申请</li>
                      </ul>
                      <div class="clear"></div>
                      <p style="border-bottom:none;">申请信息一览</p>
                      <div class="proList nli">
                          <ul class="nlist">
                              <li class="active">申请书封面</li>
                              <li>重要提示</li>
                              <li>企业基本情况</li>
                              <li>贷款申请表</li>
                              <li>贷款承诺书</li>
                              <li>资产负债表/利润表</li>
                              <li>财务明细</li>
                              <li>附件</li>
                          </ul>
                          <div class="clear"></div>
                          <!--申请书封面-->
                          <#include "website/loan/loanapply/coCoverPage.ftl"/>
                          <!--重要提示-->
                          <#include "website/loan/loanapply/coPointView.ftl"/>
                          <!--企业基本情况-->
                          <#include "website/loan/loanapply/coProfileView.ftl"/>
                          <!--贷款申请表-->
                          <#include "website/loan/loanapply/fillinApplyView.ftl"/>
                          <!--贷款承诺书-->
                          <#include "website/loan/loanapply/coCommitMentView.ftl"/>
                          <!--资产负债表/损益表-->
                          <#include "website/loan/loanapply/coDebtView.ftl"/>
                          <!--财务明细表-->
                          <#include "website/loan/loanapply/coFinancialView.ftl"/>
                          <!--附件-->
                          <#include "website/loan/loanapply/coFileView.ftl"/>
                          <div class="btnFld"><input type="button" value="确认提交" class="btnSave" /><input type="button" value="打印输出" onclick="window.print();" class="btnSave" /><a href="${path}/loan/onlineApplyPage?applytype=${applytype}"><input type="button" class="btnCan" value="返回修改" /></a></div>
                          <br/>
                          <br/>
                          <br/>
                      </div>
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
  <script type="text/javascript">
<!--初始化页面数据-->
var Year=new Date();
var firstYear=Year.getFullYear()-3;
var secondYear=firstYear+1;
var thirdYear=secondYear+1;
var fourYear=thirdYear+1;
var applytype=${applytype};
var cityName;
$('#tabYear').html(firstYear+"年末");
<!--办公地址省份-->
var officeProv="${coAll.jltfispCoBase.officeProv}";
<!--办公地址市级-->
var officeCity="${coAll.jltfispCoBase.officeCity}";
<!--办公地址区县-->
var officeArea="${coAll.jltfispCoBase.officeArea}";
<!--办公详细地址-->
var officeAddress="${coAll.jltfispCoBase.officeAddress}";

<!--生产地址省份-->
var productProv="${coAll.jltfispCoBase.productProv}";
<!--生产地址市级-->
var productCity="${coAll.jltfispCoBase.productCity}";
<!--生产地址区县-->
var productArea="${coAll.jltfispCoBase.productArea}";
<!--生产地址详细-->
var productAddress="${coAll.jltfispCoBase.productAddress}";

<!--企业概况企业曾获得科技认定字段-->
var technologyOrFinance="${coAll.jltfispCoProfile.technologyOrFinance}";
var technologyOrFinanceList= new Array(); 
technologyOrFinanceList=technologyOrFinance.split(",");
var OtherTechnologyOrFinance="${coAll.jltfispCoProfile.otherTechnologyOrFinance}";

$(document).ready(function(e) {
<!--初始化企业概况企业曾获得科技认定字段-->
var str="";
for (i=0;i<technologyOrFinanceList.length;i++ )
  { 
          if(technologyOrFinanceList[i]==1){
          str=str+"高科技企业"+" ";
          }else if(technologyOrFinanceList[i]==2){
          str=str+"科技小巨人企业"+" ";
          }else if(technologyOrFinanceList[i]==3){
          str=str+"科技小巨人培育企业"+" ";
          }else if(technologyOrFinanceList[i]==4){
          str=str+"软件企业"+" ";
          }else if(technologyOrFinanceList[i]==5){
          str=str+"技术先进企业"+" ";
          }else if(technologyOrFinanceList[i]==6){
          str=str+"创新性企业"+" ";
          }else if(technologyOrFinanceList[i]==6){
          str=str+"专利示范企业"+" ";
          }
  }
 str=str+" "+OtherTechnologyOrFinance;
 $('#technologyOrFinance').html(str);
<!--查询办公地址-->
$.ajax({
            type: "POST",
            url: "${path}/anon/queryCityName",
            data:{officeProv:officeProv,officeCity:officeCity,officeArea:officeArea},
            dateType:"json",
            success: function(msg){
              $('#officeAddress').html(msg+officeAddress);
             }
        });
<!--查询注册地址-->  
$.ajax({
            type: "POST",
            url: "${path}/anon/queryCityName",
            data:{officeProv:productProv,officeCity:productCity,officeArea:productArea},
            dateType:"json",
            success: function(msg){
              $('#productAddress').html(msg+productAddress);
             }
});


$('.nlist li').click(function(){
            $(this).addClass('active').siblings().removeClass('active');
            $(this).parent().siblings(".nlistCont").hide().eq($(this).index()).show();
        });
        
  $('.btnSave').click(function(){
  window.location.href="${path}/anon/loan/loanSubmit?applytype="+applytype;
  });
<!--切换时间Tab页-->
$('.lnav li').click(function(){
          var index=$(this).index();
          if(index==0){
                    coDebtTable(firstYear);
                    }else if(index==1){
                    coDebtTable(secondYear);
                    }else if(index==2){
                    coDebtTable(thirdYear);
                    }else if(index==3){
                    coDebtTable(fourYear);
                    }else{
                    coProfitTable();
                    }
            $(this).addClass('active').siblings().removeClass('active');
 }); 
 
 });   
<!--切换年份时获取该资产负债表年费数据-->
function coDebtTable(year){
                    var year =year;
                    $.ajax({
                    type: "POST",
                    url: "${path}/anon/loan/selectCoDebtTable",
                    data: {year:year,applytype:applytype},
                    dateType:"json",
                    success: function(msg){
                     $('#coDebt').html(msg);
                     $('#tabYear').html(year+"年末");
                     $('#tableType').html("资产负债表");
                     $('#tableType2').html("资产负债表");
                     
             }
             });
          }

<!--切换年份时获取该利润表年费数据-->
function coProfitTable(){
                    $.ajax({
                    type: "POST",
                    url: "${path}/anon/loan/selectCoProfitTable",
                    data: {applytype:applytype},
                    dateType:"json",
                    success: function(msg){
                     $('#coDebt').html(msg);
                     $('#tabYear').html("利润表");
                     $('#tableType').html("利润表");
                     $('#tableType2').html("利润表");
               
                     
             }
             });
          }
          
        
  </script>