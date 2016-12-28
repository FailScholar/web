<#assign path=request.contextPath />
   <#list pm.datas as policy>
	<ul class="ul1">
	     <li>
	        <h2 class="ellipsis"><a href="${path}/anon/policyDetail?policyId=${policy.id}" target="_blank">${policy.title }</a></h2>
	        <p class="tit">
	        <#if policy.source?length lte 15>
	            	${policy.source}
	            <#else>
	            	${policy.source[0..15]}...
	            </#if>
	        <#if policy.publishTime ??><span>${policy.publishTime ?date }</span></#if><span class="eye fr">${policy.pv }</span></p>
	         <#if policy.contentReview ??>
                <p>
                	<#if policy.contentReview?length lt 60>
	            		${policy.contentReview}
		            <#else>
		            	${policy.contentReview[0..60]}...
		            </#if>
                </p>
             </#if>
	     </li>
	  </ul>
 </#list>
<div class="clear"></div>
<#include "website/common/commonPager.ftl"/>