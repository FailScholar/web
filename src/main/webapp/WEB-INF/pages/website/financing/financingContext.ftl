<ul class="ul1">
              <#list FinancingList as financing>
                <li>
                    <h2 class="ellipsis"><a  style="cursor: pointer;" onclick="financingDetail(${financing.id})">${financing.title}</a></h2>
                    <p class="tit">${financing.source}<span>${financing.publishtime?date}</span><span class="eye fr">${financing.pv}</span></p>
                    <p>${financing.contentreview}</p>
                </li>
              </#list>
</ul>