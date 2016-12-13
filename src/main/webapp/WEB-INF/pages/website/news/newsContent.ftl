 <#assign path=request.contextPath />
 <#list pm.datas as news>
	<ul class="ul1">
	     <li>
	        <h2 class="ellipsis"><a href="${path}/anon/getNewsDetail?id=${news.id}">${news.title }</a></h2>
	        <p class="tit">${news.source }<#if news.publishTime ??><span>${news.publishTime ?date }</span></#if><span class="eye fr">${news.pv }</span></p>
	         <#if news.contentReview ??>
                <p>
                	<#if news.contentReview?length lt 40>
	            		${news.contentReview}
		            <#else>
		            	${news.contentReview[0..40]}...
		            </#if>
                </p>
             </#if>
	     </li>
	  </ul>
 </#list>
<div class="clear"></div>
<#include "website/common/commonPager.ftl"/>
 