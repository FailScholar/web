<#assign path=request.contextPath />
   <ul class="ul1">
      <#list pm.datas as captialList>
       <li>
        <h2 class="ellipsis"><a href="${path}/anon/getCapitalDetail?id=${captialList.id}">${captialList.title }</a></h2>
        <p class="tit">${captialList.source }<span>${captialList.publishTime ?date }</span><span class="eye fr">${captialList.pv }</span></p>
        <p>${captialList.contentReview }</p>
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