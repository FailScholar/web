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
      		<div class="alptable nlistCont">
   <h1 style="width:100%; background:none">吉林省科技股权融资申请表</h1>
   <div class="clear"></div>
   <table class="tab2" style="width:100%">
   		<tbody>
   			<tr class="tal">
                 <th>项目名称</th>
                 <td><span>${jltfispCoBaseDto2.projectname}</span></td>
                 <th>所属技术领域</th>
                  <td colspan="3">
                 	 <#if jltfispCoBaseDto2.tecdomain==1>
                 	 	<span>电子信息技术</span>
                 	 <#elseif jltfispCoBaseDto2.tecdomain==2>
                 	 	<span>生物医药技术</span>
                 	 <#elseif jltfispCoBaseDto2.tecdomain==3>
                 		<span>航空航天技术</span>
                 	 <#elseif jltfispCoBaseDto2.tecdomain==4>
                 		<span>新科技技术</span>
                 	 <#elseif jltfispCoBaseDto2.tecdomain==5>
                 	 	<span>高技术服务业</span>
                 	 <#elseif jltfispCoBaseDto2.tecdomain==6>
                 		<span>新能源节能技术</span>
                 	 <#elseif jltfispCoBaseDto2.tecdomain==7>
                 	    <span>新能源节能技术</span>
                 	 <#else>
                 	 	<span>资源环境技术</span>
                 	 </#if>
                  </td>
            </tr>
            <tr class="tal">
                <th>公司名称(全称)</th>
                <td><span>${jltfispCoBaseDto2.company}</span></td>
                <th>公司通讯地址</th>
                <td colspan="3"><span>${provName}&nbsp;${cityName}&nbsp;${areaName}&nbsp;${jltfispCoBaseDto2.officeAddress}</span></td>
            </tr>
            <tr class="tal">
                 <th>注册资本</th>
                 <td><span>${jltfispCoBaseDto2.registeredCapital}</span></td>
                 <th>注册地址</th>
                 <td colspan="3"><span>${jltfispCoBaseDto2.registeredAddress}</span></td>
                 </tr>
                            <tr class="tal">
                                <th width="16.6%">法人代表</th>
                                <td width="16.6%"><span>${jltfispCoBaseDto2.corporateRepresentative}</span></td>
                                <th width="16.6%">成立时间</th>
                                <td width="16.6%"><span>${jltfispCoBaseDto2.establishTime}</span></td>
                                <th width="16.6%">联系人邮箱</th>
                                <td><span>${jltfispCoBaseDto2.linkEmail}</span></td>
                            </tr>
                            <tr class="tal">
                                <th>邮编</th>
                                <td><span>${jltfispCoBaseDto2.email}</span></td>
                                <th>组织机构代码</th>
                                <td><span>${user.socialCode}</span></td>
                                <th>职工人数(人)</th>
                                <td><span>${jltfispCoBaseDto2.workernumber}</span></td>
                            </tr>
                            <tr class="tal">
                                <th>联系人姓名</th>
                                <td><span>${jltfispCoBaseDto2.linkMan}</span></td>
                                <th>联系人电话</th>
                                <td><span>${jltfispCoBaseDto2.phoneOrFax}</span></td>
                                <th>联系人手机</th>
                                <td><span>${jltfispCoBaseDto2.linkMobile}</span></td>
                            </tr>
                            <tr class="tal">
                                <th>公司网址</th>
                                <td  colspan="5"><span>${provName}&nbsp;${cityName}&nbsp;${areaName}&nbsp;${jltfispCoBaseDto2.officeAddress}</span></td>
                            </tr>
                            <tr class="tal">
                                <th>推荐人单位</th>
                                <td><span>${jltfispCoBaseDto2.refereecompany}</span></td>
                                <th>推荐人姓名</th>
                                <td colspan="3"><span>${jltfispCoBaseDto2.referee}</span></td>
                            </tr>
                            <tr class="tal">
                                <th>推荐人手机</th>
                                <td><span>${jltfispCoBaseDto2.refereemobile}</span></td>
                                <th>推荐人邮箱</th>
                                <td colspan="3"><span>${jltfispCoBaseDto2.refereeemail}</span></td>
                            </tr>
                            <tr>
                                <th colspan="6">主要股东</th>
                            </tr>
                            <tr>
                                <th colspan="2">股东名称</th>
                                <th colspan="2">法人代表(或证件号)</th>
                                <th colspan="2">所占股份%</th>
                            </tr>
                             <#if jltfispCoBaseDto2.jltfispFinShareholderList?? && (jltfispCoBaseDto2.jltfispFinShareholderList?size > 0) >
	                            <#list jltfispCoBaseDto2.jltfispFinShareholderList as jltfispFinShareholderList>
	                         		<tr>
	                               	 	 <td colspan="2"><span>${jltfispFinShareholderList.name}</span></td>
	                               		 <td colspan="2"><span>${jltfispFinShareholderList.number}</span></td>
	                               		 <td colspan="2"><span>${jltfispFinShareholderList.ratio}</span></td>
	                            	</tr>
				      			 </#list> 
                            </#if>
                            <tr>
                                <th colspan="6">项目简介</th>
                            </tr>
                            <tr class="tal">
                                <th>市场及产品综述</th>
                                <td colspan="5"><span>${jltfispCoBaseDto2.marketproductsummary}</span></td>
                            </tr>
                            <tr class="tal">
                                <th>公司管理团队简介</th>
                                <td colspan="5"><span>${jltfispCoBaseDto2.managerteamsummary}</span></td>
                            </tr>
                            <tr class="tal">
                            	<th>科技资质</th>
                                <td colspan="5">
                                	<#if jltfispCoBaseDto2.technologyqualifications==1>
			                 	 		<span>高科技企业&nbsp;${jltfispCoBaseDto2.otherDesc}</span>
			                 		<#elseif jltfispCoBaseDto2.technologyqualifications==2>
			                 	 		<span>科技小巨人企业&nbsp;${jltfispCoBaseDto2.otherDesc}</span>
			                 		<#elseif jltfispCoBaseDto2.technologyqualifications==3>
			                 			<span>科技小巨人培训企业&nbsp;${jltfispCoBaseDto2.otherDesc}</span>
			                 		<#else>
			                 	 		<span>软件企业&nbsp;${jltfispCoBaseDto2.otherDesc}</span>
			                 		</#if>
			                 	 </td>
                            </tr>
                            <tr>
                                <th colspan="6">近三年经营情况(单位：万元)</th>
                            </tr>
                            <tr class="tal">
                                <th>年度</th>
                                <td>${.now?string('yyyy')?number-1}年</td>
                                <td>${.now?string('yyyy')?number-2}年</td>
                                <td colspan="3">${.now?string('yyyy')?number-3}年</td>
                            </tr>
                            <tr class="tal">
                                <th>总收入</th>
                                <td><span>${jltfispFinMaterial3.incomeLast}</span></td>
                                <td><span>${jltfispFinMaterial3.incomeBeforeLast}</span></td>
                                <td colspan="3"><span>${jltfispFinMaterial3.incomeThreeLast}</span></td>
                            </tr>
                            <tr class="tal">
                                <th>净利润</th>
                                <td><span>${jltfispFinMaterial3.profitLast}</span></td>
                                <td><span>${jltfispFinMaterial3.profitBeforeLast}</span></td>
                                <td colspan="3"><span>${jltfispFinMaterial3.profitThreeLast}</span></td>
                            </tr>
                            <tr class="tal">
                                <th>融资金额</th>
                                <td colspan="5"><span>${jltfispFinMaterial3.capitals}</span></td>
                            </tr>
                            <tr class="tal">
                                <th>对投资机构的要求</th>
                                <td colspan="5"><span>${jltfispFinMaterial3.requireOrganization}</span></td>
                            </tr class="tal">
                            <tr class="tal">
                                <th>服务要求</th>
                                <td colspan="5"><span>${jltfispFinMaterial3.capitals}</span></td>
                            </tr>
                            <tr>
                                <td colspan="6">
                                    <div class="cover cv1 fr">
                                        <p class="ntit">公司名称：<U>&nbsp;<span>${jltfispCoBaseDto2.company}</span>&nbsp;</U></p>
                                        <p class="ntit"><span class="ml70"></span>${year}&nbsp;&nbsp;年&nbsp;&nbsp;${month}&nbsp;&nbsp;月&nbsp;&nbsp;${date}&nbsp;&nbsp;日</span></p>
                                    </div>
                                </td>
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
                        
                        <p class="tip4" style="color:#d17d00">企业承诺：本企业提供上述信息真实可靠！</p>
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
<script>
	function printdiv(infoId){
		location.href="${path}/business/printFinanceApply?businessType=6&infoId="+infoId;
	}
</script>