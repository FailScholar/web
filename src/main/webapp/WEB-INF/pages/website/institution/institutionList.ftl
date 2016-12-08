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
      
       <#--分页开始-->
    <div class="clear"></div>
    <div class="page">
        <#--分页总数小于等于5-->
        <#if (pageInfo.pages <=5 && pageInfo.pages > 0)>
            <a href="javascript:;" onclick="lastPage()">&lt;</a>
            <#list 1..pageInfo.pages as page>
                <a href="javascript:;" <#if (page == pageInfo.pageNum)>style="background-color:#1679ff;border-color:#006cff;color:#fff" </#if>onclick="toPage('${page}')">${page}</a>
            </#list>
            <a href="javascript:;" onclick="nextPage()">&gt;</a>

        </#if>
        <#if (pageInfo.pages > 5)>
        <#--分页总数大于5-->
            <a href="javascript:;" onclick="lastPage()">&lt;</a>
            <#assign startPage = pageInfo.pageNum - (5/2) ? floor>
            <#if (startPage < 1)>
                <#assign startPage = 1>
            </#if>

            <#assign endPage = startPage + 5 - 1>

            <#if (endPage > pageInfo.pages)>
                <#assign endPage = pageInfo.pages startPage = pageInfo.pages - 5 + 1>
            </#if>

            <#list startPage..endPage as i>
                <#if pageInfo.pageNum == i>
                    <!-- 当前页 -->
                    <a href="javascript:;" style="background-color:#1679ff;border-color:#006cff;color:#fff"  onclick="toPage('${i}')">${i}</a>
                <#else>
                    <a href="javascript:;" onclick="toPage('${i}')">${i}</a>
                </#if>
            </#list>
            <a href="javascript:;" onclick="nextPage()">&gt;</a>
        </#if>
    </div>
    <#--分页结束-->
                          
 
<script type="text/javascript">
    var page = ${pageInfo.pageNum};
    function lastPage() {
        if(page >1){
            page = page -1;
        }
        selectPage(page)
    }
    function nextPage() {
        if(page < ${pageInfo.pages}){
            page = page +1;
        }
        selectPage(page)
    }

    function toPage(page) {
        selectPage(page)
    }
</script>           