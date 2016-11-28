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
    <title>$Title$</title>
  </head>

  <body>
     <div id="msgFrompPush"></div>
  </body>
</html>

<script type="text/javascript">

    if(!!window.EventSource){
        var source = new EventSource('push');
        s = '';
        source.addEventListener('message',function (e) {
            s+= e.data + "</br>";
            $("#msgFrompPush").html(s);
        });

        source.addEventListener('open',function (e) {
            console.log("链接打开");
        },false);
        source.addEventListener('erroe',function (e) {
            if(e.readyState == EventSource.CLOSED){
                console.log("链接关闭");

            }else{
                console.log(e.readyState)
            }
        },false);
    }else {
        console.log("你的浏览器不支持SSE")
    }
</script>