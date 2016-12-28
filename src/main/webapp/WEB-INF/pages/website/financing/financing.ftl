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
      	<#list colList as list>
      		<#if list_index lt 5>
                <li code="${list.id}"  onclick="infoTabClick(${list.id})"><a href="javascript:void(0);">${list.columnName}</a></li>
           	</#if>
            </#list>
            <#if colList?size gt 5>
            	<li>
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
        <@shiro.hasRole name="专家会员">
        	<a href="javascript:alertText();" class="apply2" style="width:80px;cursor: pointer;">投资咨询</a>
        </@shiro.hasRole>
        <@shiro.lacksRole name="专家会员">
        	<a href="${path}/communicate/page" target="_blank" class="apply2" style="width:80px;cursor: pointer;">投资咨询</a>
        </@shiro.lacksRole>
        <div class="selSearch fr">
        	<select class="selOpt" id="type">
            	<option value="">选择类型</option>
            	<option value="1" <#if (item.type == 1)>selected="selected"</#if> >电子信息技术</option>
                <option value="2" <#if (item.type == 2)>selected="selected"</#if> >生物医药技术</option>
                <option value="3" <#if (item.type == 3)>selected="selected"</#if> >航空航天技术</option>
                <option value="4" <#if (item.type == 4)>selected="selected"</#if> >新科技技术</option>
                <option value="5" <#if (item.type == 5)>selected="selected"</#if> >高技术服务业</option>
                <option value="6" <#if (item.type == 6)>selected="selected"</#if> >新能源节能技术</option>
                <option value="7" <#if (item.type == 7)>selected="selected"</#if> >资源环境技术</option>
                <option value="7" <#if (item.type == 8)>selected="selected"</#if> >高新技术改造传统行业</option>
            </select>
            <input type="button" onclick="selectPage(${pageInfo.pageNum})" value="搜 索" class="fr" />
        </div>
        <div class="clear"></div>
        <div id="colListDetail"></div>
    </div>
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
</html>

<script type="text/javascript">
    var infoTab_li_index = [0];
function alertText(){
		dialog.tipsPop('ok-pop','提示:',"您已是专家会员",function(){
	              });
	}

    positionNavigation(7);
	function getList(){
	  var columnId = $('#selectId').val();
	  if(columnId!=0){
	  	 $('#colListDetail').load("${path}/perm/financing/"+columnId,{'pager.offset':0});
	  }
	}
	
	 function infoTabClick(id){
	 	$("#selectId").val("0");
	 	$("#type").val("");
        $('#colListDetail').load("${path}/perm/financing/"+id,{'pager.offset':0});
    }

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
        infoTab.find("li").eq(insuranceIndex).addClass("active");
        $('#colListDetail').load("${path}/perm/financing/"+infoTab.find("li").eq(insuranceIndex).attr("code"),{'pager.offset':0});
    });


    function selectPage(page) {
        $('#colListDetail').load("${path}/perm/financing/"+infoTab.find('li.active').attr('code'),{'pager.offset':0,type:$("#type").val()});
    }
     $(document).ready(function () {
        $("#selectId").bind("change",function(){
            $(this).parent().attr('code',$(this).val());
            $(this).parent().find('a').text($(this).html())
        });
    });
</script>