<#assign path=request.contextPath />
<#assign n = 0/>
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
                          <#assign n = n+1>
                          <!--<li <#if type=="1">class="active"</#if>><a href="javascript:;">科技金融专家</a></li>-->
                          <li name="${column.id}" id="Type${column.id}"><a href="javascript:void(0);">
                          <#if (column.columnName?length >6) >
                          <lable title="${column.columnName}">${column.columnName[0..5]}...</label>
                          <#else>
                          ${column.columnName}
                          </#if>
                          </a></li>
                          <#if (n>4) >
                          <#break>
                          </#if>
                          </#list>
                          <#if  (columnList?size>5)>
                          <li>
                         <select id="columnName" name="columnName" style="width:120px">
                         <option  value="">--选择更多--</option>
                         <#list columnList as column>
                         <#if   (column_index>4)>
                         <option  value="${column.id}">${column.columnName}</option>
                         </#if>
                         </#list>
                         </select>&nbsp;
                         </li>
                         </#if>
                      </ul>
                      <div class="clear"></div>
                      <#list columnList as column>
                          <!--<a href="#" class="apply2"<#if type!="1">style="width:150px; display:none"</#if><#if type=="1">style="width:150px;"</#if>>申请成为科技金融专家</a>-->
                          <a href="${path}/expert/expertGuide?columnId=${column.id}" class="apply2" style="width:170px;" id="${column.id}">
             <#if (column.columnName?length >6) >
                                  <lable title="申请成为${column.columnName}">申请成为${column.columnName[0..5]}...</label>
                                  <#else>             
                          申请成为${column.columnName}
                       </#if>   
                          </a>
                      </#list>
                      
                      <div class="infoList">
       
                      </div>
                  </div>
                  
                  <!--<div class="page">
                      <a href="javascript:;">&lt;</a>
                      <a href="javascript:;">1</a>
                      <a href="javascript:;">2</a>
                      <span>...</span>
                      <a href="javascript:;">15</a>
                      <a href="javascript:;">16</a>
                      <a href="javascript:;">&gt;</a>
                  </div>-->
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
    var infoTab_li_index = [0];
    positionNavigation(6);
    var columnId="${columnId}";
    var isFrontPage="${isFrontPage}";
    $(document).ready(function(e) {
    $('#Type'+columnId).addClass('active');
    $('.apply2').hide();
    $('#'+columnId).show();
    <!--如果栏目在select框，则将对应的值选中-->
    $("#columnName   option[value='"+columnId+"']").attr("selected",true);
    val = $('select option:selected').val();
    <!--如果select框值不为空，则给第6个li添加激活样式-->
    if('' != val){
    $('.infoTab li').eq(5).addClass('active');
    }
    <!--选择select框触发事件-->
    $("#columnName").change(function(){
        columnId=$(this).val();
        $.ajax({
                type: 'POST',
                url:'${path}/perm/expert/'+columnId,
                data: {'pager.offset':0},
                success: function (data) {
                $('.infoList').html(data);
                $("#columnName   option[value='"+columnId+"']").attr("selected",true);
                $('.infoTab li').eq(5).addClass('active');
                $('.apply2').hide();
                $('#'+columnId).show();
                },
                error: function(XMLHttpRequest, textStatus, errorThrown) {
                <!--鉴权不通过，则隐藏添加功能-->
                if(XMLHttpRequest.status ==401){
                 $('.apply2').hide();
                 $('.infoList').html(''); 
                }
                }
          });
        }); 
    <!--点击li标签触发事件-->    
    $('.infoTab li').click(function(){
        var index=$(this).index();
        <!--只有前五个栏目才会执行下面代码-->
        if(index < 5){
        <!--将select中值设置为未选择-->
        if($('#columnName').length > 0){
        $('#columnName').prop('selectedIndex', 0);
        }
        columnId=$(this).attr("name");
		<!--传当前子栏目ID-->
		$.ajax({
                type: 'POST',
                url:'${path}/perm/expert/'+columnId,
                data: {'pager.offset':0},
                success: function (data) {
                $('.infoList').html(data);
                $(this).addClass('active').siblings('li').removeClass('active');
                $('.apply2').hide();
		        $('#'+columnId).show();
                },
                error: function(XMLHttpRequest, textStatus, errorThrown) {
                <!--鉴权不通过，则隐藏添加功能-->
                if(XMLHttpRequest.status ==401){
                 $('.apply2').hide();
                 $('.infoList').html('');  
                }
                }
          });
		}
	});
	<!--处理从前台页面转过来的请求-->
	if(isFrontPage==1){
	  $("#columnName   option[value='"+columnId+"']").attr("selected",true);
	  val = $('select option:selected').val();
      if('' != val){
      $('.infoTab li').eq(5).addClass('active');
      $.ajax({
                type: 'POST',
                url:'${path}/perm/expert/'+columnId,
                data: {'pager.offset':0},
                success: function (data) {
                $('.infoList').html(data);
                $('.infoTab li').eq(5).addClass('active');
                $('.apply2').hide();
                $('#'+columnId).show();
                },
                error: function(XMLHttpRequest, textStatus, errorThrown) {
                <!--鉴权不通过，则隐藏添加功能-->
                if(XMLHttpRequest.status ==401){
                 $('.apply2').hide();
                 $('.infoList').html(''); 
                }
                }
          });
 
      }else{
       $('#Type'+columnId).addClass('active').siblings('li').removeClass('active');
	  <!--传当前子栏目ID-->
	   $.ajax({
                type: 'POST',
                url:'${path}/perm/expert/'+columnId,
                data: {'pager.offset':0},
                success: function (data) {
                $('.infoList').html(data);
                $('.apply2').hide();
	            $('#'+columnId).show();
                },
                error: function(XMLHttpRequest, textStatus, errorThrown) {
                <!--鉴权不通过，则隐藏添加功能-->
                if(XMLHttpRequest.status ==401){
                 $('.apply2').hide();
                 $('.infoList').html(''); 
                }
                }
          });
       
       }
    <!--如果不是从前台转过来的请求，则默认显示第1个列表-->   	  
	}else{  
	  $('.infoTab li').eq(0).click();
	}
});

function expertDetail(id){
	location.href="${path}/anon/expertDetail?expertId="+id;
}

function  changePage(url){
var url=url.split("=");
var offset=url[1];
$.ajax({
                type: 'POST',
                url:'${path}/perm/expert/'+columnId,
                data: {'pager.offset':offset},
                success: function (data) {
                $('.infoList').html(data);
                }
          });
}
</script>