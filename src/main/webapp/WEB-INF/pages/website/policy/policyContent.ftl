<#assign path=request.contextPath />
   <#list pm.datas as policy>
	<ul class="ul1">
	     <li>
	        <h2 class="ellipsis"><a href="${path}/anon/getNewsDetail?id=${policy.id}">${policy.title }</a></h2>
	        <p class="tit">${policy.source }<#if news.publishTime ??><span>${policy.publishTime ?date }</span></#if><span class="eye fr">${policy.pv }</span></p>
	         <#if policy.contentReview ??>
                <p>${policy.contentReview }</p>
             </#if>
	     </li>
	  </ul>
 </#list>
<div class="clear"></div>
<#include "website/policy/commonPager.ftl"/>