<#assign pg =JspTaglibs["http://jsptags.com/tags/navigation/pager"]/> 
<#assign path=request.contextPath />
<#assign total=pm.total />
<div class="page">
			<@pg.pager url="${path}/${url}" export="currentPageNumber=pageNumber" items=total  maxIndexPages=5> 
				    <@pg.first>
					<#if (currentPageNumber == 1)>
					<a onclick="return false;"><font color="#7b7676">首页</font></a>
					<#else> 
				    <a  onclick="changePage('${pageUrl}')">首页</a>
				    </#if>
				    </@pg.first>
					<@pg.prev>
					<#if (currentPageNumber == 1)>
					<a onclick="return false;"><font color="#7b7676">上一页</font></a>
					<#else>
					<a onclick="changePage('${pageUrl}')">上一页</a>
					</#if>
					</@pg.prev>
						<@pg.pages>
						<#if (currentPageNumber == pageNumber)>  
						<a onclick="changePage('${pageUrl}')"><font color="red">${pageNumber}</font></a>
		                <#else>
                        <a onclick="changePage('${pageUrl}')">${pageNumber}</a>
						 </#if>
						</@pg.pages>
						<#if (pm.total == 0)>
						 <a onclick="return false;"><font color="red">1</font></a>
						</#if>
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
</@pg.pager>
			</div>