<#assign pg =JspTaglibs["http://jsptags.com/tags/navigation/pager"]/> 
<#assign path=request.contextPath />
<#assign total=pm.total />
<div class="page">
			<@pg.pager url="${path}/${url}" export="currentPageNumber=pageNumber" items=total maxPageItems=12 maxIndexPages=12> 
			<@pg.index>
				    <@pg.first>
					<#if (currentPageNumber == 1)>
					<a onclick="return false;"><font color="#7b7676">首页</font></a>
					<#else> 
				    <a  onclick="changePage('${pageUrl}')">首页</a>
				    </#if>
				    </@pg.first>
					<@pg.prev>
					<#if (currentPageNumber == 1)>
					<a onclick="return false;"><font color="#7b7676">前一页</font></a>
					<#else>
					<a onclick="changePage('${pageUrl}')">前一页</a>
					</#if>
					</@pg.prev>
						<@pg.pages>
						<#if (currentPageNumber == pageNumber)>  
						<a onclick="changePage('${pageUrl}')"><font color="red">${pageNumber}</font></a>
		                <#else>
                        <a onclick="changePage('${pageUrl}')">${pageNumber}</a>
						 </#if>
						</@pg.pages>
					<@pg.next>
					<#if (currentPageNumber >=( pm.total/10))>
					<a onclick="return false;"><font color="#7b7676">下一页</font></a>
					<#else>
					<a onclick="changePage('${pageUrl}')">下一页</a>
					</#if>
					</@pg.next>
					<@pg.last>
					<#if (currentPageNumber >=( pm.total/10))>
					<a onclick="return false;"><font color="#7b7676">尾页</font></a>
					<#else>
					<a onclick="changePage('${pageUrl}')">尾页</a>
					</#if>
					</@pg.last>
				</@pg.index>
</@pg.pager>
			</div>
<script type="text/javascript">
function  changePage(url){
var url=url.split("=");
var offset=url[1];
$.ajax({
                type: 'POST',
                url:'${path}/anon/changePolicy',
                data: {columnId: ${columnId},'pager.offset':offset},
                success: function (data) {
                $('.infoList').html(data);
                }
          });
}
</script>