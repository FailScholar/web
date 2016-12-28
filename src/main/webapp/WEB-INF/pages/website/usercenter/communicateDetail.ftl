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
    <title></title>
</head>

<body>
	<#if comm.toUser?exists>
		<div style="word-wrap:break-word;word-break:break-all;">
	      <p class="qus">问题</p>
	      <p class="gray6">${comm.content} </p>
	      <p class="ans">金融专家：${comm.ansUserName}</p>
	      <p class="gray6">${comm.ansContent}</p>
	  	</div>
	  <#else>
	  	<div style="word-wrap:break-word;word-break:break-all;">
	      <p class="qus">问题</p>
	      <p class="gray6">${comm.content}</p>
	  </div>
	</#if>
</body>
</html>