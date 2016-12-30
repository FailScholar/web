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
    <title>专家资源申请须知</title>
  
  </head>

  <body>
  <#include "website/common/header.ftl"/>
              <!--content开始-->
             <div class="content">
                <div class="bread">
                    <a href="${path}/index">首页</a>&gt;<a href="javascript:history.go(-1);">专家资源</a>&gt;<a href="${path}/perm/expert?columnId=${columnId}&isFrontPage=1">${columnName}</a>&gt;<a href="javascript:;">在线申请</a>
                </div>
                <div class="calt wangEditor-container" style="border: 0px;">
                <div class=" wangEditor-txt">
                    <h2>专家申请须知</h2>
                    <p>
                    ${finExpertManage.applyGuide}
					</p>
				</div>
                </div>
                <div style="text-align:center;">
                <input type="checkBox" id="checkBox1" style="font-size:16px;border-radius:3px;" onclick="if (this.checked) {enable()} else {disable()}">
                <span style="width:300px;height:50px;text-align:center;font-size:16px;border-radius:3px;">同意协议</span></br></br></br>
				<input type="button" id="accept" style="width:300px;height:50px;text-align:center;font-size:16px;border-radius:3px;background-color:#c5c5c5" 
					disabled="true" value="马上申请" onclick="apply()">
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
    positionNavigation(6);
   $(document).ready(function(e) {
      $('#checkBox1').removeAttr("checked");
      $("p").addClass("note");
   }); 
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
		   location.href="${path}/anon/addExpertPage?columnId=${columnId}" ;
	}
</script>