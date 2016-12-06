<#assign path=request.contextPath />
<div class="infoList">
   <ul class="ul1">
      <#list captialList as captialList>
       <li>
        <h2 class="ellipsis"><a href="${path}/anon/getCapitalDetail?id=${captialList.id}">${captialList.title }</a></h2>
        <p class="tit">${captialList.source }<span>${captialList.publishTime ?date }</span><span class="eye fr">${captialList.pv }</span></p>
        <p>${captialList.contentReview }</p>
       </li>
      </#list>
   </ul> 
</div>