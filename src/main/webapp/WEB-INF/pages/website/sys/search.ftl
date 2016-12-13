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
        <div class="clear"></div>
        <div class="infoList">
            <ul class="ul1">
            <#list pojoList as list>
                <li>
                    <h2 class="ellipsis"><a href="javascript:;" onclick="ttPost('${list.tableName}','${list.id}','${keyWords}')">${list.title}</a></h2>
                    <p class="tit">${list.source}<span>${list.publishTime ? date}</span><span class="eye fr">${list.pv}</span></p>
                    <p>
                        <#if list.contentReview?length gt 40>
                        ${list.contentReview[0..40]}...
                        <#else>
                        ${list.contentReview}
                        </#if>
                    </p>
                </li>
            </#list>
            </ul>
        </div>
    </div>
    <div class="clear"></div>
    <div class="page"></div>
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
    function ttPost(tableName,id,keyWords) {
        openBlank('${path}/anon/pojo/detail',{tableName:tableName,id:id,keyWords:keyWords},true);
    }
    $("#TopSearchInput").attr("value",'${keyWords}');
</script>