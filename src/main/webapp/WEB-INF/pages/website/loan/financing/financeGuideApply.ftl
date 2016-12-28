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
                    <a href="${path}/index">首页</a>&gt;<a href="${path}/anon/loan">贷款服务</a>&gt;<a href="javascript:;">申请须知</a>
                </div>
                <div class="calt">
                    <h2>申请须知</h2>
                    <p class="note">
                    	${loanformManage.applyGuide}
					</p>
                </div>
                <div style="text-align:center;">
				<input type="button" id="accept" style="color:#ffffff;width:300px;height:50px;text-align:center;font-size:16px;border-radius:3px;background-color:#1679ff" 
					 value="返回" onclick="apply()">
           		</div>
           		<input id="userType" value="${userType}" type="hidden"/>
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
	     $("P").addClass("note");
	});
    positionNavigation(1);
   function disable()
   {
	   document.getElementById("accept").style.backgroundColor = "#c5c5c5";
  		document.getElementById("accept").disabled=true;
   }
   
   function enable()
   {
	   document.getElementById("accept").style.backgroundColor = "#1679ff";
	  	document.getElementById("accept").style.color="#ffffff";
	  
  	   document.getElementById("accept").disabled=false;
  }
   function apply(){
		   location.href="${path}/anon/loan" ;
	}
</script>