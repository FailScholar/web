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
    <title>贷款服务在线申请</title>
</head>

<body>
<#include "website/common/header.ftl"/>
        <!--content开始-->
        <div class="content">
            <div class="bread">
                <a href="${path}/index">首页</a>&gt;<a href="${path}/anon/loan">贷款服务</a>&gt;<a href="javascript:;">在线申请</a>
            </div>
            <div class="calt">
                <p>股权融资申请</p>
                <h2>在线申请</h2>
                <ul class="progress">
                    <li class="li1 active"><b></b>1.填写企业基本信息<i></i></li>
                    <li class="li2"><b></b>2.填写申请表格<i></i></li>
                    <li class="li3"><b></b>3.完成申请</li>
                </ul>
                <div class="clear"></div>
                <div class="proList nli" style="padding-top:0;">
                    <!--填写企业基本信息-->
                    <div class="nlistCont">
                        <p class="ntit">企业基本信息</p>
                        <form id="coBase">
                        <table width="100%" class="tab3">
                            <tr>
                                <th><b class="red">*</b>企业名称</th>
                                <td colspan="3"><input type="text" class="txt dateIcon validate[required]" id="company" name="company"  value="${jltfispCoBase.company}" placeholder="请输入"/></td>
                            </tr>
                            <tr>
                                <th><b class="red">*</b>法人代表</th>
                                <td><input type="text" class="txt dateIcon validate[required]" id="corporateRepresentative" name="corporateRepresentative" value="${jltfispCoBase.corporateRepresentative}" placeholder="请输入"/></td>
                                <th><b class="red">*</b>注册资本</th>
                                <td><input type="text" class="txt dateIcon validate[required]" id="registeredCapital" name="registeredCapital" value="${jltfispCoBase.registeredCapital}" placeholder="请输入"/>万元</td>
                            </tr>
                            <tr>
                                <th><b class="red">*</b>成立时间</th>
                                <td><input type="text" class="txt dateIcon validate[required]" onClick="WdatePicker()" placeholder="请输入"  id="establishTime" name="establishTime" value="${jltfispCoBase.establishTime}"/></td>
                                <th><b class="red">*</b>组织机构代码</th>
                                <td><input type="text" class="txt dateIcon validate[required]" id="socialCreditCode" name="socialCreditCode" value="${jltfispCoBase.socialCreditCode}"  placeholder="请输入"/></td>
                            </tr>
                            <tr>
                                <th><b class="red">*</b>所属技术领域</th>
                                <td colspan="3">
                                      <#if (jltfispCoBase.tecdomain)=="1">
                                     	<label><input type="radio" class="validate[required] " value="1" name="tecdomain" id="tecdomain"  checked="checked"/>电子信息技术</label>
                                     	<label><input type="radio" class="validate[required]" value="2" name="tecdomain" id="tecdomain"/>生物医药技术</label>
                                        <label><input type="radio" class="validate[required]" value="3" name="tecdomain" id="tecdomain"/>航空航天技术</label>
                                        <label><input type="radio" class="validate[required]" value="4" name="tecdomain" id="tecdomain"/>新科技技术</label>
                                        <label><input type="radio" class="validate[required]" value="5" name="tecdomain" id="tecdomain"/>高技术服务业</label>
                                        <label><input type="radio" class="validate[required]" value="6" name="tecdomain" id="tecdomain"/>新能源节能技术</label>
                                        <label><input type="radio" class="validate[required]" value="7" name="tecdomain" id="tecdomain"/>资源环境技术</label>
                                        <label><input type="radio" class="validate[required]" value="8" name="tecdomain" id="tecdomain"/>高新技术改造传统行业</label>
                                      <#elseif (jltfispCoBase.tecdomain)=="2">
                                     	<label><input type="radio" class="validate[required] " value="1" name="tecdomain" id="tecdomain"/>电子信息技术</label>
                                     	<label><input type="radio" class="validate[required]" value="2" name="tecdomain" id="tecdomain" checked="checked"/>生物医药技术</label>
                                        <label><input type="radio" class="validate[required]" value="3" name="tecdomain" id="tecdomain"/>航空航天技术</label>
                                        <label><input type="radio" class="validate[required]" value="4" name="tecdomain" id="tecdomain"/>新科技技术</label>
                                        <label><input type="radio" class="validate[required]" value="5" name="tecdomain" id="tecdomain"/>高技术服务业</label>
                                        <label><input type="radio" class="validate[required]" value="6" name="tecdomain" id="tecdomain"/>新能源节能技术</label>
                                        <label><input type="radio" class="validate[required]" value="7" name="tecdomain" id="tecdomain"/>资源环境技术</label>
                                        <label><input type="radio" class="validate[required]" value="8" name="tecdomain" id="tecdomain"/>高新技术改造传统行业</label>
                                      <#elseif (jltfispCoBase.tecdomain)=="3">
                                     	<label><input type="radio" class="validate[required] " value="1" name="tecdomain" id="tecdomain"/>电子信息技术</label>
                                     	<label><input type="radio" class="validate[required]" value="2" name="tecdomain" id="tecdomain"/>生物医药技术</label>
                                        <label><input type="radio" class="validate[required]" value="3" name="tecdomain" id="tecdomain"   checked="checked"/>航空航天技术</label>
                                        <label><input type="radio" class="validate[required]" value="4" name="tecdomain" id="tecdomain"/>新科技技术</label>
                                        <label><input type="radio" class="validate[required]" value="5" name="tecdomain" id="tecdomain"/>高技术服务业</label>
                                        <label><input type="radio" class="validate[required]" value="6" name="tecdomain" id="tecdomain"/>新能源节能技术</label>
                                        <label><input type="radio" class="validate[required]" value="7" name="tecdomain" id="tecdomain"/>资源环境技术</label>
                                        <label><input type="radio" class="validate[required]" value="8" name="tecdomain" id="tecdomain"/>高新技术改造传统行业</label>
                                      <#elseif (jltfispCoBase.tecdomain)=="4">
                                     	<label><input type="radio" class="validate[required] " value="1" name="tecdomain" id="tecdomain"/>电子信息技术</label>
                                     	<label><input type="radio" class="validate[required]" value="2" name="tecdomain" id="tecdomain"/>生物医药技术</label>
                                        <label><input type="radio" class="validate[required]" value="3" name="tecdomain" id="tecdomain"/>航空航天技术</label>
                                        <label><input type="radio" class="validate[required]" value="4" name="tecdomain" id="tecdomain"   checked="checked"/>新科技技术</label>
                                        <label><input type="radio" class="validate[required]" value="5" name="tecdomain" id="tecdomain"/>高技术服务业</label>
                                        <label><input type="radio" class="validate[required]" value="6" name="tecdomain" id="tecdomain"/>新能源节能技术</label>
                                        <label><input type="radio" class="validate[required]" value="7" name="tecdomain" id="tecdomain"/>资源环境技术</label>
                                        <label><input type="radio" class="validate[required]" value="8" name="tecdomain" id="tecdomain"/>高新技术改造传统行业</label>
                                      <#elseif (jltfispCoBase.tecdomain)=="5">
                                     	<label><input type="radio" class="validate[required] " value="1" name="tecdomain" id="tecdomain"/>电子信息技术</label>
                                     	<label><input type="radio" class="validate[required]" value="2" name="tecdomain" id="tecdomain"/>生物医药技术</label>
                                        <label><input type="radio" class="validate[required]" value="3" name="tecdomain" id="tecdomain"/>航空航天技术</label>
                                        <label><input type="radio" class="validate[required]" value="4" name="tecdomain" id="tecdomain"/>新科技技术</label>
                                        <label><input type="radio" class="validate[required]" value="5" name="tecdomain" id="tecdomain" checked="checked"/>高技术服务业</label>
                                        <label><input type="radio" class="validate[required]" value="6" name="tecdomain" id="tecdomain"/>新能源节能技术</label>
                                        <label><input type="radio" class="validate[required]" value="7" name="tecdomain" id="tecdomain"/>资源环境技术</label>
                                        <label><input type="radio" class="validate[required]" value="8" name="tecdomain" id="tecdomain"/>高新技术改造传统行业</label>
                                      <#elseif (jltfispCoBase.tecdomain)=="6">
                                     	<label><input type="radio" class="validate[required] " value="1" name="tecdomain" id="tecdomain"/>电子信息技术</label>
                                     	<label><input type="radio" class="validate[required]" value="2" name="tecdomain" id="tecdomain"/>生物医药技术</label>
                                        <label><input type="radio" class="validate[required]" value="3" name="tecdomain" id="tecdomain"/>航空航天技术</label>
                                        <label><input type="radio" class="validate[required]" value="4" name="tecdomain" id="tecdomain"/>新科技技术</label>
                                        <label><input type="radio" class="validate[required]" value="5" name="tecdomain" id="tecdomain"/>高技术服务业</label>
                                        <label><input type="radio" class="validate[required]" value="6" name="tecdomain" id="tecdomain" checked="checked"/>新能源节能技术</label>
                                        <label><input type="radio" class="validate[required]" value="7" name="tecdomain" id="tecdomain"/>资源环境技术</label>
                                        <label><input type="radio" class="validate[required]" value="8" name="tecdomain" id="tecdomain"/>高新技术改造传统行业</label>
                                      <#elseif (jltfispCoBase.tecdomain)=="7">
                                     	<label><input type="radio" class="validate[required] " value="1" name="tecdomain" id="tecdomain"/>电子信息技术</label>
                                     	<label><input type="radio" class="validate[required]" value="2" name="tecdomain" id="tecdomain"/>生物医药技术</label>
                                        <label><input type="radio" class="validate[required]" value="3" name="tecdomain" id="tecdomain"/>航空航天技术</label>
                                        <label><input type="radio" class="validate[required]" value="4" name="tecdomain" id="tecdomain"/>新科技技术</label>
                                        <label><input type="radio" class="validate[required]" value="5" name="tecdomain" id="tecdomain"/>高技术服务业</label>
                                        <label><input type="radio" class="validate[required]" value="6" name="tecdomain" id="tecdomain"/>新能源节能技术</label>
                                        <label><input type="radio" class="validate[required]" value="7" name="tecdomain" id="tecdomain"  checked="checked"/>资源环境技术</label>
                                        <label><input type="radio" class="validate[required]" value="8" name="tecdomain" id="tecdomain"/>高新技术改造传统行业</label>
                                      <#elseif (jltfispCoBase.tecdomain)=="8">
                                     	<label><input type="radio" class="validate[required] " value="1" name="tecdomain" id="tecdomain"/>电子信息技术</label>
                                     	<label><input type="radio" class="validate[required]" value="2" name="tecdomain" id="tecdomain"/>生物医药技术</label>
                                        <label><input type="radio" class="validate[required]" value="3" name="tecdomain" id="tecdomain"/>航空航天技术</label>
                                        <label><input type="radio" class="validate[required]" value="4" name="tecdomain" id="tecdomain"/>新科技技术</label>
                                        <label><input type="radio" class="validate[required]" value="5" name="tecdomain" id="tecdomain"/>高技术服务业</label>
                                        <label><input type="radio" class="validate[required]" value="6" name="tecdomain" id="tecdomain"/>新能源节能技术</label>
                                        <label><input type="radio" class="validate[required]" value="7" name="tecdomain" id="tecdomain"/>资源环境技术</label>
                                        <label><input type="radio" class="validate[required]" value="8" name="tecdomain" id="tecdomain"  checked="checked"/>高新技术改造传统行业</label>
                                      <#else>
                                   		<label><input type="radio" class="validate[required] " value="1" name="tecdomain" id="tecdomain"/>电子信息技术</label>
                                        <label><input type="radio" class="validate[required]" value="2" name="tecdomain" id="tecdomain"/>生物医药技术</label>
                                        <label><input type="radio" class="validate[required]" value="3" name="tecdomain" id="tecdomain"/>航空航天技术</label>
                                        <label><input type="radio" class="validate[required]" value="4" name="tecdomain" id="tecdomain"/>新科技技术</label>
                                        <label><input type="radio" class="validate[required]" value="5" name="tecdomain" id="tecdomain"/>高技术服务业</label>
                                        <label><input type="radio" class="validate[required]" value="6" name="tecdomain" id="tecdomain"/>新能源节能技术</label>
                                        <label><input type="radio" class="validate[required]" value="7" name="tecdomain" id="tecdomain"/>资源环境技术</label>
                                        <label><input type="radio" class="validate[required]" value="8" name="tecdomain" id="tecdomain"/>高新技术改造传统行业</label>
                                      </#if>
                                </td>
                            </tr>
                            <tr>
                                <th><b class="red">*</b>企业上年度销售规模</th>
                                <td colspan="3">
                                	<#if (jltfispCoBase.lastyearsellscale)==1>
                                   		<label><input type="radio" class="validate[required] " value="1" name="lastyearsellscale" id="lastyearsellscale"  checked="checked"/>0-500万</label>
                                        <label><input type="radio" class="validate[required]" value="2" name="lastyearsellscale" id="lastyearsellscale"/>501-1000万</label>
                                        <label><input type="radio" class="validate[required]" value="3" name="lastyearsellscale" id="lastyearsellscale"/>1001-3000万</label>
                                        <label><input type="radio" class="validate[required]" value="4" name="lastyearsellscale" id="lastyearsellscale"/>3001-5000万</label>
                                        <label><input type="radio" class="validate[required]" value="5" name="lastyearsellscale" id="lastyearsellscale"/>5001-1亿</label>
                                        <label><input type="radio" class="validate[required]" value="6" name="lastyearsellscale" id="lastyearsellscale"/>1-2亿</label>
                                        <label><input type="radio" class="validate[required]" value="7" name="lastyearsellscale" id="lastyearsellscale"/>2亿以上</label>
                                        <label><input type="radio" class="validate[required]" value="8" name="lastyearsellscale" id="lastyearsellscale"/>其他</label>
                                     <#elseif (jltfispCoBase.lastyearsellscale)==2>
                                   		<label><input type="radio" class="validate[required] " value="1" name="lastyearsellscale" id="lastyearsellscale"/>0-500万</label>
                                        <label><input type="radio" class="validate[required]" value="2" name="lastyearsellscale" id="lastyearsellscale"  checked="checked"/>501-1000万</label>
                                        <label><input type="radio" class="validate[required]" value="3" name="lastyearsellscale" id="lastyearsellscale"/>1001-3000万</label>
                                        <label><input type="radio" class="validate[required]" value="4" name="lastyearsellscale" id="lastyearsellscale"/>3001-5000万</label>
                                        <label><input type="radio" class="validate[required]" value="5" name="lastyearsellscale" id="lastyearsellscale"/>5001-1亿</label>
                                        <label><input type="radio" class="validate[required]" value="6" name="lastyearsellscale" id="lastyearsellscale"/>1-2亿</label>
                                        <label><input type="radio" class="validate[required]" value="7" name="lastyearsellscale" id="lastyearsellscale"/>2亿以上</label>
                                        <label><input type="radio" class="validate[required]" value="8" name="lastyearsellscale" id="lastyearsellscale"/>其他</label>
                                      <#elseif (jltfispCoBase.lastyearsellscale)==3>
                                   		<label><input type="radio" class="validate[required] " value="1" name="lastyearsellscale" id="lastyearsellscale"/>0-500万</label>
                                        <label><input type="radio" class="validate[required]" value="2" name="lastyearsellscale" id="lastyearsellscale"/>501-1000万</label>
                                        <label><input type="radio" class="validate[required]" value="3" name="lastyearsellscale" id="lastyearsellscale"  checked="checked"/>1001-3000万</label>
                                        <label><input type="radio" class="validate[required]" value="4" name="lastyearsellscale" id="lastyearsellscale"/>3001-5000万</label>
                                        <label><input type="radio" class="validate[required]" value="5" name="lastyearsellscale" id="lastyearsellscale"/>5001-1亿</label>
                                        <label><input type="radio" class="validate[required]" value="6" name="lastyearsellscale" id="lastyearsellscale"/>1-2亿</label>
                                        <label><input type="radio" class="validate[required]" value="7" name="lastyearsellscale" id="lastyearsellscale"/>2亿以上</label>
                                        <label><input type="radio" class="validate[required]" value="8" name="lastyearsellscale" id="lastyearsellscale"/>其他</label>
                                      <#elseif (jltfispCoBase.lastyearsellscale)==4>
                                   		<label><input type="radio" class="validate[required] " value="1" name="lastyearsellscale" id="lastyearsellscale"/>0-500万</label>
                                        <label><input type="radio" class="validate[required]" value="2" name="lastyearsellscale" id="lastyearsellscale"/>501-1000万</label>
                                        <label><input type="radio" class="validate[required]" value="3" name="lastyearsellscale" id="lastyearsellscale"/>1001-3000万</label>
                                        <label><input type="radio" class="validate[required]" value="4" name="lastyearsellscale" id="lastyearsellscale"  checked="checked"/>3001-5000万</label>
                                        <label><input type="radio" class="validate[required]" value="5" name="lastyearsellscale" id="lastyearsellscale"/>5001-1亿</label>
                                        <label><input type="radio" class="validate[required]" value="6" name="lastyearsellscale" id="lastyearsellscale"/>1-2亿</label>
                                        <label><input type="radio" class="validate[required]" value="7" name="lastyearsellscale" id="lastyearsellscale"/>2亿以上</label>
                                        <label><input type="radio" class="validate[required]" value="8" name="lastyearsellscale" id="lastyearsellscale"/>其他</label>
                                      <#elseif (jltfispCoBase.lastyearsellscale)==5>
                                   		<label><input type="radio" class="validate[required] " value="1" name="lastyearsellscale" id="lastyearsellscale"/>0-500万</label>
                                        <label><input type="radio" class="validate[required]" value="2" name="lastyearsellscale" id="lastyearsellscale"/>501-1000万</label>
                                        <label><input type="radio" class="validate[required]" value="3" name="lastyearsellscale" id="lastyearsellscale"/>1001-3000万</label>
                                        <label><input type="radio" class="validate[required]" value="4" name="lastyearsellscale" id="lastyearsellscale"/>3001-5000万</label>
                                        <label><input type="radio" class="validate[required]" value="5" name="lastyearsellscale" id="lastyearsellscale"  checked="checked"/>5001-1亿</label>
                                        <label><input type="radio" class="validate[required]" value="6" name="lastyearsellscale" id="lastyearsellscale"/>1-2亿</label>
                                        <label><input type="radio" class="validate[required]" value="7" name="lastyearsellscale" id="lastyearsellscale"/>2亿以上</label>
                                        <label><input type="radio" class="validate[required]" value="8" name="lastyearsellscale" id="lastyearsellscale"/>其他</label>
                                      <#elseif (jltfispCoBase.lastyearsellscale)==6>
                                   		<label><input type="radio" class="validate[required] " value="1" name="lastyearsellscale" id="lastyearsellscale"/>0-500万</label>
                                        <label><input type="radio" class="validate[required]" value="2" name="lastyearsellscale" id="lastyearsellscale"/>501-1000万</label>
                                        <label><input type="radio" class="validate[required]" value="3" name="lastyearsellscale" id="lastyearsellscale"/>1001-3000万</label>
                                        <label><input type="radio" class="validate[required]" value="4" name="lastyearsellscale" id="lastyearsellscale"/>3001-5000万</label>
                                        <label><input type="radio" class="validate[required]" value="5" name="lastyearsellscale" id="lastyearsellscale"/>5001-1亿</label>
                                        <label><input type="radio" class="validate[required]" value="6" name="lastyearsellscale" id="lastyearsellscale"  checked="checked"/>1-2亿</label>
                                        <label><input type="radio" class="validate[required]" value="7" name="lastyearsellscale" id="lastyearsellscale"/>2亿以上</label>
                                        <label><input type="radio" class="validate[required]" value="8" name="lastyearsellscale" id="lastyearsellscale"/>其他</label>
                                      <#elseif (jltfispCoBase.lastyearsellscale)==7>
                                   		<label><input type="radio" class="validate[required] " value="1" name="lastyearsellscale" id="lastyearsellscale"/>0-500万</label>
                                        <label><input type="radio" class="validate[required]" value="2" name="lastyearsellscale" id="lastyearsellscale"/>501-1000万</label>
                                        <label><input type="radio" class="validate[required]" value="3" name="lastyearsellscale" id="lastyearsellscale"/>1001-3000万</label>
                                        <label><input type="radio" class="validate[required]" value="4" name="lastyearsellscale" id="lastyearsellscale"/>3001-5000万</label>
                                        <label><input type="radio" class="validate[required]" value="5" name="lastyearsellscale" id="lastyearsellscale"/>5001-1亿</label>
                                        <label><input type="radio" class="validate[required]" value="6" name="lastyearsellscale" id="lastyearsellscale"/>1-2亿</label>
                                        <label><input type="radio" class="validate[required]" value="7" name="lastyearsellscale" id="lastyearsellscale"  checked="checked"/>2亿以上</label>
                                        <label><input type="radio" class="validate[required]" value="8" name="lastyearsellscale" id="lastyearsellscale"/>其他</label>
                                      <#elseif (jltfispCoBase.lastyearsellscale)==8>
                                   		<label><input type="radio" class="validate[required] " value="1" name="lastyearsellscale" id="lastyearsellscale"/>0-500万</label>
                                        <label><input type="radio" class="validate[required]" value="2" name="lastyearsellscale" id="lastyearsellscale"/>501-1000万</label>
                                        <label><input type="radio" class="validate[required]" value="3" name="lastyearsellscale" id="lastyearsellscale"/>1001-3000万</label>
                                        <label><input type="radio" class="validate[required]" value="4" name="lastyearsellscale" id="lastyearsellscale"/>3001-5000万</label>
                                        <label><input type="radio" class="validate[required]" value="5" name="lastyearsellscale" id="lastyearsellscale"/>5001-1亿</label>
                                        <label><input type="radio" class="validate[required]" value="6" name="lastyearsellscale" id="lastyearsellscale"/>1-2亿</label>
                                        <label><input type="radio" class="validate[required]" value="7" name="lastyearsellscale" id="lastyearsellscale"/>2亿以上</label>
                                        <label><input type="radio" class="validate[required]" value="8" name="lastyearsellscale" id="lastyearsellscale"  checked="checked"/>其他</label>
                                      <#else>
                                   		<label><input type="radio" class="validate[required] " value="1" name="lastyearsellscale" id="lastyearsellscale"/>0-500万</label>
                                        <label><input type="radio" class="validate[required]" value="2" name="lastyearsellscale" id="lastyearsellscale"/>501-1000万</label>
                                        <label><input type="radio" class="validate[required]" value="3" name="lastyearsellscale" id="lastyearsellscale"/>1001-3000万</label>
                                        <label><input type="radio" class="validate[required]" value="4" name="lastyearsellscale" id="lastyearsellscale"/>3001-5000万</label>
                                        <label><input type="radio" class="validate[required]" value="5" name="lastyearsellscale" id="lastyearsellscale"/>5001-1亿</label>
                                        <label><input type="radio" class="validate[required]" value="6" name="lastyearsellscale" id="lastyearsellscale"/>1-2亿</label>
                                        <label><input type="radio" class="validate[required]" value="7" name="lastyearsellscale" id="lastyearsellscale"/>2亿以上</label>
                                        <label><input type="radio" class="validate[required]" value="8" name="lastyearsellscale" id="lastyearsellscale"/>其他</label>
                                      </#if>
                                </td>
                            </tr>
                            <tr>
                                <th><b class="red">*</b>公司通讯地址</th>
                                 <td colspan="3">
                                        <select id="officeProv" name="officeProv" value="${jltfispCoBase.officeProv}">
                                        	
                                        </select>
                                        <select id="officeCity" name="officeCity" value="${jltfispCoBase.officeCity}">
                                        	
                                        </select>
                                        <select id="officeArea" name="officeArea" value="${jltfispCoBase.officeArea}">
                                        	
                                        </select>
                                        <input id="officeAddress" name="officeAddress" type="text" value="${jltfispCoBase.officeAddress}" class="txt validate[required,mixSize[2],maxSize[1000]]" placeholder="详细地址"  />
                                    </td>
                            </tr>
                            <tr>
								<!-- 数据库未设置邮编，此处将邮箱email字段又来保存邮编-->
                                <th><b class="red">*</b>邮编</th>
                                <td><input type="text" class="txt validate[required,minSize[6],maxSize[6],custom[number]]"  id="email" name="email" value="${jltfispCoBase.email}" class="txt validate[required,mixSize[6],maxSize[6]]" placeholder="请输入"/></td>
                                <th><b class="red">*</b>职工人数</th>
                                <td><input type="text" class="txt dateIcon validate[required]" id="workernumber" name="workernumber" value="${jltfispCoBase.workernumber}" placeholder="请输入"/></td>
                            </tr>
                            <tr>
                                <th><b class="red">*</b>注册地址</th>
                                <td>
                                   <input type="text" class="txt validate[required,mixSize[2],maxSize[1000]]" placeholder="请输入"  id="registeredAddress" name="registeredAddress" value="${jltfispCoBase.registeredAddress}"/>
                                </td>
                            </tr>
                            <tr>
                                <th>推荐人单位</th>
                                <td><input type="text" class="txt" placeholder="请输入" id="refereecompany" name="refereecompany" value="${jltfispCoBase.refereecompany}"/></td>
                                <th>推荐人姓名</th>
                                <td><input type="text" class="txt" placeholder="请输入" id="referee" name="referee" value="${jltfispCoBase.referee}"/></td>
                            </tr>
                            <tr>
                                <th>推荐人手机</th>
                                <td><input type="text" class="txt validate[maxSize[11],custom[phone]]" placeholder="请输入" id="refereemobile" name="refereemobile" value="${jltfispCoBase.refereemobile}"/></td>
                                <th>推荐人邮箱</th>
                                <td><input type="text" class="txt validate[mixSize[2],maxSize[50],custom[email]]" placeholder="请输入" id="refereeemail" name="refereeemail" value="${jltfispCoBase.refereeemail}"/></td>
                            </tr>
                            <tr>
                                <th>公司网址</th>
                                <td colspan="3"><input type="text" class="txt validate[mixSize[5],maxSize[100],custom[url]]" placeholder="请输入网址" id="companyurl" name="companyurl" value="${jltfispCoBase.companyurl}"/></td>
                            </tr>
                        </table>
                        <p class="ntit">主要股东<a href="javascript:;" class="fr add">添加</a></p>
                        <table width="100%" class="tab3 tab4 module">
                            <tr>
                                <th>股东名称</th>
                                <th>法人代表(或证件号)</th>
                                <th>所占股份%</th>
                            </tr>
                            <#if shareholderList?? && (shareholderList?size > 0) >
	                            <#list shareholderList as shareholderList>
	                         		<tr>
	                               	 	 <td><input type="text" class="txt" id="name" name="name" value="${shareholderList.name}"/></td>
	                               		 <td><input type="text" class="txt" id="number" name="number" value="${shareholderList.number}"/></td>
	                               		 <td><input type="text" class="txt" id="ratio" name="ratio" value="${shareholderList.ratio}"/><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></td>
	                            	</tr>
				      			 </#list> 
	                         <#else> 
	                            <tr>
	                                <td><input type="text" class="txt" id="name" name="name" placeholder="请输入" /></td>
	                                <td><input type="text" class="txt" id="number" name="number" placeholder="请输入" /></td>
	                                <td><input type="text" class="txt" id="ratio" name="ratio" placeholder="请输入" /><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></td>
	                            </tr>
                            </#if>
                        </table>
                        <p class="ntit">企业联系人</p>
                        <table width="100%" class="tab3">
                            <tr>
                                <th><b class="red">*</b>联系人姓名</th>
                                <td><input type="text" class="txt dateIcon validate[required]" placeholder="请输入" id="linkMan" name="linkMan" value="${jltfispCoBase.linkMan}"/></td>
                                <th><b class="red">*</b>电话</th>
                                <td><input type="text" class="txt validate[required,minSize[3],maxSize[4],custom[number]]" style="width:56px;" placeholder="区号" id="zoneDescription" name="zoneDescription" value="${jltfispCoBase.zoneDescription}"/>-<input type="text" class="txt dateIcon validate[required]" style="width:120px;" placeholder="电话" id="phoneOrFax" name="phoneOrFax" value="${jltfispCoBase.phoneOrFax}"/></td>
                            </tr>
                            <tr>
                                <th><b class="red">*</b>联系人手机号</th>
                                <td><input type="text" class="txt validate[required,maxSize[11],custom[phone]]" placeholder="请输入" id="linkMobile" name="linkMobile" value="${jltfispCoBase.linkMobile}"/></td>
                                <th><b class="red">*</b>联系人邮箱</th>
                                <td><input type="text" class="txt validate[required,mixSize[2],maxSize[50],custom[email]]" placeholder="请输入" id="linkEmail" name="linkEmail" value="${jltfispCoBase.linkEmail}"/></td>
                            </tr>
                        </table>
                        <p class="ntit">项目简介</p>
                        <table width="100%" class="tab3">
                            <tr>
                                <th width="8%"><b class="red">*</b>项目名称</th>
                                <td><input type="text" class="txt dateIcon validate[required]" placeholder="请输入" id="projectname" name="projectname" value="${jltfispCoBase.projectname}"/></td>
                            </tr>
                            <tr>
                                <th><b class="red">*</b>市场及产品综述</th>
                                <td><textarea class="txta dateIcon validate[required]" id="marketproductsummary" name="marketproductsummary">${jltfispCoBase.marketproductsummary}</textarea></td>
                            </tr>
                            <tr>
                                <th><b class="red">*</b>管理团队概述</th>
                                <td><textarea class="txta dateIcon validate[required]" id="managerteamsummary" name="managerteamsummary">${jltfispCoBase.managerteamsummary}</textarea></td>
                            </tr>
                            <tr>
                                <th><b class="red">*</b>科技资质</th>
                                <td>
                                	<#if (jltfispCoBase.technologyqualifications)==1>
	                                    <label><input type="radio" class="validate[required]"  value="1" name="technologyqualifications" id="technologyqualifications"  checked="checked"/>高科技企业</label>
	                                    <label><input type="radio" class="validate[required]"  value="2" name="technologyqualifications" id="technologyqualifications"/>科技小巨人企业</label>
	                                    <label><input type="radio" class="validate[required]"  value="3" name="technologyqualifications" id="technologyqualifications"/>科技小巨人培训企业</label>
	                                    <label><input type="radio" class="validate[required]"  value="4" name="technologyqualifications" id="technologyqualifications"/>软件企业</label><br/>
                                    <#elseif (jltfispCoBase.technologyqualifications)==2>
	                                    <label><input type="radio" class="validate[required]"  value="1" name="technologyqualifications" id="technologyqualifications">高科技企业</label>
	                                    <label><input type="radio" class="validate[required]"  value="2" name="technologyqualifications" id="technologyqualifications"  checked="checked"/>科技小巨人企业</label>
	                                    <label><input type="radio" class="validate[required]"  value="3" name="technologyqualifications" id="technologyqualifications"/>科技小巨人培训企业</label>
	                                    <label><input type="radio" class="validate[required]"  value="4" name="technologyqualifications" id="technologyqualifications"/>软件企业</label><br/>
                                    <#elseif (jltfispCoBase.technologyqualifications)==3>
	                                    <label><input type="radio" class="validate[required]"  value="1" name="technologyqualifications" id="technologyqualifications"/>高科技企业</label>
	                                    <label><input type="radio" class="validate[required]"  value="2" name="technologyqualifications" id="technologyqualifications"/>科技小巨人企业</label>
	                                    <label><input type="radio" class="validate[required]"  value="3" name="technologyqualifications" id="technologyqualifications"  checked="checked"/>科技小巨人培训企业</label>
	                                    <label><input type="radio" class="validate[required]"  value="4" name="technologyqualifications" id="technologyqualifications"/>软件企业</label><br/>
                                    <#elseif (jltfispCoBase.technologyqualifications)==4>
	                                    <label><input type="radio" class="validate[required]"  value="1" name="technologyqualifications" id="technologyqualifications"/>高科技企业</label>
	                                    <label><input type="radio" class="validate[required]"  value="2" name="technologyqualifications" id="technologyqualifications"/>科技小巨人企业</label>
	                                    <label><input type="radio" class="validate[required]"  value="3" name="technologyqualifications" id="technologyqualifications"/>科技小巨人培训企业</label>
	                                    <label><input type="radio" class="validate[required]"  value="4" name="technologyqualifications" id="technologyqualifications"   checked="checked"/>软件企业</label><br/>
	                                <#else>
	                                    <label><input type="radio" class="validate[required]"  value="1" name="technologyqualifications" id="technologyqualifications"/>高科技企业</label>
	                                    <label><input type="radio" class="validate[required]"  value="2" name="technologyqualifications" id="technologyqualifications"/>科技小巨人企业</label>
	                                    <label><input type="radio" class="validate[required]"  value="3" name="technologyqualifications" id="technologyqualifications"/>科技小巨人培训企业</label>
	                                    <label><input type="radio" class="validate[required]"  value="4" name="technologyqualifications" id="technologyqualifications"/>软件企业</label><br/>
                                    </#if>
                                    <div class="else">其他<input name="otherDesc" id="otherDesc" name="otherDesc" type="text" class="txt validate[maxSize[1000]]" value="${jltfispCoBase.otherDesc}"/></div>
                                </td>
                            </tr>
                        </table>
                        </form>
                        <div class="logbtn" style="margin-top:30px;">
                        	<input type="button" class="nor" value="下一步" />
                        	<input type="submit" class="can" value="取消" onclick="location.href='/jltfisp_web/index'"/>	
                        </div>
                    </div>
                </div>

                <div class="proList nli" style="padding-top:0; display:none;">
                    <!--填写申请表格-->
                    <div class="nlistCont">
                        <p class="ntit">企业申请表格</p>
                        <form id="finMaterial">
                        <table width="100%" class="tab3">
                            <tr>
                                <th width="8%"><b class="red">*</b>企业名称</th>
                                <td><input type="text" class="txt" id="company2" readonly="readonly" /></td>
                                <input type="hidden" class="txt" id="infoId" name="infoId"  value="${jltfispCoBase.id}"/>
                            </tr>
                            <tr>
                                <th width="8%"><b class="red">*</b>项目名称</th>
                                <td><input type="text" class="txt" id="projectname2" readonly="readonly" /></td>
                            </tr>
                        </table>
                        <p class="ntit">近三年经营情况</p>
                        <table width="100%" class="tab3">
                            <tr>
                                <th width="8%"><b class="red">*</b>年度</th>
                                <td><input type="text" class="txt2" value="2015" readonly="readonly" />年</td>
                                <td><input type="text" class="txt2" value="2014" readonly="readonly" />年</td>
                                <td><input type="text" class="txt2" value="2013" readonly="readonly" />年</td>
                            </tr>
                            <tr>
                                <th width="8%"><b class="red">*</b>总收入</th>
                                <td><input type="text" class="txt dateIcon validate[required]" id="incomeLast" name="incomeLast" value="${jltfispFinMaterial.incomeLast}"/>万元</td>
                                <td><input type="text" class="txt dateIcon validate[required]" id="incomeBeforeLast" name="incomeBeforeLast" value="${jltfispFinMaterial.incomeBeforeLast}"/>万元</td>
                                <td><input type="text" class="txt dateIcon validate[required]" id="incomeThreeLast" name="incomeThreeLast" value="${jltfispFinMaterial.incomeThreeLast}"/>万元</td>
                            </tr>
                            <tr>
                                <th width="8%"><b class="red">*</b>净利润</th>
                                <td><input type="text" class="txt dateIcon validate[required]"  id="profitLast" name="profitLast" value="${jltfispFinMaterial.profitLast}"/>万元</td>
                                <td><input type="text" class="txt dateIcon validate[required]"  id="profitBeforeLast" name="profitBeforeLast" value="${jltfispFinMaterial.profitBeforeLast}"/>万元</td>
                                <td><input type="text" class="txt dateIcon validate[required]"  id="profitThreeLast" name="profitThreeLast" value="${jltfispFinMaterial.profitThreeLast}"/>万元</td>
                            </tr>
                        </table>
                        <p class="ntit">企业需求</p>
                        <table class="tab3" width="100%">
                            <tr>
                                <th><b class="red">*</b>拟融资金额</th>
                                <td><input type="text" class="txt dateIcon validate[required]" id="capitals" name="capitals" value="${jltfispFinMaterial.capitals}"/>万元</td>
                            </tr>
                            <tr>
                                <th><b class="red">*</b>对投资机构的要求</th>
                                <td><textarea class="txta dateIcon validate[required]" style="height:40px;" id="requireOrganization" name="requireOrganization">${jltfispFinMaterial.requireOrganization}</textarea></td>
                            </tr>
                            <tr>
                                <th><b class="red">*</b>服务要求</th>
                                <td>
                                	<#if (jltfispFinMaterial.requireService)=="1">
	                                	<label><input type="radio" class="validate[required] " value="1" name="requireService" id="requireService"  checked="checked"/>网站上发布</label>
	                                	<label><input type="radio" class="validate[required] " value="2" name="requireService" id="requireService"/>项目洽谈会发布</label>
	                                	<label><input type="radio" class="validate[required] " value="3" name="requireService" id="requireService"/>与投资机构个别洽谈</label>
                                    <#elseif (jltfispFinMaterial.requireService)=="2">
                                  		<label><input type="radio" class="validate[required] " value="1" name="requireService" id="requireService"/>网站上发布</label>
	                                	<label><input type="radio" class="validate[required] " value="2" name="requireService" id="requireService"  checked="checked"/>项目洽谈会发布</label>
	                                	<label><input type="radio" class="validate[required] " value="3" name="requireService" id="requireService"/>与投资机构个别洽谈</label>
                                    <#elseif (jltfispFinMaterial.requireService)=="3">
                                  		<label><input type="radio" class="validate[required] " value="1" name="requireService" id="requireService"/>网站上发布</label>
	                                	<label><input type="radio" class="validate[required] " value="2" name="requireService" id="requireService"/>项目洽谈会发布</label>
	                                	<label><input type="radio" class="validate[required] " value="3" name="requireService" id="requireService"  checked="checked"/>与投资机构个别洽谈</label>
                                    <#else>
                                   		<label><input type="radio" class="validate[required] " value="1" name="requireService" id="requireService"/>网站上发布</label>
	                                	<label><input type="radio" class="validate[required] " value="2" name="requireService" id="requireService"/>项目洽谈会发布</label>
	                                	<label><input type="radio" class="validate[required] " value="3" name="requireService" id="requireService"/>与投资机构个别洽谈</label>
                                    </#if>
                                    <div class="else" style="line-height:24px;">具体要求</div>
                                    <textarea class="txta" style="height:40px;" id="requireServiceText" name="requireServiceText">${jltfispFinMaterial.requireServiceText}</textarea>
                                </td>
                            </tr>
                        </table>
                        </form>
                        <p class="tip4" style="color:#d17d00">企业承诺：本企业提供上述信息真实可靠！</p>
                        <div class="logbtn" style="margin-top:30px;">
                            <input type="button" class="por" value="上一步" />
                            <input type="button" class="nor" value="下一步" />
                        </div>
                    </div>
                </div>

                <div class="proList nli" style="padding-top:0; display:none;">
                    <!--完成-->
                    <div class="alptable nlistCont">
                        <h1 style="width:100%; background:none">吉林省科技股权融资申请表</h1>
