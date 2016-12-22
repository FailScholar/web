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
<input type="hidden" id="columnIdValue" value=""/>
<div class="content">
   <div class="info">
      <ul class="infoTab">
         <#list columnList as column>
         	<#if column_index lt 5>
           	 <li id="Type${column.id}" name="${column.id}"><a href="javascript:void(0);">${column.columnName}</a></li>
         	</#if>
         </#list>
         <#if columnList?size gt 5>
		       	 <select id="selectId" onchange="getList()">
		       		<option value="0">-选择更多-</option>
		       	 	<#list columnList as afterFiveList>
		       	 		<#if afterFiveList_index gt 4>
		       	 			<option value="${afterFiveList.id}">${afterFiveList.columnName}</option>
		       	 		</#if>
		       	 	</#list>
		       	 </select>
       	 </#if>
      </ul>
      <div class="clear"></div>
      <div class="infoList">
              <#list pm.datas as news>
              <ul class="ul1">
			     <li>
			        <h2 class="ellipsis"><a href="javascript:void(0);" onclick="newsDetail(${news.id})">${news.title }</a></h2>
			        <p class="tit">${news.source }<#if news.publishTime ??><span>${news.publishTime ?date }</span></#if><span class="eye fr">${news.pv }</span></p>
			         <#if news.contentReview ??>
                       <p>${news.contentReview }</p>
                     </#if>
			     </li>
			     </ul>
			    </#list>
          <div class="clear"></div>
         <#include "website/common/commonPager.ftl"/>
      </div>
   </div> 
</div>
<!--content结束-->
</div>
</div>
<div class="clear"></div>
<div class="clearfix"></div>
<#include "website/common/footer.ftl" />
</body>
</html>
<script type="text/javascript">
    $(document).ready(function(e) {
        positionNavigation(2);
    var columnId=${columnId};
    $('#Type'+columnId).addClass('active');
    $("#columnIdValue").val(columnId);
    $('.infoList').html('');
    <!--传当前子栏目ID-->
	$.ajax({
            type: 'POST',
            url:'${path}/perm/news/'+columnId,
            data: {columnId: columnId,'pager.offset':0},
            success: function (data) {
            $('.infoList').html(data);
            },
            error: function(XMLHttpRequest, textStatus, errorThrown) {
                <!--鉴权不通过，则隐藏添加功能-->
                if(XMLHttpRequest.status ==401){
                 $('.infoList').html(''); 
                 }
            }
      });
    $('.infoTab li').click(function(){
    	$("#selectId").val("0");
        var columnId=$(this).attr("name");
        $("#columnIdValue").val(columnId);
        $(this).addClass('active').siblings('li').removeClass('active');
        <!--传当前子栏目ID-->
		$.ajax({
                type: 'POST',
                url:'${path}/perm/news/'+columnId,
                data: {columnId: columnId,'pager.offset':0},
                success: function (data) {
                   $('.infoList').html(data);
                },
                error: function(XMLHttpRequest, textStatus, errorThrown) {
                    <!--鉴权不通过，则隐藏添加功能-->
                    if(XMLHttpRequest.status ==401){
                     $('.infoList').html(''); 
                     }
                }
          });
	});
});
    //跳转页面详情
    function newsDetail(id){
    	window.location.href="${path}/anon/getNewsDetail?id="+id;
    }

    function  changePage(url){
        var columnId=$("#columnIdValue").val();
    	var url=url.split("=");
    	var offset=url[1];
    	$.ajax({
    	                type: 'POST',
    	                url:'${path}/perm/news/'+columnId,
    	                data: {columnId: columnId,'pager.offset':offset},
    	                success: function (data) {
    	                $('.infoList').html(data);
    	                },
    	                error: function(XMLHttpRequest, textStatus, errorThrown) {
    	                    <!--鉴权不通过，则隐藏添加功能-->
    	                    if(XMLHttpRequest.status ==401){
    	                     $('.infoList').html(''); 
    	                     }
    	                }
    	          });
    	} 
	function getList(){
		  var columnId = $('#selectId option:selected').val();
		  if(columnId!=0){
			  $.ajax({
		            type: 'POST',
		            url:'${path}/perm/news/'+columnId,
		            data: {"columnId": columnId,'pager.offset':0},
		            success: function (data) {
		           		 $('.infoList').html(data);
		            },
		            error: function(XMLHttpRequest, textStatus, errorThrown) {
		                <!--鉴权不通过，则隐藏添加功能-->
		                if(XMLHttpRequest.status ==401){
		                 $('.infoList').html(''); 
		                 }
		            }
		      });
		  }
		}
</script>