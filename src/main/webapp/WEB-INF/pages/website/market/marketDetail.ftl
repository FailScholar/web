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
  </head>

  <body>
  <#include "website/common/header.ftl"/>
              <!--content开始-->
              <div class="content">
                  <div class="bread">
                      <a href="javascript:;">首页</a>&gt;<a href="javascript:goHistory(${column.id})">${column.columnName}</a>&gt;<a>详情</a>
                  </div>
                  <div class="video">
                     <h1>${marketDetail.title}</h1>
				     <p style="width:650px;text-align:center;"><span class="time">${marketDetail.publishTime ?date}</span><span class="eye"  style="margin-left:20px;">${marketDetail.pv}</span><span  style="margin-left:20px;">来源：&nbsp;${marketDetail.source}</span></p>
				     <div class="clear"></div>
				     	<div class="artical wangEditor-container" style="background-color:#fff;">
				            <div class="wangEditor-txt">
				           	 <p>${marketDetail.content}</p>
				            </div>
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
<script type="application/javascript">
    positionNavigation(8);
    function goHistory(columnid){
        $.cookie('columnid', columnid, {path: '/'});
        window.location.href = "${path}/perm/market"
    }
</script>