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
    <title>密码重置</title>
  </head>

  <body>
  <#include "website/common/header.ftl"/>
              <!--content开始-->
              <div class="content">
                  <div class="bread">
                      <a href="javascript:;">首页</a>&gt;<a href="javascript:;">密码修改</a>
                  </div>
                  <div class="calt">
                      <div class="clear"></div>
                      <div class="clear"></div>
                      <div class="log proList">
                          <form method="post" action="" id="resetForm">
                          	  <input type="hidden" id="userid" value="${currentUser.id}"/>
                              <div id="m170"><span class="ml70">登录帐号：</span>${currentUser.accountNumber}</div>
                              <div><span class="ml70">&emsp;旧密码：</span><input type="password" id="oldpassword" class="txt validate[required,minSize[6],maxSize[20],custom[onlyLetterNumber],ajax[ajaxOldPassword]]" /></div>
                              <div><span class="ml70">&emsp;新密码：</span><input type="password" id="password" name="password" class="txt validate[required,minSize[6],maxSize[20],custom[onlyLetterNumber]]" /></div>
                              <div><span class="ml70">确认密码：</span><input type="password" id="newpassword" class="txt validate[required,minSize[6],maxSize[20],funcCall[checkRepeat],custom[onlyLetterNumber]]" /></div>
                              <div class="grad" style="width:500px;margin:0 auto;"></div>
                              <div class="logbtn"><input type="button" onclick="resetPassword()" value="修改" /></div>
                          </form>
                      </div>
                      <div class="log proList pro4" style="display:none;">
                          <form method="post" action="">
                              <h1>已完成密码重置</h1>
                              <p>恭喜您，已完成密码重置！</p>
                              <p>请您进入<a href="${path}/main">用户中心页面</a></p>
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
    positionNavigation(0);
	function resetPassword() {
		var flag = $("#oldpassword").validationEngine("validateAjax");
		var flag1=$("#oldpassword").validationEngine("validate");
		if(!flag|| flag1 || $("#password").validationEngine("validate") || $("#newpassword").validationEngine("validate")){
			return false;
		}
		var userid = $("#userid").val();
		var password = $("#password").val();
		$.post("${path}/user/resetPassword",{"id":userid,password:password},function(data){
           	$(".proList").hide().eq(1).show();
		});
	}

    $(document).ready(function(e) {
    	i=1;
        //输入框验证
        $.validationEngineLanguage.newLang();
        $.validationEngineLanguage.allRules.ajaxOldPassword = {
   	     "url":"${path }/anon/checkOldPassword",
   	     "extraData":"id="+$("#userid").val(),
   	     "alertText":"* 密码不正确，请重新输入！"};
        $("#saveAdminForm").validationEngine('attach', {
            promptPosition: "bottomRight:-10", scroll: false
        }); 
        $("#resetForm").validationEngine('attach', {
            promptPosition: "bottomRight:-10", scroll: false
        }); 
        
    });
    //输入密码验证，两次输入是否一致
    function checkRepeat(field, rules, i, options) {
        if (field.val() != $("#password").val()) {
            return "* 两次输入的密码不一致！";
        }
        return true;
    }
</script>