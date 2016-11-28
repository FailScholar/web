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
    <title>贷款服务申请须知</title>
  </head>

  <body>
  <#include "website/common/header.ftl"/>
              <!--content开始-->
             <div class="content">
                <div class="bread">
                    <a href="javascript:;">首页</a>&gt;<a href="javascript:;">贷款服务</a>&gt;<a href="javascript:;">在线申请</a>
                </div>
                <div class="calt">
                	<p>${applyname}</p>
                    <h2>申请须知</h2>
                    <p class="note">我曾经爱过这样一个女人  他说我是世上最真的男人  我为她保留着那一份认真  关上爱别人的门  也是这个被我深爱的女人  把我变成世上最笨的男人  她说的每句话我都会当真  她说最爱我的唇  我的要求并不高  待我像从前一样好  可是有一天你说了同样的话  又投入别人的怀抱  你身上有他的香水味  是我鼻子犯的罪  不该嗅到他的味  擦掉一切陪你醉
你身上有他的香水味  是你赐给的自卑  你要求的太完美  我永远都学不会  你身上有他的香水味  是我鼻子犯的罪  不该嗅到他的味  擦掉一切陪你醉
是你赐给的自卑  你要的爱太完美  我永远都学不会  你身上有他的香水味  是你赐给的自卑  你要求的太完美  我永远都学不会</p>
                </div>
                <a href="${path}/loan/onlineApply?applytype=${applytype}" class="apply ap1">在线申请</a>
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