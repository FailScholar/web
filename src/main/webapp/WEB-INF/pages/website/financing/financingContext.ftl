<#assign path=request.contextPath />
<div class="infoList">
    <ul class="ul1">
        <#list pm.datas as list>
        <li>
            <h2 class="ellipsis"><a href="javascript:;" onclick="ttPost('${list.id}')">${list.title }</a></h2>
            <p class="tit">${list.source}<span>${list.publishtime ? date}</span><span class="eye fr">${list.pv}</span></p>
            <p>${list.contentreview}</p>
        </li>
        </#list>
    </ul>


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
                url:'${path}/perm/financing/'+columnId,
                data: {'pager.offset':offset},
                success: function (data) {
                $('.infoList').html(data);
                }
          });
}
    function ttPost(id) {
     var colName = $('#selectId').text();
        openBlank('${path}/anon/financing/detail',{id :id,colName :$("div.info ul.infoTab").find('li.active').find('a').html()},true);
    }
</script>