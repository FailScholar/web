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
        <#list columnList as columnList>
       		 <#if columnList_index lt 5>
        		 <li tips="${columnList.id}" id="columnId${columnList.id}">
         			<a href="javascript:void(0);" onclick="getCapitalInfoList(${columnList.id})">${columnList.columnName}</a>
         		</li>
         	 </#if>
       </#list> 
       <#if columnList?size gt 5>
	            <li tips="${columnList[5].id}" id="columnId${columnList[5].id}">
	            <a href="javascript:void(0);" style="display: none">${columnList[5].columnName}</a>
		       	 <select id="selectId" onchange="getList()">
		       		<option value="0">-选择更多-</option>
		       	 	<#list columnList as afterFiveList>
		       	 		<#if afterFiveList_index gt 4>
		       	 			<option value="${afterFiveList.id}">&nbsp;${afterFiveList.columnName}&nbsp;</option>
		       	 		</#if>
		       	 	</#list>
		       	 </select>
	       	 </li>
       	 </#if>
        </ul>
        <div class="clear"></div>
        </div>
		<!-- 专项资金的具体内容 -->
        <div class="infoList"> </div>
        
<!--     <div class="clear"></div> -->
</div>
<!--content结束-->
  </div>
 </div>
<div class="clear"></div>
<div class="clearfix"></div>
</div>
<#include "website/common/footer.ftl" />
</body>
 <script type="text/javascript">
   $(function(){
       positionNavigation(4);
	  var columnId = '${columnId}';
	  if(columnId == ''){
	 	 $("div.info ul.infoTab").find("li").eq(0).addClass("active");
	 	 var tips= $("div.info ul.infoTab").find("li").eq(0).attr("tips");
	 	 getCapitalInfoList(tips);
	  }
	  else{
		  		$("#columnId"+columnId).addClass("active");
		  		getCapitalInfoList(columnId);
		}
   });

	//分页--根据页数查询
	function selectPage(page) {
       $('.infoList').load("${path}/perm/capital/"+$("div.info ul.infoTab").find('li.active').attr('tips'),{page:page});
   }
   
   //获取子栏目内容列表
   function getCapitalInfoList(columnId){
	   $("#selectId").val("0");
         $.ajax({
			  type : "post",
			  url : '${path}/perm/capital/'+columnId,
			  data:{"columnId":columnId,'pager.offset': 0},
			  dataType : "html",
			  success:function(data){
				$(".infoList").html(data);//要刷新的div
			  }
		});
	}

	function getList(){
		  var columnId = $('select option:selected').val();
		  if(columnId!=0){
			  $.ajax({
				  type : "post",
				  url : '${path}/perm/capital/'+columnId,
				  data:{"columnId":columnId,'pager.offset': 0},
				  dataType : "html",
				  success:function(data){
					$(".infoList").html(data);//要刷新的div
				  }
			});
		  }
		}

	//获取详细内容
	function getCapitalDetail(newsId){
		 $.post(
                "${path}/anon/getCapitalDetail",
                {"id":newsId}
          );
    }
  </script>
</html>