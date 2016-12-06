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
        <#assign len = colList?size />
        <#if (len <= 5) >
            <#list colList as list>
                <li code="${list.id}"><a href="javascript:void(0);">${list.columnName}</a></li>
            </#list>
        <#else>
            <#list 0..4 as i>
                <li code="${colList[i].id}"><a href="javascript:void(0);">${colList[i].columnName}</a></li>
            </#list>

            <li code="${colList[5].id}">
              <a href="javascript:void(0);" style="display: none">${colList[5].columnName}</a>
            <select id="moreSel">
            <#list 5..len-1 as i>
                <option value="${colList[i].id}">${colList[i].columnName}</option>
            </#list>
            </select>&nbsp;
            </li>
        </#if>
        </ul>
        <div class="clear"></div>
        <div id="colListDetail"></div>
    </div>
</div>
</div>
</div>

<div class="clear"></div>
<div class="clearfix"></div>
</div>
<#include "website/common/footer.ftl" />
</body>
</html>
<script type="text/javascript">
    var infoTab = $("div.info ul.infoTab");
    $(function(){
        infoTab.find("li").eq(0).addClass("active");
        $('#colListDetail').load("${path}/perm/insurance/"+infoTab.find("li").eq(0).attr("code"),{page :1});
    });

    $('.infoTab li').click(function(){
        $('#colListDetail').load("${path}/perm/insurance/"+$(this).attr("code"),{page :1});
    });

    function selectPage(page) {
        $('#colListDetail').load("${path}/perm/insurance/"+infoTab.find('li.active').attr('code'),{page :page});
    }

    $(document).ready(function () {
        $("#moreSel").bind("change",function(){
            $(this).parent().attr('code',$(this).val());
            $(this).parent().find('a').text($(this).html)
        });
    });
</script>