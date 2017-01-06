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
                      <#if (columnList?size<6)>
                     	 	<#list columnList as columnList>
				        		 <li tips="${columnList.id}" id="columnId${columnList.id}" attr1="${columnList.columnName}" onclick="getInstitutionList(${columnList.id},'${columnList.columnName}')">
				         			<a href="javascript:void(0);" >
				         			  <#if (columnList.columnName?length >6) >
			                          <lable title="${columnList.columnName}">${columnList.columnName[0..5]}...</label>
			                          <#else>
			                          ${columnList.columnName}
			                          </#if>
				         			</a>
				        	 	 </li>
				      		</#list> 
				      <#else>
				     	  <#list foreFiveList as foreFiveList>
				        		 <li tips="${foreFiveList.id}" id="columnId${foreFiveList.id}" attr1="${foreFiveList.columnName}" onclick="getInstitutionList(${foreFiveList.id},'${foreFiveList.columnName}')">
				         			<a href="javascript:void(0);" >
				         				<#if (foreFiveList.columnName?length >6) >
			                            <lable title="${foreFiveList.columnName}">${foreFiveList.columnName[0..5]}...</label>
			                            <#else>
			                            ${foreFiveList.columnName}
			                            </#if>
				         			</a>
				        	 	 </li>
				      	 </#list> 
 				       	 <li>
	 				       	 <select id="selectId" onchange="getList()" style="width:120px">
	 				       		<option value="0">-选择更多-</option>
	 				       	 	<#list afterFiveList as afterFiveList>
	 				       	 		<option value="${afterFiveList.id}">&nbsp;${afterFiveList.columnName}&nbsp;</option>
	 				       	 	</#list>
	 				       	 </select>&nbsp;
 				       	 </li>
				      </#if>
				       
                      </ul>
                      <div class="clear"></div>
                      <input type="hidden" id="applyColumnId" />
                      <a href="javascript: void(0);" style="width:170px;" class="apply2" onclick="applyInstitution();">申请成为<span id="columnName">合作机构</span></a>
                     
                      
                     
                  </div>
 				<div class="infoList">
       
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
   <script type="text/javascript">
       var infoTab_li_index = [0];
   $(function(){
       positionNavigation(5);
	  var columnId = '${columnId}';
	  if(columnId == ''){
	  	$("div.info ul.infoTab").find("li").eq(0).addClass("active");
	  	var tips= $("div.info ul.infoTab").find("li").eq(0).attr("tips");
	  	var columnName= $("div.info ul.infoTab").find("li").eq(0).attr("attr1");
	  	getInstitutionList(tips,columnName);
	  }else{
	  	if($("#columnId"+columnId).html() == null ){
	  		$("#selectId").parent().addClass("active");
	  		$("#selectId").val(columnId);
	  		getList();
	  	}else{
	  		$("#columnId"+columnId).addClass("active");
	    	var columnName= $("#columnId"+columnId).find("a").text();
	  		getInstitutionList(columnId,columnName);
	  	}
	  }
   });

 	//获取子栏目内容列表
    function getInstitutionList(columnId,columnName){
    	$("#selectId").val("0");
    	$("#applyColumnId").val(columnId);
         $.ajax({
			  type : "POST",
			  url : '${path}/perm/institution/'+columnId,
			  data:{"columnId":columnId,'pager.offset': 0},
			  dataType : "html",
			  success:function(data){
			    columnName = $.trim(columnName)
			  	if(columnName.length > 6){
			  		$("#columnName").parent().attr("title", "申请成为"+columnName);
			  		columnName = columnName.substring(0,6)+"...";
			  	}
			  	$("#columnName").html(columnName);
				$(".infoList").html(data);//要刷新的div
			  }
		});
	}
	
	//分页--根据页数查询
	function selectPage(page) {
        $('.infoList').load("${path}/perm/institution/"+$("div.info ul.infoTab").find('li.active').attr('tips'), {page :page});
    }

	function getList(){
	  var columnId = $('#selectId option:selected').val();
	  var columnName = $('#selectId option:selected').text();
	  if(columnId!=0){
		  $("#applyColumnId").val(columnId);
		  $.ajax({
			  type : "POST",
			  url : '${path}/perm/institution/'+columnId,
			  data:{"columnId":columnId,'pager.offset': 0},
			  dataType : "html",
			  success:function(data){
			  	columnName = $.trim(columnName)
			  	if(columnName.length > 6){
			  		$("#columnName").parent().attr("title", "申请成为"+columnName);
			  		columnName = columnName.substring(0,6)+"...";
			  	}
			  	$("#columnName").html(columnName);
				$(".infoList").html(data);//要刷新的div
			  }
		});
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