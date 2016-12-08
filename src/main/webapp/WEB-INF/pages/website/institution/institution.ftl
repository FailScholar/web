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
                      <#if (columnList?size<5)>
                     	 	<#list columnList as columnList>
				        		 <li tips="${columnList.id}">
				         			<a href="javascript:void(0);" onclick="getInstitutionList(${columnList.id})">${columnList.columnName}</a>
				        	 	 </li>
				      		</#list> 
				      <#else>
				     	  <#list foreFiveList as foreFiveList>
				        		 <li tips="${foreFiveList.id}">
				         			<a href="javascript:void(0);" onclick="getInstitutionList(${foreFiveList.id})">${foreFiveList.columnName}</a>
				        	 	 </li>
				      	 </#list> 
 				       	 <li>
	 				       	 <select id="selectId" onchange="getList()">
	 				       		<option value="0">-选择更多机构-</option>
	 				       	 	<#list afterFiveList as afterFiveList>
	 				       	 		<option value="${afterFiveList.id}">${afterFiveList.columnName}</option>
	 				       	 	</#list>
	 				       	 </select>
 				       	 </li>
				      </#if>
				       
                      </ul>
                      <div class="clear"></div>
                      <input type="hidden" id="applyColumnId" />
                      <a href="javascript: void(0);" class="apply2" onclick="applyInstitution();">申请成为合作机构</a>
                     
                  </div>
 				<div id="showContent"></div>
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
	  getInstitutionList(tips);
   });

 	//获取子栏目内容列表
    function getInstitutionList(columnId){
    	$("#applyColumnId").val(columnId);
         $.ajax({
			  type : "POST",
			  url : "${path}/anon/getInstitutionList",
			  data:{"columnId":columnId,page: 1},
			  dataType : "html",
			  success:function(data){
				$("#showContent").html(data);//要刷新的div
			  },
			  error: function() {
                 alert("失败，请稍后再试！");
              }
		});
	}
	
	//分页--根据页数查询
	function selectPage(page) {
        $('#showContent').load("${path}/anon/getInstitutionList",{columnId: $("div.info ul.infoTab").find('li.active').attr('tips'), page :page});
    }

	function getList(){
	  var columnId = $('select option:selected').val();
	  if(columnId!=0){
		  getInstitutionList(columnId);
	  }
	}
	
	function applyInstitution(){
		$.post("${path}/institution/checkApply",function(msg){
			if(msg != ""){
				dialog.tipsPop('ban-pop','提示',msg,'确定');
			}else{
				$(".content").load("${path}/anon/institutionGuide",{columnId: $("#applyColumnId").val()});
			}
		});
	}
   </script>
</html>