<#assign pg =JspTaglibs["http://jsptags.com/tags/navigation/pager"]/> 
<#assign path=request.contextPath />
<#assign total=pm.total />
<div class="page">
			<@pg.pager url="${path}/${url}" export="currentPageNumber=pageNumber" items=total maxPageItems=10 maxIndexPages=10> 
			<@pg.index>
			         <@pg.param name="type" value="1"/>
			         <@pg.param name="isPage" value="1"/>
			         <@pg.param name="columnId" value="${columnId}"/>
				    <@pg.first>
					<#if (currentPageNumber == 1)>
					<a onclick="return false;"><font color="#7b7676">首页</font></a>
					<#else> 
				    <a href="${pageUrl}">首页</a>
				    </#if>
				    </@pg.first>
					<@pg.prev>
					<#if (currentPageNumber == 1)>
					<a onclick="return false;"><font color="#7b7676">前一页</font></a>
					<#else>
					<a href="${pageUrl}">前一页</a>
					</#if>
					</@pg.prev>
						<@pg.pages>
						<#if (currentPageNumber == pageNumber)>  
						<a href="${pageUrl}"><font color="red">${pageNumber}</font></a>
		                <#else>
                        <a href="${pageUrl}">${pageNumber}</a>
						 </#if>
						</@pg.pages>
					<@pg.next>
					<#if (currentPageNumber >=( pm.total/10))>
					<a onclick="return false;"><font color="#7b7676">下一页</font></a>
					<#else>
					<a href="${pageUrl}">下一页</a>
					</#if>
					</@pg.next>
					<@pg.last>
					<#if (currentPageNumber >=( pm.total/10))>
					<a onclick="return false;"><font color="#7b7676">尾页</font></a>
					<#else>
					<a href="${pageUrl}">尾页</a>
					</#if>
					</@pg.last>
				</@pg.index>
</@pg.pager>
			</div>