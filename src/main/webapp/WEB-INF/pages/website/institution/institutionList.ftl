<#assign path=request.contextPath />
   <div class="infoList">
      <ul class="applyList apy">
        <#list institutionList as institutionList>
             <li>
               <img style="width: 120px;height: 137px;" src="${path}/resource/images/img3.jpg" alt="img" class="appImg fl" />
                   <div class="appDetail ap3 fr">
                      <h3 class="fl"><a href="${path}/anon/getInstitutionDetail?id=${institutionList.id}">${institutionList.institutionalName}</a></h3>
                      <div class="clear"></div>
                      <p>${institutionList.institutionalAbstract}</p>
                      <p class="contact"><span class="sp1">联系人：${institutionList.linkMan}</span><span class="sp2">电话：${institutionList.phoneNumer}</span><span class="sp3">地址：${institutionList.address}</span></p>
                    </div>
              </li>
              </#list>
          </ul>
      </div>
                              