 <#assign path=request.contextPath />
 <div class="info">
        <ul class="infoTab">
             <#list columnList as column>
                <li id="Type${column.id}" name="${column.id}"><a href="javascript:void(0);">${column.columnName}</a></li>
             </#list>
        </ul>
     <div class="clear"></div>
        <div class="infoList">
           <ul class="ul1">
			   <#list pm.datas as policy>
			     <li>
			        <h2 class="ellipsis"><a href="${path}/anon/getNewsDetail?id=${policy.id}">${policy.title }</a></h2>
			        <p class="tit">${policy.source }<#if policy.publishTime ??><span>${policy.publishTime ?date }</span></#if><span class="eye fr">${policy.pv }</span></p>
			        <#if policy.contentReview ??>
                       <p>${policy.contentReview }</p>
                     </#if>
			     </li>
			    </#list>
			</ul>
        </div>
     </div>
 <div class="clear"></div>
 <#include "website/common/commonPager.ftl"/>
 <script type="text/javascript">
    $(document).ready(function(e) {
    var columnId=${columnId};
    $('#Type'+columnId).addClass('active');
    $('.infoTab li').click(function(){
        var columnId=$(this).attr("name");
        $(this).addClass('active').siblings('li').removeClass('active');
		<!--传当前子栏目ID-->
		$.ajax({
                type: 'POST',
                url:'${path}/anon/news',
                data: {columnId: columnId,type:1},
                success: function (data) {
                $('.content').html(data);
                }
          });
	});
});

</script>