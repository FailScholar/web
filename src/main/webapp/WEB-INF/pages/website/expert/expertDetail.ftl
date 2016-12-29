<#assign path=request.contextPath />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="renderer" content="webkit">
    <#include "website/common/common.ftl" />
    <title>专家资源</title>
  </head>

  <body>
  <#include "website/common/header.ftl"/>
              <!--content开始-->
             <div class="content">
                <div class="bread">
                    <a href="${path}/index">首页</a>&gt;<a href="${path}/perm/expert?columnId=${jltfispColumn.id}&isFrontPage=1">${jltfispColumn.columnName}</a>&gt;<a href="javascript:;">专家详情</a>
                </div>
                <div class="detail">
                    <#if jltfispExpert.agencylogo?exists>
                                            <img width="220px" height="246px" src="${path}/${jltfispExpert.agencylogo}" class="fl" />
                                            <#else>
                                            <img width="220px" height="246px" id="agencylogoimg" name="agencylogoimg"  src="${path}/resource/images/head.jpg" class="fl" />
                                            </#if>
                    <div class="ul2 fl ml57">
                    	<h1>${jltfispExpert.name}</h1>
                        <p style="padding-left:0;">
                        <#if (jltfispExpert.workpost?length >20) >
                                  <lable title="${jltfispExpert.workpost}">${jltfispExpert.workpost[0..20]}...</label>
                                  <#else>
                                  ${jltfispExpert.workpost}
                                  </#if>   
                        | 
                        <#if (jltfispExpert.businesaddress?length >30) >
                                   <lable title="${jltfispExpert.businesaddress}">${jltfispExpert.businesaddress[0..30]}...</label>
                                  <#else>
                                  ${jltfispExpert.businesaddress}
                                  </#if>     
                        </p>
                        <p class="phone">${jltfispExpert.phone}</p>
                        <p class="email">${jltfispExpert.email}</p>
                    </div>
                    <div class="clear"></div>
                    <div class="resume">
                        <h2>专家简讯</h2>
                        <textarea  readonly class="txta" onclick="blur();"style="cursor:default;height:250px;overflow-y:visible;width:100%;BORDER-BOTTOM: 0px solid; BORDER-LEFT: 0px solid; BORDER-RIGHT: 0px solid; BORDER-TOP: 0px solid;border:0">${jltfispExpert.partfull}</textarea>
                    </div>
                </div>
            </div>
            <!--content结束-->
        </div>
    </div>
    
    <div class="clear"></div>
	<div class="clearfix"></div>
</div>
  <#include "website/common/footer.ftl" />
  </body>
</html>
<script type="application/javascript">
    positionNavigation(6);
</script>
