<#assign path=request.contextPath />
<div class="infoList">
	    <ul class="ul1">
	        <#list pm.datas as marketMsg>
	        <li>
	            <h2 class="ellipsis"><a href="javascript:;" onclick="ttPost('${marketMsg.id}',${columnid})">${marketMsg.title }</a></h2>
	            <p class="tit">
	            <#if marketMsg.source?length lte 15>
	            	${marketMsg.source}
	            <#else>
	            	${marketMsg.source[0..15] }...
	            </#if>
	            <span>${marketMsg.publishTime ? date}</span><span class="eye fr">${marketMsg.pv}</span></p>
	            <p>
	            	<#if marketMsg.contentReview?length lte 40>
		            	${marketMsg.contentReview}
		            <#else>
		            	${marketMsg.contentReview[0..40]}...
		            </#if>
	            </p>
	        </li>
	        </#list>
	    </ul>

    <#--分页开始-->
    <div class="clear"></div>
    <#include "website/common/commonPager.ftl"/>
    <#--分页结束-->
</div>

<script type="text/javascript">
function  changePage(url){
var columnId='${columnid}';
var url=url.split("=");
var offset=url[1];
$.ajax({
                type: 'POST',
                url:'${path}/perm/market/'+columnId,
                data: {'pager.offset':offset},
                success: function (data) {
                $('.infoList').html(data);
                }
          });
}

    function ttPost(id,columnid) {
    	location.href='${path}/anon/market/detail?id='+id;
    }
</script>