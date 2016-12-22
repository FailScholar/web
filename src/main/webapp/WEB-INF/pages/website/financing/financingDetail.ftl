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
    <script>
    	function goHistory(columnid){
    		 $.cookie('columnid', columnid, {path: '/'});
        	 window.location.href = "${path}/perm/financing"
    	}
    </script>
</head>

<body>
<#include "website/common/header.ftl"/>
<!--content开始-->
<div class="content">
    <div class="bread">
        <a href="${path}/perm/financing">股权融资</a>&gt;<a href="javascript:goHistory(${fincing.columnid})">${colName}</a>&gt;<a>详情</a>
    </div>
    <div class="video">
        <h1>${fincing.title}</h1>
        <p style="width:450px;text-align:center;"><span class="time">${fincing.publishtime ?date}</span><span class="eye"  style="margin-left:20px;">${fincing.pv}</span><span  style="margin-left:20px;">来源：&nbsp;${fincing.source}</span></p>
        <div class="clear"></div>
        <div class="artical" style="background-color:#fff;">
            <p>${fincing.content}</p>
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
    positionNavigation(7);
</script>