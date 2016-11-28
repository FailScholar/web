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
        	<li  name="${column.id}"><a href="javascript:void(0);">${column.columnName}</a></li>
        </#list>
        </ul>
        <div class="clear"></div>
        <a onclick="toConsult()" class="apply2" style="width:80px;cursor: pointer;">投资咨询</a>
        <div class="selSearch fr">
        	<select class="selOpt">
            	<option>选择类型</option>
                <option>电子信息技术</option>
                <option>生物医药技术</option>
            </select>
            <input type="submit" value="搜 索" class="fr" />
        </div>
        <div class="clear"></div>
        <div class="infoList">
          <#include "website/financing/financingContext.ftl"/>
        </div>
    </div>
    <div class="clear"></div>
    <div class="page">
        <a href="javascript:;">&lt;</a>
        <a href="javascript:;">1</a>
        <a href="javascript:;">2</a>
        <span>...</span>
        <a href="javascript:;">15</a>
        <a href="javascript:;">16</a>
        <a href="javascript:;">&gt;</a>
    </div>
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
    $('.infoTab li').eq(0).addClass('active');
    $('.apply2').hide().eq(0).show();
    $('.infoTab li').click(function(){
        var columnId=$(this).attr("name");
        $(this).addClass('active').siblings('li').removeClass('active');
		<!--传当前子栏目ID-->
		$.ajax({
                type: 'POST',
                url:'${path}/anon/changeFinancing',
                data: {columnId: columnId},
                success: function (data) {
                $('.infoList').html(data);
                }
          });
		$('.apply2').hide();
		$('#'+columnId).show();
	});
});

function financingDetail(id){
	location.href="${path}/anon/financingDetail?financingId="+id;
}

    function toConsult() {
        $.cookie('toConsult', true, {path: '/'});
        window.location.href = "${path}/main"
    }
</script>