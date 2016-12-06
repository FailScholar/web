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
<div class="content">
    <div class="info">
        <ul class="infoTab">
             <#list columnList as column>
                <li id="Type${column.id}" name="${column.id}"><a href="javascript:void(0);">${column.columnName}</a></li>
             </#list>
        </ul>
     <div class="clear"></div>
        <div class="infoList">
           <ul class="ul1">
			   <#list pm.datas as policy>
			     <li>
			        <h2 class="ellipsis"><a href="${path}/anon/getNewsDetail?id=${policy.id}">${policy.title }</a></h2>
			        <p class="tit">${policy.source }<#if policy.publishTime ??><span>${policy.publishTime ?date }</span></#if><span class="eye fr">${policy.pv }</span></p>
			         <#if policy.contentReview ??>
                       <p>${policy.contentReview }</p>
                     </#if>
			     </li>
			    </#list>
			</ul>
        </div>
     </div>
    <div class="clear"></div>
     <#include "website/common/commonPager.ftl"/>
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
    $(document).ready(function(e) {
    var columnId=${columnId};
    $('#Type'+columnId).addClass('active');
    $('.infoTab li').click(function(){
        var columnId=$(this).attr("name");
        $(this).addClass('active').siblings('li').removeClass('active');
		<!--传当前子栏目ID-->
		$.ajax({
                type: 'POST',
                url:'${path}/anon/news',
                data: {columnId: columnId,type:1},
                dataType:'html',
                success: function (data) {
                $('.content').html(data);
                }
          });
	});
});

</script>