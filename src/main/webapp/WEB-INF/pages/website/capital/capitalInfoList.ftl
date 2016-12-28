<#assign path=request.contextPath />
   <ul class="ul1">
      <#list pm.datas as captialList>
       <li>
        <h2 class="ellipsis"><a href="${path}/anon/getCapitalDetail?id=${captialList.id}" target="_blank">${captialList.title }</a></h2>
        <p class="tit">
        <#if captialList.source?length lte 15>
        	${captialList.source}
        <#else>
        	${captialList.source[0..15]}...
        </#if>
        <span>${captialList.publishTime ?date }</span><span class="eye fr">${captialList.pv }</span></p>
        <p>
        	<#if captialList.contentReview?length lte 40>
        		${captialList.contentReview}
            <#else>
            	${captialList.contentReview[0..40]}...
            </#if>
        </p>
       </li>
      </#list>
   </ul> 
   <div class="clear"></div>
 <#include "website/common/commonPager.ftl"/>
    <script type="text/javascript">
    function  changePage(url){
      var url=url.split("=");
      var offset=url[1];
      $.ajax({
                type: 'POST',
                url:'${path}/perm/capital/${columnId}',
                data: {'pager.offset':offset},
                success: function (data) {
                $('.infoList').html(data);
                }
          });
}
</script>