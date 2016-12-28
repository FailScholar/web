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
    <script>
    $(function(){
    	$("#saveCommForm").validationEngine('attach', {
            promptPosition: "bottomRight:-10", scroll: false
        }); 
    });

  //树状菜单加载语句 结束 ------------------------------------
</script>
</head>

<body>
	<#if comm.toUser?exists>
			<div style="word-wrap:break-word;word-break:break-all;">
		      <p class="qus">问题</p>
		      <p class="gray6">${comm.content}</p>
		      <p class="ans">金融专家：${comm.ansUserName}</p>
		      <p class="gray6">${comm.ansContent}</p>
		  </div>
	  <#else>
	  
	  <div style="word-wrap:break-word;word-break:break-all;">
	  <form action="${page}/communicate/editComm" method="post" id="saveCommForm">
	  	<input type="hidden" name="id" value="${comm.id}"/>
	      <p class="qus">问题</p>
	      <p class="gray6">${comm.content} </p>
	      <p class="ans">金融专家答复：</p>
	      <textarea class="txta validate[required,minSize[2],maxSize[500]]" name="ansContent" style="width:620px;height:200px;">${comm.ansContent}</textarea>
	  	</form>
	  	</div>
	</#if>
</body>
</html>