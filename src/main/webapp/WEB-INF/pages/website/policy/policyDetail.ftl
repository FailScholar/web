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
    <title>吉林省科技金融信息服务平台</title>
  </head>

  <body>
  <#include "website/common/header.ftl"/>
              <!--content开始-->
               <div class="content" style="word-wrap:break-word;word-break:break-all;">
                <div class="bread">
                    <a href="${path}/index">首页</a>&gt;<a href="${path}/perm/policy">${dictColumn.value}</a>&gt;<a href="javascript:void(0);" onclick="goBack(${jltfispColumn.id})">${jltfispColumn.columnName}</a>&gt;<a href="javascript:;">详情</a>
                </div>
                <div class="video">
                	<h1>${ltfispPolicy.title}</h1>
                    <p style="width:650px;text-align:center;"><span class="time">${ltfispPolicy.publishTime ?date}</span><span class="eye"  style="margin-left:20px;">${ltfispPolicy.pv}</span><span  style="margin-left:20px;">来源：&nbsp;${ltfispPolicy.source}</span></p>
                    <div class="clear"></div>
                    <div class="artical wangEditor-container" style="background-color:#fff;">
                    	<div class="wangEditor-txt">
                    	  <p>${ltfispPolicy.content}</p>
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
<script type="text/javascript">
    positionNavigation(3);
 function goBack(columnId){
	 window.location.href="${path}/perm/policy?columnId="+columnId;
	 }
</script>