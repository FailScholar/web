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
    <title>股权融资保费申请</title>
</head>

<body>
<#include "website/common/header.ftl"/>
    <!--content开始-->
    <div class="content">
        <div class="bread">
            <a href="${path}/index">首页</a>&gt;<a href="${path}/loan/onlineApply?applytype=5">保费补贴</a>&gt;<a href="javascript:;">在线查看</a>
        </div>
        <div class="calt">
            <p>股权融资保费申请</p>
            <div class="clear"></div>
                <#assign path=request.contextPath />
      	  <!--完成-->
      		<div class="alptable nlistCont" id="printDiv">
                            <h1 style="width:100%; background:none">股权融资申请表</h1>
                            <!--<p class="fr" style="padding-right:0; text-align:right;">项目编号：2016110320161103</p>-->
                            <div class="clear"></div>
                            <table class="tab2" style="width:100%">
                                <tbody>
                                    <tr class="tal">
                                        <th>项目名称</th>
                                        <td>${jltfispCoBaseDto.projectname}</td>
                                        <th>所属技术领域</th>
                                        <td colspan="4">${jltfispCoBaseDto.tecdomain}</td>
                                    </tr>
                                    <tr class="tal">
                                        <th>公司名称(全称)</th>
                                        <td>${jltfispCoBaseDto.company}</td>
                                        <th>公司通讯地址</th>
                                        <td colspan="3">${jltfispCoBaseDto.officeAddress}</td>
                                    </tr>
                                    <tr class="tal">
                                        <th>注册资本</th>
                                        <td>${jltfispCoBaseDto.registeredCapital}万元</td>
                                        <th>注册区县</th>
                                        <td colspan="3">${jltfispCoBaseDto.officeArea}</td>
                                   </tr>
                                   <tr class="tal">
                                        <th width="16.6%">法人代表</th>
                                        <td width="16.6%">${jltfispCoBaseDto.corporateRepresentative}</td>
                                        <th width="16.6%">成立时间</th>
                                        <td width="16.6%">${jltfispCoBaseDto.establishTime?string("yyyy-MM-dd")}</td>
                                        <th width="16.6%">联系人邮箱</th>
                                        <td>${jltfispCoBaseDto.email}</td>
                                    </tr>
                                    <tr class="tal">
                                        <th>邮编</th>
                                        <td>235100</td>
                                        <th>组织机构代码</th>
                                        <td>${jltfispCoBaseDto.socialCreditCode}</td>
                                        <th>职工人数(人)</th>
                                        <td>${jltfispCoBaseDto.workernumber}</td>
                                    </tr>
                                    <tr class="tal">
                                        <th>联系人</th>
                                        <td>${jltfispCoBaseDto.linkMan}</td>
                                        <th>联系人电话</th>
                                        <td>${jltfispCoBaseDto.zoneDescription}-${jltfispCoBaseDto.phoneOrFax}</td>
                                        <th>联系人手机</th>
                                        <td>${jltfispCoBaseDto.linkMobile}</td>
                                    </tr>
                                    <tr class="tal">
                                        <th>联系人邮箱</th>
                                        <td>${jltfispCoBaseDto.linkEmail}</td>
                                        <th>公司网址</th>
                                        <td colspan="3">${jltfispCoBaseDto.companyurl}</td>
                                    </tr>
                                    <tr class="tal">
                                        <th>推荐单位</th>
                                        <td>${jltfispCoBaseDto.refereecompany}</td>
                                        <th>推荐人</th>
                                        <td colspan="3">${jltfispCoBaseDto.referee}</td>
                                    </tr>
                                    <tr class="tal">
                                        <th>推荐人手机</th>
                                        <td>${jltfispCoBaseDto.refereemobile}</td>
                                        <th>推荐人邮箱</th>
                                        <td colspan="3">${jltfispCoBaseDto.refereeemail}</td>
                                    </tr>
                                    <tr>
                                        <th colspan="6">主要股东</th>
                                    </tr>
                                    <tr>
                                        <th colspan="2">股东名称</th>
                                        <th colspan="2">法人代表(或证件号)</th>
                                        <th colspan="2">所占股份%</th>
                                    </tr>
                                    <#list shareholderlist as shareholder>
                                    <tr>
                                        <td colspan="2">${shareholder.name}</td>
                                        <td colspan="2">${shareholder.number}</td>
                                        <td colspan="2">${shareholder.ratio}</td>
                                    </tr>
                                    </#list>
                                    <tr>
                                        <th colspan="6">项目简介</th>
                                    </tr>
                                    <tr class="tal">
                                    	<th>简述公司产品/服务市场及主要客户</th>
                                        <td colspan="5">${jltfispCoBaseDto.marketproductsummary}</td>
                                    </tr>
                                    <tr class="tal">
                                    	<th>公司管理团队简介</th>
                                        <td colspan="5">${jltfispCoBaseDto.managerteamsummary}</td>
                                    </tr>
                                    <tr class="tal">
                                    	<th>科技资质</th>
                                        <td colspan="5">${managerteamsummary.technologyqualifications}</td>
                                    </tr>
                                    <tr>
                                        <th colspan="6">近三年经营情况(单位：万元)</th>
                                    </tr>
                                    <tr class="tal">
                                    	<th>年度</th>
                                        <td>${.now?string('yyyy')?number-2}年</td>
                                        <td>${.now?string('yyyy')?number-1}年</td>
                                        <td colspan="3">${.now?string('yyyy')}年</td>
                                    </tr>
                                    <tr class="tal">
                                    	<th>总收入</th>
                                        <td>${jltfispFinMaterialInfo.incomeLast}万元</td>
                                        <td>${jltfispFinMaterialInfo.incomeBeforeLast}万元</td>
                                        <td colspan="3">${jltfispFinMaterialInfo.incomeThreeLast}万元</td>
                                    </tr>
                                    <tr class="tal">
                                    	<th>净利润</th>
                                        <td>${jltfispFinMaterialInfo.profitLast}万元</td>
                                        <td>${jltfispFinMaterialInfo.profitBeforeLast}万元</td>
                                        <td colspan="3">${jltfispFinMaterialInfo.profitThreeLast}万元</td>
                                    </tr>
                                    <tr class="tal">
                                    	<th>融资金额</th>
                                        <td colspan="5">${jltfispFinMaterialInfo.capitals}万元</td>
                                    </tr>
                                    <tr class="tal">
                                    	<th>对投资机构的要求(自填)</th>
                                        <td colspan="5">${jltfispFinMaterialInfo.requireOrganization}</td>
                                    </tr class="tal">
                                     <tr class="tal">
                                    	<th>服务要求</th>
                                        <td colspan="5">${jltfispFinMaterialInfo.requireService}</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6">
                                            <div class="cover cv1 fr">
                                                <p class="ntit">&emsp;公司：<input class="txt3" type="text"></p>
                                                <p class="ntit">填表人：<input class="txt3" type="text"></p>
                                                <p class="ntit"><span class="ml70">年</span><span class="ml70">月</span><span class="ml70">日</span></p>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <p class="tip4" style="color:#d17d00">企业承诺：本企业提供上述信息真实可靠！</p>
                            <div class="btnFld">
                                <input type="button" class="btnSave" value="打印输出" onclick="printdiv()"/>
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
<script>
	  function printdiv()
{
var headstr = "<html><head><title></title></head><body>";
var footstr = "</body>";
var newstr = document.getElementById("printDiv").innerHTML;
var oldstr = document.body.innerHTML;
document.body.innerHTML = headstr+newstr+footstr;
window.print(); 
document.body.innerHTML = oldstr;
return false;
}
</script>