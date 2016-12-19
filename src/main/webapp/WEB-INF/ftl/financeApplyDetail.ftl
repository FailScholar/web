<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">    
<html xmlns="http://www.w3.org/1999/xhtml"> 
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"></meta>
    <title>股权融资保费申请</title>
    <style>  
      @page{size:297mm 350mm;}
  	.content { padding:25px 20px; background-color:#fff;}
  	.calt { padding:0 25px;}
	.calt p { line-height:45px; color:#666; font-size:16px; border-bottom:1px solid #ddd; overflow:hidden;}
	.calt p.note { line-height:29px; font-size:14px; border-bottom:none;}
	.calt h2 { text-align:center; margin:40px auto; position:relative;}
	.calt h2 a { padding:6px 12px; color:#1679ff; position:absolute; right:0; border:1px dashed #1679ff; border-radius:3px; top:-44px;}
	.calt h2 a:hover { color:#0147a6; border-color:#0147a6;}
	.alptable h1 { margin:20px auto; text-align:center;}
	.clear{
		display:block; 
		clear:both; 
		font-size:0; 
		line-height:0; 
		height:0; 
		overflow:hidden; 
		content:".";
	}
	
	
	.nlistCont { padding:0 20px 20px 20px; border:1px solid #ccc; margin-top:-1px;}
	.nlistCont .ntit { text-align:left; margin:10px 0 0 0; font-size:14px; color:#333; text-indent:0; width:auto;}
	.nlistCont h3 { font-size:16px; text-align:center; margin:20px auto; font-weight:bold;}
	.nlistCont h3 span { font-size:12px; font-weight:normal; line-height:32px;}
	.nlistCont .tip3 h3 { color:#333; font-weight:normal; font-size:18px;}
	.nlistCont .tip3 p { line-height:24px; color:#666; font-size:14px;}
	.nlistCont b { margin-right:6px;}
	.alptable h1 { margin:20px auto; text-align:center;}
	.alptable p { padding-right:88px; font-size:12px;}
	.tab2 { border-collapse:collapse; width:85%; margin:10px auto; letter-spacing:0.5;}
	.tab2 th,.tab2 td { border:1px solid #d2d2d2; height:32px; font-size:13px; line-height:18px; padding:0 6px; text-align:center; color:#5e5e5e;}
	.tab2 th { font-weight:600;}
	.tal th { text-align:right;}
	.tal td { text-align:left;}
	.calt .snum { margin-top:20px; text-align:right; font-size:14px;}
.cover { padding-bottom:100px;}
.cover h2 { font-size:26px; margin:100px auto 180px;}
.cover .ntit { width:300px; margin-top:10px;margin-left:520px}
.cover .txt3 { border:none; border-bottom:1px solid #ccc; margin:0 6px; width:200px;}
.cv1 { padding-bottom:0;}
.cv1 p { padding-right:0;}
  </style>  
</head>
<body style='font-family:SimSun;'>
    <!--content开始-->
    <div class="content">
        <div class="calt">
            <p>股权融资保费申请</p>
            <div class="clear"></div>
      	  <!--完成-->
      		<div class="alptable nlistCont">
   <h1 style="width:100%; background:none">吉林省科技股权融资申请表</h1>
   <div class="clear"></div>
   <table class="tab2" style="width:100%">
   		<tbody>
   			<tr class="tal">
                 <th>项目名称</th>
                 <td><span>${jltfispCoBaseDto2.projectname!''}</span></td>
                 <th>所属技术领域</th>
                  <td colspan="3">${jltfispCoBaseDto2.tecdomain!''}</td>
            </tr>
            <tr class="tal">
                <th>公司名称(全称)</th>
                <td><span>${jltfispCoBaseDto2.company!''}</span></td>
                <th>公司通讯地址</th>
                <td colspan="3"><span>${provName!''}&nbsp;${cityName!''}&nbsp;${areaName!''}&nbsp;${jltfispCoBaseDto2.officeAddress!''}</span></td>
            </tr>
            <tr class="tal">
                 <th>注册资本</th>
                 <td><span>${jltfispCoBaseDto2.registeredCapital!''}</span></td>
                 <th>注册地址</th>
                 <td colspan="3"><span>${jltfispCoBaseDto2.registeredAddress!''}</span></td>
                 </tr>
                            <tr class="tal">
                                <th width="16.6%">法人代表</th>
                                <td width="16.6%"><span>${jltfispCoBaseDto2.corporateRepresentative!''}</span></td>
                                <th width="16.6%">成立时间</th>
                                <td width="16.6%"><span>${jltfispCoBaseDto2.establishTime!''}</span></td>
                                <th width="16.6%">联系人邮箱</th>
                                <td><span>${jltfispCoBaseDto2.linkEmail!''}</span></td>
                            </tr>
                            <tr class="tal">
                                <th>邮编</th>
                                <td><span>${jltfispCoBaseDto2.email!''}</span></td>
                                <th>组织机构代码</th>
                                <td><span>${user.socialCode!''}</span></td>
                                <th>职工人数(人)</th>
                                <td><span>${jltfispCoBaseDto2.workernumber!''}</span></td>
                            </tr>
                            <tr class="tal">
                                <th>联系人姓名</th>
                                <td><span>${jltfispCoBaseDto2.linkMan!''}</span></td>
                                <th>联系人电话</th>
                                <td><span>${jltfispCoBaseDto2.phoneOrFax!''}</span></td>
                                <th>联系人手机</th>
                                <td><span>${jltfispCoBaseDto2.linkMobile!''}</span></td>
                            </tr>
                            <tr class="tal">
                                <th>公司网址</th>
                                <td  colspan="5"><span>${provName!''}&nbsp;${cityName!''}&nbsp;${areaName!''}&nbsp;${jltfispCoBaseDto2.officeAddress!''}</span></td>
                            </tr>
                            <tr class="tal">
                                <th>推荐人单位</th>
                                <td><span>${jltfispCoBaseDto2.refereecompany!''}</span></td>
                                <th>推荐人姓名</th>
                                <td colspan="3"><span>${jltfispCoBaseDto2.referee!''}</span></td>
                            </tr>
                            <tr class="tal">
                                <th>推荐人手机</th>
                                <td><span>${jltfispCoBaseDto2.refereemobile!''}</span></td>
                                <th>推荐人邮箱</th>
                                <td colspan="3"><span>${jltfispCoBaseDto2.refereeemail!''}</span></td>
                            </tr>
                            <tr>
                                <th colspan="6">主要股东</th>
                            </tr>
                            <tr>
                                <th colspan="2">股东名称</th>
                                <th colspan="2">法人代表(或证件号)</th>
                                <th colspan="2">所占股份%</th>
                            </tr>
	                            <#list jltfispCoBaseDto2.jltfispFinShareholderList as jltfispFinShareholderList>
	                         		<tr>
	                               	 	 <td colspan="2"><span>${jltfispFinShareholderList.name!''}</span></td>
	                               		 <td colspan="2"><span>${jltfispFinShareholderList.number!''}</span></td>
	                               		 <td colspan="2"><span>${jltfispFinShareholderList.ratio!''}</span></td>
	                            	</tr>
				      			 </#list> 
                            <tr>
                                <th colspan="6">项目简介</th>
                            </tr>
                            <tr class="tal">
                                <th>市场及产品综述</th>
                                <td colspan="5"><span>${jltfispCoBaseDto2.marketproductsummary!''}</span></td>
                            </tr>
                            <tr class="tal">
                                <th>公司管理团队简介</th>
                                <td colspan="5"><span>${jltfispCoBaseDto2.managerteamsummary!''}</span></td>
                            </tr>
                            <tr class="tal">
                            	<th>科技资质</th>
                                <td colspan="5">
                                	<span>
                                	<#if (jltfispCoBaseDto2??&&jltfispCoBaseDto2.technologyqualifications??)>
				                  		<#if (jltfispCoBaseDto2.technologyqualifications=='1')>
				                  			高科技企业
				                  		<#elseif (jltfispCoBaseDto2.technologyqualifications=='2')>
				                  			科技小巨人企业
				                  		<#elseif (jltfispCoBaseDto2.technologyqualifications=='3')>
				                  			科技小巨人培训企业
				                  		<#else>
				                  			软件企业
				                  		</#if>
				                  	</#if>
                                	&nbsp;${jltfispCoBaseDto2.otherDesc!''}</span>
			                 	 </td>
                            </tr>
                            <tr>
                                <th colspan="6">近三年经营情况(单位：万元)</th>
                            </tr>
                            <tr class="tal">
                                <th>年度</th>
                                <td>${(.now?string('yyyy')?number-1)?string('####')}年</td>
                                <td>${(.now?string('yyyy')?number-2)?string('####')}年</td>
                                <td colspan="3">${(.now?string('yyyy')?number-3)?string('####')}年</td>
                            </tr>
                            <tr class="tal">
                                <th>总收入</th>
                                <td><span>${jltfispFinMaterial3.incomeLast!''}</span></td>
                                <td><span>${jltfispFinMaterial3.incomeBeforeLast!''}</span></td>
                                <td colspan="3"><span>${jltfispFinMaterial3.incomeThreeLast!''}</span></td>
                            </tr>
                            <tr class="tal">
                                <th>净利润</th>
                                <td><span>${jltfispFinMaterial3.profitLast!''}</span></td>
                                <td><span>${jltfispFinMaterial3.profitBeforeLast!''}</span></td>
                                <td colspan="3"><span>${jltfispFinMaterial3.profitThreeLast!''}</span></td>
                            </tr>
                            <tr class="tal">
                                <th>融资金额</th>
                                <td colspan="5"><span>${jltfispFinMaterial3.capitals!''}</span></td>
                            </tr>
                            <tr class="tal">
                                <th>对投资机构的要求</th>
                                <td colspan="5"><span>${jltfispFinMaterial3.requireOrganization!''}</span></td>
                            </tr>
                            <tr class="tal">
                                <th>服务要求</th>
                                <td colspan="5"><span>${jltfispFinMaterial3.capitals!''}</span></td>
                            </tr>
                            <tr>
                                <td colspan="6"  style="height:169px">
                                    <div class="cover cv1 fr">
                                        <p class="ntit">公司名称：<U>&nbsp;${jltfispCoBaseDto2.company!''}&nbsp;</U></p>
                                        <p class="ntit"><span class="ml70"><#if (year??)>${year?string('####')}</#if>&nbsp;&nbsp;年&nbsp;&nbsp;${month!''}&nbsp;&nbsp;月&nbsp;&nbsp;${date!''}&nbsp;&nbsp;日</span></p>
                                    </div>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                        
                        <p  style="color:#d17d00;font-size:12px; text-align:left; width:auto; text-indent:0;">企业承诺：本企业提供上述信息真实可靠！</p>
</div>
	      <!--完成-->
	</div>
	</div>
	<!--content结束-->
</body>
</html>