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
        <!--支持播放flv -->
        videojs.options.flash.swf = "${path}/resource/plugins/videoJs/js/video-js.swf";
    	function goHistory(columnid){
    		 $.cookie('columnid', columnid, {path: '/'});
        	 window.location.href = "${path}/perm/cloud"
    	}
    </script>
  </head>

  <body>
  <#include "website/common/header.ftl"/>
              <!--content开始-->
              <div class="content">
                  <div class="bread">
                      <a href="${path}/index">首页</a>&gt;<a href="javascript:goHistory(${column.id})">${column.columnName}</a>&gt;<a>详情</a>
                  </div>
                  <div class="video">
                     <h1>${cloudDetail.title}</h1>
				     <p style="width:650px;text-align:center;"><span class="time">${cloudDetail.publishTime ?date}</span><span class="eye"  style="margin-left:20px;">${cloudDetail.pv}</span><span  style="margin-left:20px;">来源：&nbsp;${cloudDetail.source}</span></p>
				     <div class="clear"></div>
				     <#if columnOne.id == column.id>
				        <div class="media">
                          <video id="example_video_1" class="video-js vjs-default-skin vjs-big-play-centered" controls preload="none" width="800" height="500"
                                 poster="${path}${cloudDetail.image}"
                                 data-setup="{}">
                              <#if cloudDetail.video ?contains('mp4')>
                                  <source src="${path}${cloudDetail.video}" type='video/mp4' />
                              </#if>
                              <#if cloudDetail.video ?contains('flv')>
                                  <source src="${path}${cloudDetail.video}" type='video/x-flv' />
                              </#if>
                     	 </div>
                     	 <div class="artical">
                     	 	<textarea id="autoTextArea" readonly class="txta" style="cursor:default;width:100%;BORDER-BOTTOM: 0px solid; BORDER-LEFT: 0px solid; BORDER-RIGHT: 0px solid; BORDER-TOP: 0px solid;border:0;overflow-y: hidden;">${cloudDetail.content}</textarea>
                     	 </div>
				     <#else>
				     	<div class="artical  wangEditor-container" style="background-color:#fff;">
				            <div class="wangEditor-txt">
				           	 <p>${cloudDetail.content}</p>
				            </div>
				        </div>
				     </#if>
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
    positionNavigation(10);
    $(function(){
var minHeight=$('#autoTextArea').height();
var scrollHeight=$('#autoTextArea')[0].scrollHeight;
$('#autoTextArea').attr("height", minHeight + 'px');
if (scrollHeight > minHeight) {
$('#autoTextArea').attr("style", "cursor:default;width:100%;BORDER-BOTTOM: 0px solid; BORDER-LEFT: 0px solid; BORDER-RIGHT: 0px solid; BORDER-TOP: 0px solid;border:0;overflow-y: hidden;height:"+scrollHeight + 'px;');
}
})
</script>