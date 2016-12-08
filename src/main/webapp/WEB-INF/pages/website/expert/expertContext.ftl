<ul class="ul2">
  <#list pm.datas as expert>
     <li>
      <img width="220px" height="246px" src="${path}/${expert.agencylogo}" alt="head" style="cursor: pointer;" onclick="expertDetail(${expert.id})"/>
       <h4 class="blue">${expert.worktitle}</h4>
        <p> 
        <#if (expert.workpost?length >5) >
                                  <lable title="${expert.workpost}">${expert.workpost?substring(0,5)}...</label>
                                  <#else>
                                  ${expert.workpost}
                                  </#if>
                                   | 
                                  <#if (expert.workpost?length >8) >
                                   <lable title="${expert.businesaddress}">${expert.businesaddress?substring(0,8)}...</label>
                                  <#else>
                                  ${expert.businesaddress}
                                  </#if>
                                  </p>
        <p class="phone">${expert.phone}</p>
        <p class="email">${expert.email}</p>
        </li>
      </#list>
</ul>
<div class="clear"></div>
<#include "website/common/commonPager.ftl"/>