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
    <title>云课堂</title>
  </head>

  <body>
  <#include "website/common/header.ftl"/>
              <!--content开始-->
             <div class="content">
    <div class="info">
        <ul class="infoTab">
            <#list colList as column>
                <li code="${column.id}"><a href="javascript:void(0);">${column.columnName}</a></li>
            </#list>
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
        $('#colListDetail').load("${path}/perm/cloud/"+infoTab.find("li").eq(0).attr("code"),{currentPage :1});
    });

    $('.infoTab li').click(function(){
        $('#colListDetail').load("${path}/perm/cloud/"+$(this).attr("code"),{currentPage :1});
    });

    function selectPage(page) {
        $('#colListDetail').load("${path}/perm/cloud/"+infoTab.find('li.active').attr('code'),{currentPage :page});
    }
</script>