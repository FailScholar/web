<#assign path=request.contextPath />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="renderer" content="webkit">
    <link rel="stylesheet" type="text/css" href="${path}/resource/css/css.css" />
    <link rel="stylesheet" type="text/css" href="${path}/resource/css/reset.css" />
    
    <script type="text/javascript" src="${path}/resource/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="${path}/resource/js/js.js"></script>
<#--commonjs-->
<script type="text/javascript" src="${path}/resource/js/common.js"></script>
    <title>用户中心</title>
      <style type="text/css">
          .ifo {width:590px;}
          .per .sde { width:130px;}
      </style>
      <script type="application/javascript">
    var path = '${path}';
</script>
        <script type="text/javascript">

function applyInstitution(columnId){
		$.post("${path}/institution/checkApply",function(msg){
			if(msg != ""){
				dialog.tipsPop('ban-pop','提示',msg,'确定');
			}else{
				$(".content").load("${path}/anon/institutionGuide",{columnId: columnId});
			}
		});
	}
	function goUrl(url){
		location.href=url;
	}
  </script>
  </head>

  <body>
  <#include "website/common/header.ftl"/>
              <!--content开始-->
              <div class="content">
                  <div class="info">
                      <ul class="infoTab">
                          <li class="active"><a href="javascript:;">用户中心</a></li>
                          <li onclick="goUrl('${path}/user/showUser')"><a href="javascript:;">用户信息</a></li>
                          <li onclick="goUrl('${path}/message/page')"><a href="javascript:;">通知通告</a></li>

                          <@shiro.hasAnyRoles name="企业会员,机构会员">
                              <li onclick="goUrl('${path}/business/page')"><a href="javascript:;">业务管理</a></li>
                          </@shiro.hasAnyRoles>

                          <@shiro.hasAnyRoles name="个人会员,企业会员,机构会员">
                              <li onclick="goUrl('${path}/communicate/page')"><a href="javascript:;">我要咨询</a></li>
                          </@shiro.hasAnyRoles>

                          <@shiro.hasRole name="专家会员">
                              <li onclick="goUrl('${path}/communicate/expertPage')"><a href="javascript:;">我要解答</a></li>
                          </@shiro.hasRole>

                      </ul>
                      <div class="clear"></div>
                  </div>


              <#--用户中心开始-->
                  <div class="infoList pi">
                      <div class="personInfo fl">
                      <#if (user.photoPath??)>
                          <img src="${path}${user.photoPath}" alt="head" class="fl" width="200px" height="200px"/>
                      <#else>
                      	<img src="${path}/resource/images/head.jpg" alt="head" class="fl" width="200px" height="200px"/>
                      </#if>
                          <div class="me fr">
                              <h3 title="${user.username}"> 
                              <#if (user.username?length lte 10)>
                              	${user.username}
                              <#else>
                              	${user.username[0..10]}...
                              </#if>
                              </h3>
                              <p title="${user.accountNumber }">用户名：
                              <#if (user.accountNumber?length lte 12)>
                              	${user.accountNumber}
                              <#else>
                              	${user.accountNumber[0..11]}...
                              </#if>
                              </p>
                              <p>手机号：${user.mobilePhone}</p>
                          </div>
                      </div>
                      <div class="setInfo fr">
                          <h2>申请认证</h2>
                          <@shiro.hasAnyRoles name="个人会员">
                          <#if businessApplayAudit.parentType=='3' && businessApplayAudit.state==0>
                          	您已申请认证成为${column.columnName}，申请材料正在审核中
                          <#else>
                          <#--最多显示7个，多的显示更多-->
                              <#list columnList as column>
                              	<#if (column_index <7)>
								 <a href="${path}/expert/expertGuide?columnId=${column.id}">${column.columnName}</a>
							  	</#if>
							  </#list>
                              <#if (columnList?size >6)>
                              	<a href="${path}/perm/expert"><span class="bds_more">更多></span></a>
                              </#if>
                              </#if>
                              <p></p>
                          </@shiro.hasAnyRoles>
                          <@shiro.hasAnyRoles name="专家会员,机构会员">
                              您已申请认证成为${user.roleName}
                          </@shiro.hasAnyRoles>
                          <@shiro.hasAnyRoles name="企业会员">
                          <#if businessApplayAudit.parentType=='2' && businessApplayAudit.state==0>
                          	您已申请认证成为${column.columnName}，申请材料正在审核中
                          <#else>
                          <#--最多显示7个，多的显示更多-->
                              <#list columnList as column>
                              	<#if (column_index <7)>
								 <a href="javascript:applyInstitution(${column.id});">${column.columnName}</a>
							  	</#if>
							  </#list>
                              <#if (columnList?size >6)>
                              	<a href="${path}/perm/institution"><span class="bds_more">更多></span></a>
                              </#if>
                              </#if>
                              <p></p>
                          </@shiro.hasAnyRoles>
                      </div>
                      <div class="clear"></div>
                  </div>
                 <#--用户中心结束-->

                  <div class="clear"></div>
              </div>
              <!--content结束-->

          </div>
      </div>

      <div class="clear"></div>
      <div class="clearfix"></div>
  </div>

<div id ="dialogShow"></div> 
  <#include "website/common/footer.ftl" />
  </body>
</html>