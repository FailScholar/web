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
               		 <li id="Type${column.id}" name="${column.id}" onclick="infoTabClick(${column.id})"><#if column.columnName?length lte 6><a href="javascript:void(0);">${column.columnName}</a><#else><a href="javascript:void(0);" title="${column.columnName}"> ${column.columnName[0..5]}...</a></#if></li>
            	</#if>
             </#list>
              <#if columnList?size gt 5>
               <li>
		       	 <select id="selectId" onchange="getList()">
		       		<option value="0">-选择更多-</option>
		       	 	<#list columnList as afterFiveList>
		       	 		<#if afterFiveList_index gt 4>
		       	 			<#if afterFiveList.columnName?length lte 6>
		       	 			<option value="${afterFiveList.id}">${afterFiveList.columnName}</option>
		       	 			<#else>
		       	 			<option title="${afterFiveList.columnName}" value="${afterFiveList.id}">${afterFiveList.columnName[0..5]}...</option>
		       	 			</#if>
		       	 		</#if>
		       	 	</#list>
		       	 </select>&nbsp;
		       </li>	 
       	 </#if>
          </ul>
          <div class="clear"></div>
          <div class="infoList">
              <#list pm.datas as policy>
                <ul class="ul1">
                   <li>
			        <h2 class="ellipsis"><a href="${path}/anon/policyDetail?policyId=${policy.id}" target="_blank" >${policy.title }</a></h2>
			        <p class="tit">${policy.source }<span>${policy.publishTime ?date }</span><span class="eye fr">${policy.pv }</span></p>
			        <p>${policy.contentReview }</p>
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
 </div>
 <#include "website/common/footer.ftl" />
 </body>
</html>
<script type="text/javascript">
function infoTabClick(columnid) {
	    $("#columnIdValue").val(columnid); 
	    $("#selectId").val("0");
		$('.infoList').load("${path}/perm/policy/"+columnid,{'pager.offset' :0});
	}
    var infoTab_li_index = [0];
  $(document).ready(function(e) {
      positionNavigation(3);
    var columnId=${columnId};
    
    if($('#Type'+columnId).html() == null ){
  		$("#selectId").parent().addClass("active");
  		$("#selectId").val(columnId);
  	}else{
  		$('#Type'+columnId).addClass('active');
  	}
    $("#columnIdValue").val(columnId);
    $('.infoList').html('');
    //传当前子栏目ID
	$.ajax({
            type: 'POST',
            url:'${path}/perm/policy/'+columnId,
            data: {columnId: columnId,'pager.offset':0},
            success: function (data) {
            $('.infoList').html(data);
            },
            error: function(XMLHttpRequest, textStatus, errorThrown) {
                //鉴权不通过，则隐藏添加功能
                if(XMLHttpRequest.status ==401){
                 $('.infoList').html(''); 
                 }
            }
	});
});
  //跳转页面详情
  function policyDetail(id){
  	window.location.href="${path}/anon/policyDetail?policyId="+id;
  }

  function  changePage(url){
	  var columnId=$("#columnIdValue").val();
	  var url=url.split("=");
	  var offset=url[1];
	  $.ajax({
	                  type: 'POST',
	                  url:'${path}/perm/policy/'+columnId,
	                  data: {columnId: columnId,'pager.offset':offset},
	                  success: function (data) {
	                  $('.infoList').html(data);
	                  },
	                  error: function(XMLHttpRequest, textStatus, errorThrown) {
	                     //鉴权不通过，则隐藏添加功能
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
	            url:'${path}/perm/policy/'+columnId,
	            data: {"columnId": columnId,'pager.offset':0},
	            success: function (data) {
	           		 $('.infoList').html(data);
	            },
	            error: function(XMLHttpRequest, textStatus, errorThrown) {
                    //鉴权不通过，则隐藏添加功能
                    if(XMLHttpRequest.status ==401){
                     $('.infoList').html(''); 
                     }
                }
	      });
	  }
	}
</script>