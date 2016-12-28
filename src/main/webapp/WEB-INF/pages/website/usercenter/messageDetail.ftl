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
    <title>通知通告详情</title>
</head>

<body>
	 <div class="popup" style="border-top:0px solid #fff;top:30%;">
              <h1>${message.title}</h1>
              <textarea style="width: 600px; height: 339px;resize: none;" readonly="readonly">${message.content}</textarea>
      </div>
</body>
</html>