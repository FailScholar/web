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
    <title>吉林省科技金融信息服务平台</title>
  </head>

  <body>
  <#include "website/common/header.ftl"/> 
              <!--content开始-->
             <div class="content">
                <div class="bread">
                    <a href="javascript:;">首页</a>&gt;<a href="javascript:;">合作机构</a>&gt;<a href="javascript:;">业务介绍</a>
                </div>
                <div class="bank">
                	<div class="bl fl">
                		<img src="${path}/${jltfispInstitutionDetail.logoFile}" class="fl" />
                        <h1 class="bankname fr">${jltfispInstitutionDetail.institutionalName}<a href=${jltfispInstitutionDetail.url} target="_blank">官网</a></h1>
                    </div>
                    <div class="br fl ml57">
                    	<h1>${jltfispInstitutionDetail.institutionalName}</h1>
                        <p>联系人：${jltfispInstitutionDetail.linkMan}</p>
                        <p>联系电话：${jltfispInstitutionDetail.phoneNumer}</p>
                        <p>联系地址：${jltfispInstitutionDetail.address}</p>
                    </div>
                    <div class="clear"></div>
                    <div class="proList nli" style="margin-top:40px;">
                        <ul class="nlist" style="top: 0px;">
                            <li class="active">业务介绍</li>
                        </ul>
                    </div>
                    <div class="resume re1">
                        <h2>银行简讯</h2>
                        <p>${jltfispInstitutionDetail.mainInvestmentStage}</p>
                        <h2>中小企业信贷产品</h2>
                        <p>${jltfispInstitutionDetail.mainInvestmentStage}</p>
                    </div>
                    
                </div>
            </div>
            <!--content结束-->
            
        </div>
    </div>
    
    <div class="clear"></div>
	<div class="clearfix"></div>
</div>
<script>
$(document).ready(function(e) {
    $('.nlist li').click(function(){
		$(this).addClass('active').siblings().removeClass('active');
		$(this).parents('.nli').siblings(".resume").hide().eq($(this).index()).show();
	});
});

</script>
  <#include "website/common/footer.ftl" />
  </body>
</html>