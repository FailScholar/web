<#assign path=request.contextPath />
<ul class="ul2">
  <#list pm.datas as expert>
     <li>
      <#if expert.agencylogo?exists>
      <img width="220px" height="246px" src="${path}${expert.agencylogo}" alt="head" style="cursor: pointer;" onclick="expertDetail(${expert.id})"/>
      <#else>
      <img width="220px" height="246px" src="${path}/resource/images/head.jpg" alt="head" style="cursor: pointer;" onclick="expertDetail(${expert.id})"/>
      </#if> 
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
                                  <#if (expert.businesaddress?length >8) >
                                   <lable title="${expert.businesaddress}">${expert.businesaddress[0..8]}...</label>
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