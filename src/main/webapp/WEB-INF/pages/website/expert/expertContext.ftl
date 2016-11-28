<#assign path=request.contextPath />
<ul class="ul2">
                           <#list expertList as expert>
                              <li>
                                  <img src="${path}/${expert.agencylogo}" alt="head" style="cursor: pointer;" onclick="expertDetail(${expert.id})"/>
                                  <h4 class="blue">${expert.worktitle}</h4>
                                  <p>${expert.workpost} | ${expert.businesaddress}</p>
                                  <p class="phone">${expert.phone}</p>
                                  <p class="email">${expert.email}</p>
                              </li>
                           </#list>
</ul>