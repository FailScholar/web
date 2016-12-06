<#assign path=request.contextPath />
<div class="infoList">
<#if columnOne.id == columnid>
	  <ul class="ul3">
	       <#list pageInfo.data as cloudMsg>
	          <li><a href="javascript:;" onclick="ttPost('${cloudMsg.id}',${columnid})"><b></b><img src="${path}${cloudMsg.image}" alt="video" /><p>${cloudMsg.title}</p></a><p class="p2"><span class="time fl">${cloudMsg.publishTime?string("yyyy-MM-dd")}</span><span class="eye fr">${cloudMsg.pv}</span></p></li>
	      </#list>
      </ul>
	<#else>
	    <ul class="ul1">
	        <#list pageInfo.data as cloudMsg>
	        <li>
	            <h2 class="ellipsis"><a href="javascript:;" onclick="ttPost('${cloudMsg.id}',${columnid})">${cloudMsg.title }</a></h2>
	            <p class="tit">${cloudMsg.source}<span>${cloudMsg.publishTime ? date}</span><span class="eye fr">${cloudMsg.pv}</span></p>
	            <p>${cloudMsg.contentReview}</p>
	        </li>
	        </#list>
	    </ul>
    </#if>


    <#--分页开始-->
    <div class="clear"></div>
    <div class="page">
        <#--分页总数小于等于5-->
        <#if (pageInfo.totalPage <=5 && pageInfo.totalPage > 0)>
            <a href="javascript:;" onclick="lastPage()">&lt;</a>
            <#list 1..pageInfo.totalPage as page>
                <a href="javascript:;" <#if (page == pageInfo.currentPage)>style="background-color:#1679ff;border-color:#006cff;color:#fff" </#if>onclick="toPage('${page}')">${page}</a>
            </#list>
            <a href="javascript:;" onclick="nextPage()">&gt;</a>

        </#if>
        <#if (pageInfo.totalPage > 5)>
        <#--分页总数大于5-->
            <a href="javascript:;" onclick="lastPage()">&lt;</a>
            <#assign startPage = pageInfo.currentPage - (5/2) ? floor>
            <#if (startPage < 1)>
                <#assign startPage = 1>
            </#if>

            <#assign endPage = startPage + 5 - 1>

            <#if (endPage > pageInfo.totalPage)>
                <#assign endPage = pageInfo.totalPage startPage = pageInfo.totalPage - 5 + 1>
            </#if>

            <#list startPage..endPage as i>
                <#if pageInfo.currentPage == i>
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
</div>

<script type="text/javascript">
    var page = ${pageInfo.currentPage};
    function lastPage() {
        if(page >1){
            page = page -1;
        }
        selectPage(page)
    }
    function nextPage() {
        if(page < ${pageInfo.totalPage}){
            page = page +1;
        }
        selectPage(page)
    }

    function toPage(page) {
        selectPage(page)
    }

    function ttPost(id,columnid) {
        openBlank('${path}/anon/cloud/detail',{id :id,columnid:columnid,colName :$("div.info ul.infoTab").find('li.active').find('a').html()},true);
    }
</script>