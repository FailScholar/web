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
        <#assign len = colList?size />
        <#if (len <= 5) >
            <#list colList as list>
                <li code="${list.id}" onclick="infoTabClick(${list.id})"><a href="javascript:void(0);">${list.columnName}</a></li>
            </#list>
        <#else>
            <#list 0..4 as i>
                <li code="${colList[i].id}" onclick="infoTabClick(${colList[i].id})"><a href="javascript:void(0);">${colList[i].columnName}</a></li>
            </#list>

            <li code="${colList[5].id}">
              <a href="javascript:void(0);" style="display: none">${colList[5].columnName}</a>
            <select id="moreSel" onchange="getList()">
            <option value="0">-选择更多-</option>
            <#list 5..len-1 as i>
                <option value="${colList[i].id}">${colList[i].columnName}</option>
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
    var infoTab_li_index = [0];
    positionNavigation(9);
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
			$("#selectId").val(columnid);
		}else if(columnid ==null){
			insuranceIndex=0;
		}
		$.cookie('columnid', null, {path: '/'});  	
        infoTab.find("li").eq(insuranceIndex).addClass("active");
        $('#colListDetail').load("${path}/perm/insurance/"+infoTab.find("li").eq(insuranceIndex).attr("code"),{'pager.offset' :0});
    });

    function infoTabClick(columnid){
    	$("#moreSel").val("0");
    	$('#colListDetail').load("${path}/perm/insurance/"+columnid,{'pager.offset' :0});
    }

	function getList(){
	  var columnId = $('select option:selected').val();
	  if(columnId!=0){
		  $('#colListDetail').load("${path}/perm/insurance/"+columnId,{'pager.offset' :0});
	  }
	}

    function selectPage(page) {
        $('#colListDetail').load("${path}/perm/insurance/"+infoTab.find('li.active').attr('code'),{'pager.offset' :0});
    }

    $(document).ready(function () {
        $("#moreSel").bind("change",function(){
            $(this).parent().attr('code',$(this).val());
            $(this).parent().find('a').text($(this).html())
        });
    });
</script>