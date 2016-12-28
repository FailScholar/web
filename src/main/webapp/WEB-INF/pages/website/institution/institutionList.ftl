<#assign path=request.contextPath />
      <ul class="applyList apy">
        <#list pm.datas as institutionList>
             <li>
<!--                <img style="width: 120px;height: 137px;" src="${path}${institutionList.logoFile }" alt="img" class="appImg fl" /> -->
               <img  style="width: 120px;height: 137px;"
                            <#if institutionList.logoFile?? && institutionList.logoFile != "">
                                  src="${path}${institutionList.logoFile}"
                            <#else>
                                    src="${path}/resource/images/img3.jpg" 
                            </#if>
                              alt="img" class="appImg fl" />
                   <div class="appDetail ap3 fr" style="word-wrap:break-word;word-break:break-all;">
                      <h3 class="fl"><a href="${path}/anon/getInstitutionDetail?id=${institutionList.id}">${institutionList.institutionalName}</a></h3>
                      <div class="clear"></div>
                     <p title="${institutionList.institutionalAbstract}">
                    	<#if institutionList.institutionalAbstract?length lt 200>   
						<span>${institutionList.institutionalAbstract}</span>
						<#else> 
						  <span>${institutionList.institutionalAbstract[0..200]}......</span>
						</#if>
                     </p>
                      <p class="contact"><span class="sp1">联系人：${institutionList.linkMan}</span><span class="sp2">电话：${institutionList.phoneNumer}</span>
                      <span class="sp3" title="${institutionList.address}">地址：
                      <#if institutionList.address?length lt 30>
                      ${institutionList.address}
                      <#else>
                      ${institutionList.address[0..30]}......
                      </#if>
                      </span></p>
                    </div>
              </li>
              </#list>
          </ul>

    <div class="clear"></div>
    <#include "website/common/commonPager.ftl"/>
    <script type="text/javascript">
    function  changePage(url){
      var url=url.split("=");
      var offset=url[1];
      $.ajax({
                type: 'POST',
                url:'${path}/perm/institution/${columnId}',
                data: {'pager.offset':offset},
                success: function (data) {
                $('.infoList').html(data);
                }
          });
}
   </script>