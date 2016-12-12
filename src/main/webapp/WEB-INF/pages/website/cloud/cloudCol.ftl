<#assign path=request.contextPath />
<div class="infoList">
<#if columnOne.id == columnid>
	  <ul class="ul3">
	       <#list pm.datas as cloudMsg>
	          <li><a href="javascript:;" onclick="ttPost('${cloudMsg.id}',${columnid})"><b></b><img src="${path}${cloudMsg.image}" alt="video" width="320px" height="200px"/><p>${cloudMsg.title}</p></a><p class="p2"><span class="time fl">${cloudMsg.publishTime?string("yyyy-MM-dd")}</span><span class="eye fr">${cloudMsg.pv}</span></p></li>
	      </#list>
      </ul>
	<#else>
	    <ul class="ul1">
	        <#list pm.datas as cloudMsg>
	        <li>
	            <h2 class="ellipsis"><a href="javascript:;" onclick="ttPost('${cloudMsg.id}',${columnid})">${cloudMsg.title }</a></h2>
	            <p class="tit">${cloudMsg.source}<span>${cloudMsg.publishTime ? date}</span><span class="eye fr">${cloudMsg.pv}</span></p>
	            <p>
	            	<#if cloudMsg.contentReview?length lt 40>
		            	${cloudMsg.contentReview}
		            <#else>
		            	${cloudMsg.contentReview[0..40]}...
		            </#if>
	            </p>
	        </li>
	        </#list>
	    </ul>
    </#if>


    <#--分页开始-->
    <div class="clear"></div>
    <#include "website/common/commonPager.ftl"/>
    <#--分页结束-->
</div>

<script type="text/javascript">
function  changePage(url){
var columnId='${columnid}';
var url=url.split("=");
var offset=url[1];
$.ajax({
                type: 'POST',
                url:'${path}/perm/cloud/'+columnId,
                data: {'pager.offset':offset},
                success: function (data) {
                $('.infoList').html(data);
                }
          });
}

    function ttPost(id,columnid) {
        openBlank('${path}/anon/cloud/detail',{id :id,columnid:columnid,colName :$("div.info ul.infoTab").find('li.active').find('a').html()},true);
    }
</script>