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
      <link rel="stylesheet" type="text/css" href="${path}/resource/plugins/videoJs/css/video-js.min.css" />
      <script type="text/javascript" src="${path}/resource/plugins/videoJs/js/video.min.js"></script>
    <title>吉林省科技金融信息服务平台</title>
    <script>
    	function goHistory(columnid){
    		 $.cookie('columnid', columnid, {path: '/'});
        	 window.location.href = "${path}/perm/market"
    	}
    </script>
  </head>

  <body>
  <#include "website/common/header.ftl"/>
              <!--content开始-->
              <div class="content">
                  <div class="bread">
                      <a href="javascript:;">首页</a>&gt;<a href="javascript:goHistory(${columnid})">${colName}</a>&gt;<a>详情</a>
                  </div>
                  <div class="video">
                     <h1>${marketDetail.title}</h1>
				     <p><span class="time fl">${marketDetail.publishTime ?date}</span><span class="eye fr">${marketDetail.pv}</span></p>
				     <div class="clear"></div>
				     	<div class="artical" style="background-color:#fff;">
				            <p>${marketDetail.content}</p>
				        </div>
                  </div>
                  <div class="clear"></div>
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