<!--                         <p class="fr" style="padding-right:0; text-align:right;">项目编号：2016110320161103</p> -->
                        <div class="clear"></div>
                        <table class="tab2" style="width:100%">
                            <tbody>
                            <tr class="tal">
                             	<th>项目名称</th>
                                <td><span id="projectname3"></span></td>
                                <th>所属技术领域</th>
                                <td colspan="3"><span id="tecdomain3"></span></td>
                            </tr>
                            <tr class="tal">
                                <th>公司名称(全称)</th>
                                <td><span id="company3"></span></td>
                                <th>公司通讯地址</th>
                                <td colspan="3"><span id="officeAddress3"></span></td>
                            </tr>
                            <tr class="tal">
                                <th>注册资本</th>
                                <td><span id="registeredCapital3"></span></td>
                                <th>注册地址</th>
                                <td colspan="3"><span id="registeredAddress3"></span></td>
                            </tr>
                            <tr class="tal">
                                <th width="16.6%">法人代表</th>
                                <td width="16.6%"><span id="corporateRepresentative3"></span></td>
                                <th width="16.6%">成立时间</th>
                                <td width="16.6%"><span id="establishTime3"></span></td>
                                <th width="16.6%">联系人邮箱</th>
                                <td><span id="linkEmail3"></span></td>
                            </tr>
                            <tr class="tal">
                                <th>邮编</th>
                                <td><span id="email3"></span></td> <span id=""></span>
                                <th>组织机构代码</th>
                                <td><span id="socialCreditCode3"></span></td>
                                <th>职工人数(人)</th>
                                <td><span id="workernumber3"></span></td>
                            </tr>
                            <tr class="tal">
                                <th>联系人姓名</th>
                                <td><span id="linkMan3"></span></td>
                                <th>联系人电话</th>
                                <td><span id="phoneOrFax3"></span></td>
                                <th>联系人手机</th>
                                <td><span id="linkMobile3"></span></td>
                            </tr>
                            <tr class="tal">
                                <th>公司网址</th>
                                <td  colspan="5"><span id="companyurl3"></span></td>
                            </tr>
                            <tr class="tal">
                                <th>推荐人单位</th>
                                <td><span id="refereecompany3"></span></td>
                                <th>推荐人姓名</th>
                                <td colspan="3"><span id="referee3"></span></td>
                            </tr>
                            <tr class="tal">
                                <th>推荐人手机</th>
                                <td><span id="refereemobile3"></span></td>
                                <th>推荐人邮箱</th>
                                <td colspan="3"><span id="refereeemail3"></span></td>
                            </tr>
                            <tr>
                                <th colspan="6">主要股东</th>
                            </tr>
                            <tr>
                                <th colspan="2">股东名称</th>
                                <th colspan="2">法人代表(或证件号)</th>
                                <th colspan="2">所占股份%</th>
                            </tr>
                            <tr>
                                <td colspan="2">陈陈陈</td>
                                <td colspan="2">west boy</td>
                                <td colspan="2">5</td>
                            </tr>
                            <tr>
                                <th colspan="6">项目简介</th>
                            </tr>
                            <tr class="tal">
                                <th>市场及产品综述</th>
                                <td colspan="5"><span id="marketproductsummary3"></span></td>
                            </tr>
                            <tr class="tal">
                                <th>公司管理团队简介</th>
                                <td colspan="5"><span id="managerteamsummary3"></span></td>
                            </tr>
                            <tr class="tal">
                            	<th>科技资质</th>
                                <td colspan="5"><span id="technologyqualifications3"></span></td>
                            </tr>
                            <tr>
                                <th colspan="6">近三年经营情况(单位：万元)</th>
                            </tr>
                            <tr class="tal">
                                <th>年度</th>
                                <td>2015年</td>
                                <td>2014年</td>
                                <td colspan="3">2013年</td>
                            </tr>
                            <tr class="tal">
                                <th>总收入</th>
                                <td><span id="incomeLast3"></span></td>
                                <td><span id="incomeBeforeLast3"></span></td>
                                <td colspan="3"><span id="incomeThreeLast3"></span></td>
                            </tr>
                            <tr class="tal">
                                <th>净利润</th>
                                <td><span id="profitLast3"></span></td>
                                <td><span id="profitBeforeLast3"></span></td>
                                <td colspan="3"><span id="profitThreeLast3"></span></td>
                            </tr>
                            <tr class="tal">
                                <th>融资金额</th>
                                <td colspan="5"><span id="capitals3"></span></td>
                            </tr>
                            <tr class="tal">
                                <th>对投资机构的要求</th>
                                <td colspan="5"><span id="requireOrganization3"></span></td>
                            </tr class="tal">
                            <tr class="tal">
                                <th>服务要求</th>
                                <td colspan="5"><span id="requireService3"></span></td>
                            </tr>
                            <tr>
                                <td colspan="6">
                                    <div class="cover cv1 fr">
                                        <p class="ntit">公司名称：<U>&nbsp;<span id="company4"></span>&nbsp;</U></p>
                                        <p class="ntit">填&nbsp;表&nbsp;人    ：<U>&nbsp;${userName}&nbsp;</U></p>
                                        <p class="ntit"><span class="ml70"></span>${year}&nbsp;&nbsp;年&nbsp;&nbsp;${month}&nbsp;&nbsp;月&nbsp;&nbsp;${date}&nbsp;&nbsp;日</span></p>
                                    </div>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                        
                        <p class="tip4" style="color:#d17d00">企业承诺：本企业提供上述信息真实可靠！</p>
                        <div class="logbtn" style="margin-top:30px;">
                            <input type="submit" class="can" value="返回修改" onclick="location.href='/jltfisp_web/anon/loan/financeApply'"/>
                            <input type="button" class="nor" value="确认提交" />
                            <input type="button" class="nor" value="打印输出"  onclick="windowsPrint()"/>
                        </div>
                    </div>
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
    $(document).ready(function(e) {
        $('.proList .logbtn input.nor').click(function(){
            var index=$(this).parents('.proList').index()-3;
            var url;
            var data;
            if(index==1)
            {
            	if(!$('#coBase').validationEngine('validate')){
                      return false;
                }
                var company2=$("#company").val();
                $("#company2").val(company2);
                var projectname2=$("#projectname").val();
                $("#projectname2").val(projectname2);
            	data=$("#coBase").serialize();
            	$.ajax({
                    type: "POST",
                    url: '${path}/anon/loan/saveFinanceBasicInfo',
                    data: data,
                    dateType:"json",
                    success: function(msg){
                        dialog.tipsPop('ban-pop','提示:',"操作失败",'确定');
                        return false;
                    }
                })
                /**保存股东信息**/
                $('.progress li').removeClass('active').eq(index).addClass('active');
                $(this).parents('.proList').hide().next('.proList').show();
            }
            if(index==2)
            {
            	if(!$('#finMaterial').validationEngine('validate')){
                      return false;
                }
            	$("#company3").text($("#company").val());
            	$("#projectname3").text($("#projectname").val());
            	$("#registeredCapital3").text($("#registeredCapital").val());
            	$("#corporateRepresentative3").text($("#corporateRepresentative").val());
            	$("#registeredAddress3").text($("#registeredAddress").val());
            	$("#refereecompany3").text($("#refereecompany").val());
            	$("#referee3").text($("#referee").val());
            	$("#refereemobile3").text($("#refereemobile").val());
            	$("#refereeemail3").text($("#refereeemail").val());
            	$("#companyurl3").text($("#companyurl").val());
            	$("#linkMan3").text($("#linkMan").val());
            	$("#phoneOrFax3").text($("#zoneDescription").val()+"-"+$("#phoneOrFax").val());
            	$("#linkMobile3").text($("#linkMobile").val());
            	$("#linkEmail3").text($("#linkEmail").val());
            	$("#email3").text($("#email").val());
            	$("#workernumber3").text($("#workernumber").val());
            	$("#establishTime3").text($("#establishTime").val());
            	$("#socialCreditCode3").text($("#socialCreditCode").val());
            	$("#marketproductsummary3").text($("#marketproductsummary").val());
            	$("#managerteamsummary3").text($("#managerteamsummary").val());
            	$("#incomeLast3").text($("#incomeLast").val());
            	$("#incomeBeforeLast3").text($("#incomeBeforeLast").val());
            	$("#incomeThreeLast3").text($("#incomeThreeLast").val());
            	$("#profitLast3").text($("#profitLast").val());
            	$("#profitBeforeLast3").text($("#profitBeforeLast").val());
            	$("#profitThreeLast3").text($("#profitThreeLast").val());
            	$("#capitals3").text($("#capitals").val());
            	$("#requireOrganization3").text($("#requireOrganization").val());
            	$("#company4").text($("#company").val());
            	var tecdomainName = $("input[name='tecdomain']:checked").val();
 				if(tecdomainName=="1"){
 					$("#tecdomain3").text("电子信息技术");
 	 			}
 				else if(tecdomainName=="2"){
 					$("#tecdomain3").text("生物医药技术");
 	 			}
 				else if(tecdomainName=="3"){
 					$("#tecdomain3").text("航空航天技术");
 	 			}
 				else if(tecdomainName=="4"){
 					$("#tecdomain3").text("新科技技术");
 	 			}
 				else if(tecdomainName=="5"){
 					$("#tecdomain3").text("高技术服务业");
 	 			}
 				else if(tecdomainName=="6"){
 					$("#tecdomain3").text("新能源节能技术");
 	 			}
 				else if(tecdomainName=="7"){
 					$("#tecdomain3").text("资源环境技术");
 	 			}
 				else{
 					$("#tecdomain3").text("高新技术改造传统行业");
 	 			}
 				var technologyqualificationsName = $("input[name='technologyqualifications']:checked").val();
 				if(technologyqualificationsName=="1"){
 					$("#technologyqualifications3").text("高科技企业"+" "+$("#otherDesc").val());
 	 			}
 				else if(technologyqualificationsName=="2"){
 					$("#technologyqualifications3").text("科技小巨人企业"+" "+$("#otherDesc").val());
 	 			}
 				else if(technologyqualificationsName=="3"){
 					$("#technologyqualifications3").text("科技小巨人培训企业"+" "+$("#otherDesc").val());
 	 			}
 				else{
 					$("#technologyqualifications3").text("软件企业"+" "+$("#otherDesc").val());
 	 			}
 				var requireServiceName = $("input[name='requireService']:checked").val();
 				if(requireServiceName=="1"){
 					$("#requireService3").text("网站上发布"+" "+$("#requireServiceText").val());
 	 			}
 				else if(technologyqualificationsName=="2"){
 					$("#requireService3").text("项目洽谈会发布"+" "+$("#requireServiceText").val());
 	 			}
 				else{
 					$("#requireService3").text("与投资机构个别洽谈"+" "+$("#requireServiceText").val());
 	 			}
				var provId=$("#officeProv").val();
				var cityId=$("#officeCity").val();
				var areaId=$("#officeArea").val();
				//获取通讯地址
				var url;
				 $.ajax({
		            type: "POST",
		            url: '${path}/anon/loan/getArea',
		            data:{"provId":provId,"cityId":cityId,"areaId":areaId},
					success:function(data){
						if(data.result=="success"){
							$("#officeAddress3").text(data.address+" "+$("#officeAddress").val());
						}
		              }
		        });
 				
            	data=$("#finMaterial").serialize();
            	$.ajax({
                    type: "POST",
                    url: '${path}/anon/loan/saveJltfispFinMaterialInfo',
                    data: data,
                    dateType:"json",
                    success: function(msg){
                        dialog.tipsPop('ban-pop','提示:',"操作失败",'确定');
                        return false;
                    }
                })
                $('.progress li').removeClass('active').eq(index).addClass('active');
                $(this).parents('.proList').hide().next('.proList').show();
            }
        });
        $('.proList .logbtn input.por').click(function(){
            $('.progress li').removeClass('active').eq(0).addClass('active');
            $(this).parents('.proList').hide().prev('.proList').show();
        });

        $('.nlist li').click(function(){
            $(this).addClass('active').siblings().removeClass('active');
            $(this).parent().siblings(".nlistCont").hide().eq($(this).index()).show();
        });

        $('.lnav li').click(function(){
            $(this).addClass('active').siblings().removeClass('active');
        });

        //确认提交
        $('.proList:last').find(".nor:first").click(function(){
        	$.ajax({
                type: "POST",
                url: "${path}/anon/loan/submitFinanceApply",
                dateType:"json",
                success: function(msg){
                    //如果保存成功则返回成功页面
                	window.location.href="${path}/loan/success";
                }
            });
        });

        //删除
        $('.delete').live('click',function(){
            $(this).parents('.tab3').remove();
        });
        //增加股东
        var 	trhtml = "</br><tr>";
        trhtml +="<td><input type='text' class='txt' id='name' name='name' placeholder='请输入' /></td>";
        trhtml +="<td><input type='text' class='txt' id='number' name='number' placeholder='请输入' /></td>";
        trhtml +="<td><input type='text' class='txt' id='ratio' name='ratio' placeholder='请输入' /><a onclick='removetr(this)' href='javascript:void(0)'>删除</a></td>";
        trhtml +="</tr>";
        $('.add').click(function(){
			if($('.module tr').length<11){
				$('.module tr:last').after(trhtml);
			}
			else{
				alert("股东最多可添加10家");
				return false;
				}
        });
        
        $.ajax({
            type: "POST",
            url: "${path}/anon/area",
            dateType:"json",
            success: function(msg){
              for(var i=0;i<msg.length;i++){  
                    $("#officeProv").append("<option value='"+msg[i].id+"'>"+msg[i].name+"</option>");  
                  } 
                  changCity($("#officeProv").val());
              }
        });
        
        
        function changCity(id){
            $.ajax({
            type: "POST",
            url: "${path}/anon/area",
            data:{areaId:id},
            dateType:"json",
            success: function(msg){
              $("#officeCity").html("");
              for(var i=0;i<msg.length;i++){
                    $("#officeCity").append("<option value='"+msg[i].id+"'>"+msg[i].name+"</option>");  
                  }
              changArea($("#officeCity").val());
              }
        });
        }
        
        function changArea(id){
            $.ajax({
            type: "POST",
            url: "${path}/anon/area",
            data:{areaId:id},
            dateType:"json",
            success: function(msg){
              $("#officeArea").html("");
              for(var i=0;i<msg.length;i++){
                    $("#officeArea").append("<option value='"+msg[i].id+"'>"+msg[i].name+"</option>");  
                  }
              }
        });
  }
        $("#officeProv").change(function(){  
        changCity($(this).val());
        }); 
        
        $("#officeCity").change(function(){  
        changArea($(this).val());
        }); 
        
    });

    function windowsPrint(){
    	window.print();
    }

    //移除股东
    function removetr(obj){
//     		if($('.module tr').length<2){
//     			alert('最后一条记录不可删除！');
//     			return false;
//     		}
    		$(obj).parents('tr').remove();
    }
</script>