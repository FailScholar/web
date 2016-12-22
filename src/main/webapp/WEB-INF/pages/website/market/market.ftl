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
            <#list colList as column>
	            <#if column_index lt 5>
	                <li code="${column.id}"><a href="javascript:marketList(${column.id});">${column.columnName}</a></li>
	            </#if>
            </#list>
            <#if colList?size gt 5>
	            <li code="${colList[5].id}">
	            <a href="javascript:void(0);" style="display: none">${colList[5].columnName}</a>
		       	 <select id="selectId" onchange="getList()">
		       		<option value="0">-选择更多-</option>
		       	 	<#list colList as afterFiveList>
		       	 		<#if afterFiveList_index gt 4>
		       	 			<option value="${afterFiveList.id}">${afterFiveList.columnName}</option>
		       	 		</#if>
		       	 	</#list>
		       	 </select>&nbsp;
	       	 </li>
       	 </#if>
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
	positionNavigation(8);
    var infoTab = $("div.info ul.infoTab");
    $(function(){
    	var columnid = $.cookie('columnid');
		
		var insuranceIndex=-1;
		var i=0;
		$(".infoTab li").each(function(){
			if($(this).attr("code")==columnid  && i<5){
				insuranceIndex=i;
			}
			i++;
		});
		if(columnid !=null && insuranceIndex==-1){
			insuranceIndex=5;
			$("#selectId").val(columnid);
		}else if(columnid ==null){
			insuranceIndex=0;
		}
		$.cookie('columnid', null, {path: '/'}); 
        infoTab.find("li").eq(insuranceIndex).addClass("active");
        $('#colListDetail').load("${path}/perm/market/"+infoTab.find("li").eq(insuranceIndex).attr("code"),{'pager.offset' :0});
    });
    
    function marketList(columnid) {
    	$("#selectId").val("0");
    	$('#colListDetail').load("${path}/perm/market/"+columnid,{'pager.offset' :0});
    }
	function getList(){
	  var columnId = $('select option:selected').val();
	  if(columnId!=0){
		  $('#colListDetail').load("${path}/perm/market/"+columnId,{'pager.offset' :0});
	  }
	}
	
    function selectPage(page) {
        $('#colListDetail').load("${path}/perm/market/"+infoTab.find('li.active').attr('code'),{'pager.offset' :0});
    }
    $(document).ready(function () {
        $("#selectId").bind("change",function(){
            $(this).parent().attr('code',$(this).val());
            $(this).parent().find('a').text($(this).html)
        });
    });
</script>