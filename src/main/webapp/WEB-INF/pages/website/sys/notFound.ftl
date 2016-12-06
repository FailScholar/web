<#assign path=request.contextPath />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="renderer" content="webkit">
      <link rel="stylesheet" type="text/css" href="${path}/resource/css/404.css">
      <script type="text/javascript" src="${path}/resource/js/jquery-1.7.2.min.js"></script>
    <title>404页面未找到</title>
  </head>

  <body>
  <div id="main">
      <header id="header">
          <h1><span class="icon">!</span>404</h1>
      </header>
      <div id="content">
          <h2>您所请求的页面无法找到</h2>
          <p>服务器无法正常提供信息。<br>
              目标页面可能已经被更改、删除或移到其他位置，或您所输入页面地址错误。</p>
          <div class="utilities">
              <a class="button right" href="javascript:history.go(-1);">返回</a>
              <div class="clear"></div>
          </div>
      </div>
  </div>
  </body>
</html>