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
    <title>友情提示</title>
  </head>

  <body>
  <#include "website/common/header.ftl"/>
              <!--content开始-->
             <div class="content">
                <div class="bread">
                    <a href="javascript:;">首页</a>&gt;<a href="javascript:;">贷款服务</a>&gt;<a href="javascript:;">在线申请</a>
                </div>
                <div class="calt">
                    <h2>友情提示</h2>
                    <p class="note">
                    <b>尊敬的用户，您好：</b></br>
                    <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;系统检测您已申请过贷款服务，请不要重复申请，谢谢！</span></p>
                </div>
                <a href="${path}/index" class="apply ap1">返回首页</a>
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
        $('.chkbg').toggle(function(){
            $(this).find('input').attr("checked",true);
            $(this).find('b').addClass('active');
        },function(){
            $(this).find('input').attr("checked",false);
            $(this).find('b').removeClass('active');
        });
    });
</script>