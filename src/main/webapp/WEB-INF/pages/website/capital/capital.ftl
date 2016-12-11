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
         <li tips="${columnList.id}">
         	<a href="javascript:void(0);" onclick="getCapitalInfoList(${columnList.id})">${columnList.columnName}</a>
         </li>
       </#list> 
        </ul>
        <div class="clear"></div>
        </div>
		<!-- 专项资金的具体内容 -->
        <div id="showContent"></div>
        
    <div class="clear"></div>
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
	  $("div.info ul.infoTab").find("li").eq(0).addClass("active");
	  var tips= $("div.info ul.infoTab").find("li").eq(0).attr("tips");
	  getCapitalInfoList(tips);
   });

	//分页--根据页数查询
	function selectPage(page) {
       $('#showContent').load("${path}/perm/capital/"+$("div.info ul.infoTab").find('li.active').attr('tips'),{page:page});
   }
   
   //获取子栏目内容列表
   function getCapitalInfoList(columnId){
         $.ajax({
			  type : "post",
			  url : '${path}/perm/capital/'+columnId,
			  data:{"columnId":columnId,page: 1},
			  dataType : "html",
			  success:function(data){
				$("#showContent").html(data);//要刷新的div
			  }
		});
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