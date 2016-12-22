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
    <title>贷款申请</title>
</head>

<body>
<#include "website/common/header.ftl"/>
<!--content开始-->
        <div class="content">
            <div class="calt">
                <div class="log proList pro4">
                    <form method="post" action="" class="ant">
                        <h1 style="width:370px;">恭喜您成功提交股权融资申请</h1>
                        <p class="antp" style="text-indent:0; font-size:16px;">请及时提交纸质材料便于审核。</p>
                        <p class="antp" style="text-indent:0; font-size:16px;">咨询电话：0551-66668788</p>
                        <p class="antp" style="text-indent:0;">等待时间：<b class="second">5</b> 秒后页面自动<span class="ml10 mr10"><a href="${path}/index">跳转</a></span>或者<span class="ml10 mr10"><a href="${path}/index">返回首页</a></span></p>
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

<script type="text/javascript">
    $(document).ready(function(e) {
        positionNavigation(1);
        var num=parseInt($('.second').text());
        var timer = setInterval(function(){
            $('.second').html(num--);
            if($('.second').text()==0)
            {
                clearInterval(timer);
                window.location.href="${path}/index";
            }
        },1000)
    });
</script>