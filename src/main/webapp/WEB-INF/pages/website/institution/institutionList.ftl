<#assign path=request.contextPath />
      <ul class="applyList apy">
        <#list pm.datas as institutionList>
             <li>
               <img style="width: 120px;height: 137px;" src="${path}/resource/fileImage/${institutionList.logoFile }" alt="img" class="appImg fl" />
                   <div class="appDetail ap3 fr">
                      <h3 class="fl"><a href="${path}/anon/getInstitutionDetail?id=${institutionList.id}">${institutionList.institutionalName}</a></h3>
                      <div class="clear"></div>
                     <p title="${institutionList.institutionalAbstract}">
                    	<#if institutionList.institutionalAbstract?length lt 205>   
						<span>${institutionList.institutionalAbstract}</span>
						<#else> 
						  <span>${institutionList.institutionalAbstract[0..205]}......</span>
						</#if>
                     </p>
                      <p class="contact"><span class="sp1">联系人：${institutionList.linkMan}</span><span class="sp2">电话：${institutionList.phoneNumer}</span><span class="sp3">地址：${institutionList.address}</span></p>
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