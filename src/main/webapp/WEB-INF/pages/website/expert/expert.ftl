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
    <title>专家资源</title>
  </head>

  <body>
  <#include "website/common/header.ftl"/>
              <!--content开始-->
              <div class="content">
                  <div class="info">
                      <ul class="infoTab">
                          <#list columnList as column>
                          <!--<li <#if type=="1">class="active"</#if>><a href="javascript:;">科技金融专家</a></li>-->
                          <li name="${column.id}"><a href="javascript:void(0);">${column.columnName}</a></li>
                          </#list>
                      </ul>
                      <div class="clear"></div>
                      <#list columnList as column>
                          <!--<a href="#" class="apply2"<#if type!="1">style="width:150px; display:none"</#if><#if type=="1">style="width:150px;"</#if>>申请成为科技金融专家</a>-->
                          <a href="#" class="apply2" style="width:150px;" id="${column.id}">申请成为${column.columnName}</a>
                      </#list>
                      
                      <div class="infoList">
                           <#include "website/expert/expertContext.ftl"/>
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
                url:'${path}/anon/changeExpert',
                data: {columnId: columnId},
                success: function (data) {
                $('.infoList').html(data);
                }
          });
		$('.apply2').hide();
		$('#'+columnId).show();
	});
});

function expertDetail(id){
	location.href="${path}/anon/expertDetail?expertId="+id;
}
</script>