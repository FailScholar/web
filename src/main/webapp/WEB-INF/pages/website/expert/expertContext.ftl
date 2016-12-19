<#assign path=request.contextPath />
<ul class="ul2">
  <#list pm.datas as expert>
     <li>
      <img width="220px" height="246px" src="${path}${expert.agencylogo}" alt="head" style="cursor: pointer;" onclick="expertDetail(${expert.id})"/>
       <h4 class="blue">
       <#if (expert.name?length >10) >
       <lable title="${expert.name}">${expert.name[0..10]}...</label>
       <#else>
       ${expert.name}
       </#if>
       </h4>
        <p> 
        <#if (expert.workpost?length >3) >
                                  <lable title="${expert.workpost}">${expert.workpost[0..3]}...</label>
                                  <#else>
                                  ${expert.workpost}
                                  </#if>
                                   | 
                                  <#if (expert.workcompany?length >8) >
                                   <lable title="${expert.workcompany}">${expert.workcompany[0..8]}...</label>
                                  <#else>
                                  ${expert.workcompany}
                                  </#if>
                                  </p>
        <p class="phone">${expert.phone}</p>
        <p class="email">${expert.email}</p>
        </li>
      </#list>
</ul>
<div class="clear"></div>
<#include "website/common/commonPager.ftl"/>