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
    <title>${applyname}</title>
</head>

<body>
<#include "website/common/header.ftl"/>
<!--content开始-->
        <div class="content">
            <div class="calt">
                <div class="log proList pro4">
                    <form method="post" action="" class="ant">
                        <h1 style="width:370px;"></h1>
                        <p class="antp" style="text-indent:0; font-size:16px;">你的信息已经完成提交，完成申请</p>
                        <p class="antp" style="text-indent:0; font-size:16px;">信息正在审核中，约需2~3个工作日，请等待</p>
                        <p class="antp" style="text-indent:0;"><span class="ml10 mr10"><a href="${path}/main">返回用户中心</a></span></p>
                    </form>
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